meta:
  id: rage_of_mages_1_reg
  title: Rage Of Mages Seal Of Mystery registry files
  file-extension: reg
  application: Rage Of Mages Seal Of Mystery
  license: CC0-1.0
  encoding: IBM866
  endian: le
seq:
  - id: signature
    contents: [0x26, 0x59, 0x41, 0x31]
  - id: registry_header
    type: root_registry_header_t

instances:
  nodes:
    pos:  0x18 + 0x20 * registry_header.root_offset
    size: registry_header.root_size * 0x20
    type: registry_header_list

types:
  root_registry_header_t:
    seq:
      - id: root_offset
        type: u4
      - id: root_size
        type: u4
      - id: registry_flags
        type: u4
        doc: not used???
      - id: registry_eat_size
        type: u4
      - id: junk
        type: u4
        doc: not used???
    instances:
      data_origin:
        value: 0x1C + 0x20 * registry_eat_size

  registry_header_list:
    seq:
      - id: header
        type: registry_header
        size: 0x20
        repeat: eos

  registry_header:
    instances:
      e_type:
        pos: 0xC
        type: u4
        enum: registry_type_e
    seq:
      - id: junk
        type: u4
      - id: value
        type:
          switch-on: e_type
          cases:
            registry_type_e::string: string_entry
            registry_type_e::directory: directory_entry
            registry_type_e::int: int_entry
            registry_type_e::float: float_entry
            registry_type_e::int_array: int_array_entry
            _: byte_entry
        size: 0x08
      - id: typ
        type: u4
      - id: name
        type: strz
        size: 0x10

  int_entry:
    seq:
      - id: value
        type: s4

  byte_entry:
    seq:
      - id: value
        type: u1

  float_entry:
    seq:
      - id: value
        type: f8

  string_entry:
    seq:
      - id: e_offset
        type: u4
      - id: e_count
        type: u4
    instances:
      value:
        io: _root._io
        pos: _root.registry_header.data_origin + e_offset
        type: strz
        size: e_count

  int_array_entry:
    seq:
      - id: e_offset
        type: u4
      - id: e_size
        type: u4
    instances:
      value:
        io: _root._io
        pos: _root.registry_header.data_origin + e_offset
        type: s4
        repeat: expr
        repeat-expr: e_size / 4

  directory_entry:
    seq:
      - id: e_offset
        type: u4
      - id: e_count
        type: u4
    instances:
      value:
        io: _root._io
        pos: 0x18 + 0x20 * e_offset
        type: registry_header_list
        size: e_count * 0x20

enums:
  registry_type_e:
    0: string
    1: directory
    2: int
    4: float
    6: int_array
