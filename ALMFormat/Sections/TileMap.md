## Tile Map Section

This section uses the information about map `Width` and `Height` taken from [General Map Information](./GeneralMapInfo.md)

 Offset | Size | Meaning
--------|------|---------
0x00 | 0x02 * `Width` * `Height` | [Map Tile](../Records/MapTile.md) records.
