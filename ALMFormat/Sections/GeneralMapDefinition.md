## General Map Definition Section

Overall size of the section is `0x278`

 Offset | Size | Meaning
--------|------|---------
0x00 | 0x04 | `Width`. The real width visible for the player is 16 tiles smaller.
0x04 | 0x04 | `Height`. The real height visible for the player is 16 tiles smaller.
0x08 | 0x04 | `Negative sun angle` in range [-45..45].
0x0C | 0x04 | `Time` in minutes.
0x10 | 0x04 | `Darkness`.
0x14 | 0x04 | `Contrast`.
0x18 | 0x04 | `Use tiles` flag.
0x1C | 0x04 | `Fraction count`
0x20 | 0x04 | `Structure count`
0x24 | 0x04 | `Unit count`
0x28 | 0x04 | `Logic count`
0x2C | 0x04 | `Sack count`
0x30 | 0x258 | `???`. It appears that this data contains some broken textual info partly duplicating the text from the Logic section.
