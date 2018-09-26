## Map Section Header

This record serves as a prefix for any section in the ALM file.
It contains vital information about the size of a section in bytes, as long as
gives a knowledge about the type of a section.

 Size | Meaning
------|---------
 0x04 | Number `7` or `5` with unknown purpose.
 0x04 | Size of this header. Always `0x14`.
 0x04 | Size of the section data.
 0x04 | [Map Section Kind](../../Enumerations/ALM/MapSectionKind.md).
 0x04 | Random number. This number is the same for all headers
