## Structure Record

 offset | size | Meaning
--------|------|--------
0x00 | 0x02 | `Id`. Identifier of a unit entry in structures section
0x02 | 0x04 | (`XCoord` * 0x100) + 0x80 (sort of a fixed point value)
0x06 | 0x04 | (`YCoord` * 0x100) + 0x80 (sort of a fixed point value)
0x0A | 0x04 | `StructureId`. Points to a [Structure Kind](../../Enumerations/ALM/StructureKind.md)
0x0E | 0x04 | `FractionId`. Value in a range `[1..16]` points to a fraction this structure belongs
0x12 | 0x02 | `Health`. Condition of a structure in a range [0..100]
