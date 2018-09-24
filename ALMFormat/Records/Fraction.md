## Fraction Record

 Offset | Size | Meaning
--------|------|--------
0x000 | 0x04 | `Color Id`. Human readable name ended with terminal zero.
0x004 | 0x04 | `Flags`. Zero bit => `Is Computer`, First bit => `Is Quest For Kill`.
0x008 | 0x04 | `Money`.
0x00C | 0x20 | `Name`. Player name. Ends with terminal zero
0x02C | 0x02 | `Diplomacy 0`. Points to [Diplomacy State](../../Enumerations/ALM/DiplomacyState.md)
0x02E | 0x02 | `Diplomacy 1`. Points to [Diplomacy State](../../Enumerations/ALM/DiplomacyState.md)
0x030 | 0x02 | `Diplomacy 2`. Points to [Diplomacy State](../../Enumerations/ALM/DiplomacyState.md)
0x032 | 0x02 | `Diplomacy 3`. Points to [Diplomacy State](../../Enumerations/ALM/DiplomacyState.md)
0x034 | 0x02 | `Diplomacy 4`. Points to [Diplomacy State](../../Enumerations/ALM/DiplomacyState.md)
0x036 | 0x02 | `Diplomacy 5`. Points to [Diplomacy State](../../Enumerations/ALM/DiplomacyState.md)
0x038 | 0x02 | `Diplomacy 6`. Points to [Diplomacy State](../../Enumerations/ALM/DiplomacyState.md)
0x03A | 0x02 | `Diplomacy 7`. Points to [Diplomacy State](../../Enumerations/ALM/DiplomacyState.md)
0x03C | 0x02 | `Diplomacy 8`. Points to [Diplomacy State](../../Enumerations/ALM/DiplomacyState.md)
0x03E | 0x02 | `Diplomacy 9`. Points to [Diplomacy State](../../Enumerations/ALM/DiplomacyState.md)
0x040 | 0x02 | `Diplomacy A`. Points to [Diplomacy State](../../Enumerations/ALM/DiplomacyState.md)
0x042 | 0x02 | `Diplomacy B`. Points to [Diplomacy State](../../Enumerations/ALM/DiplomacyState.md)
0x044 | 0x02 | `Diplomacy C`. Points to [Diplomacy State](../../Enumerations/ALM/DiplomacyState.md)
0x046 | 0x02 | `Diplomacy D`. Points to [Diplomacy State](../../Enumerations/ALM/DiplomacyState.md)
0x048 | 0x02 | `Diplomacy E`. Points to [Diplomacy State](../../Enumerations/ALM/DiplomacyState.md)
0x04A | 0x02 | `Diplomacy F`. Points to [Diplomacy State](../../Enumerations/ALM/DiplomacyState.md)
