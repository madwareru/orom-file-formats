meta:
  id: rage_of_mages_1_16
  title: Rage Of Mages Seal Of Mystery *.16 image files
  file-extension: 16
  application: Rage Of Mages Seal Of Mystery
  license: CC0-1.0
  endian: le
doc: |
  This format contains white texture with 16 degrees of transparency
  Used in the game mainly for fonts
seq:
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
