## ALM Header

 Size | Meaning
------|---------
 0x04 | `Signature` (`M7R`).
 0x04 | Size of the section header. Equals to `0x14`.
 0x04 | `Misterious size` (`0x48 + H * W * 0x04`).
 0x04 | `Section count`
 0x04 | Random number. This number is the same for all headers
