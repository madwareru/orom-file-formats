## Sack Record

 Size | Meaning
------|--------
 0x04 | `Item Count`. Identifier of an entry in structures section
 0x04 | `Unit Id`. Id of a [Unit](./Unit.md) connected to this sack
 0x04 | (`X Coord` * 0x100) + 0x80 (sort of a fixed point value)
 0x04 | (`Y Coord` * 0x100) + 0x80 (sort of a fixed point value)
 0x04 | `Money`.
 0x0A * `Item Count` | [Item](./Item.md) records
