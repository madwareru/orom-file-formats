## ALM File Format

### Be aware!
The order of sections may vary (with an exception for `general map information`,
this always goes first), and total count of sections may vary too
(it should be equal to `Section count` from `ALM Header`).

`Section size` corresponds to the size from preceding section header

 Size | Meaning
------|---------
 0x14 | [ALM Header](./ALMHeader.md)
 0x14 | [Map Section Header](./Sections/MapSectionHeader.md) (Kind = 0)
 `Section size` | [General Map Information Section](./Sections/GeneralMapInfo.md)
 0x14 | [Map Section Header](./Sections/MapSectionHeader.md) (Kind = 1)
 `Section size` | [Tile Map Section](./Sections/TileMap.md)
 0x14 | [Map Section Header](./Sections/MapSectionHeader.md) (Kind = 2)
 `Section size` | [Height Map Section](./Sections/HeightMap.md)
 0x14 | [Map Section Header](./Sections/MapSectionHeader.md) (Kind = 3)
 `Section size` | [Map Objects Section](./Sections/MapObjects.md)
 0x14 | [Map Section Header](./Sections/MapSectionHeader.md) (Kind = 4)
 `Section size` | [Structures Section](./Sections/Structures.md)
 0x14 | [Map Section Header](./Sections/MapSectionHeader.md) (Kind = 5)
 `Section size` | [Fractions Section](./Sections/Fractions.md)
 0x14 | [Map Section Header](./Sections/MapSectionHeader.md) (Kind = 6)
 `Section size` | [Units Section](./Sections/Units.md)
 0x14 | [Map Section Header](./Sections/MapSectionHeader.md) (Kind = 7)
 `Section size` | [Triggers Section](./Sections/Triggers.md)
 0x14 | [Map Section Header](./Sections/MapSectionHeader.md) (Kind = 8)
 `Section size` | [Sacks Section](./Sections/Sacks.md)
 0x14 | [Map Section Header](./Sections/MapSectionHeader.md) (Kind = 9)
 `Section size` | [Effects Section](./Sections/Effects.md)
