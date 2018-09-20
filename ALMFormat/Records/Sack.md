## Sack Record

 offset | size | Meaning
--------|------|--------
0x00 | 0x04 | `ItemCount`. Identifier of an entry in structures section
0x04 | 0x04 | `UnitId`. Id of a [Unit](./Unit.md) connected to this sack
0x08 | 0x04 | (`XCoord` * 0x100) + 0x80 (sort of a fixed point value)
0x0C | 0x04 | (`YCoord` * 0x100) + 0x80 (sort of a fixed point value)
0x10 | 0x04 | `Money`. 
 --- | --- | The next part is optional and stores `ItemCount` of entries
0x14 | 0x0A | description of an 0 [Item](./Item.md)
--- | --- | remaining items
