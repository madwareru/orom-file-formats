meta:
  id: rage_of_mages_1_256
  title: Rage Of Mages Seal Of Mystery *.16a image files
  file-extension: 16a
  application: Rage Of Mages Seal Of Mystery
  license: CC0-1.0
  endian: le
doc: |
  This format contains opaque strips of paletted pixels(256 colors)
  Uses Run Length Encoding To pack transparent areas of a sprite
  As a result we have a decent small sprites which can be rendered very
  effectively.
seq:
  - id: inner_palette
    type: u32
    repeat: expr
    repeat-expr: 256
    if: (has_palette != 0)
  - id: sprite_records
    type: sprite_record
    repeat: expr
    repeat-expr: sprite_count

types:
  sprite_record:
    seq:
      - id: width
        type: u4
      - id: height
        type: u4
      - id: data_size
        type: u4
      - id: data
        size: data_size

instances:
  sprite_count_internal:
    pos: _io.size - 4
    type: u4
  sprite_count:
    value: sprite_count_internal & 0x7FFFFFFF
  has_palette:
    value: sprite_count_internal & 0x80000000
