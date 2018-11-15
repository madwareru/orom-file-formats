meta:
  id: rage_of_mages_1_res
  title: Rage Of Mages Seal Of Mystery resource files
  file-extension: res
  application: Rage Of Mages Seal Of Mystery
  license: CC0-1.0
  encoding: IBM866
  endian: le
seq:
  - id: signature
    contents: [0x26, 0x59, 0x41, 0x31]
  - id: resource_header
    type: root_resource_header_t

instances:
  nodes:
    pos: resource_header.fat_offset + _root.resource_header.root_offset * 0x20
    size: resource_header.root_size * 0x20
    type: resource_header_list

types:
  resource_header_list:
    seq:
      - id: header
        type: resource_header
        size: 0x20
        repeat: eos

  file_resource:
    seq:
      - id: file_name
        type: str
        size: 0x10
        terminator: 0
    instances:
      bytes:
        io: _root._io
        pos: _parent.root_offset
        size: _parent.root_size
  directory_resource:
    seq:
      - id: directory_name
        type: str
        size: 0x10
        encoding: IBM866
        terminator: 0
    instances:
      nodes:
        io: _root._io
        pos: _root.resource_header.fat_offset + _parent.root_offset * 0x20
        size: _parent.root_size * 0x20
        type: resource_header_list

  resource_header:
    seq:
      - id: junk
        type: u4
      - id: root_offset
        type: u4
      - id: root_size
        type: u4
      - id: resource_type
        type: u4
        enum: resource_type_e
      - id: resource
        type:
          switch-on: resource_type
          cases:
            resource_type_e::file: file_resource
            resource_type_e::directory: directory_resource

  root_resource_header_t:
    seq:
      - id: root_offset
        type: u4
      - id: root_size
        type: u4
      - id: resource_flags
        type: u4
        doc: not used???
      - id: fat_offset
        type: u4
      - id: fat_size
        type: u4
        doc: not used???

enums:
  resource_type_e:
    0: file
    1: directory
