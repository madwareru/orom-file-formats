### Unit Record

 offset | size | Meaning
------------------------
0x00 | 0x04 | (`XCoord` * 0x100) + 0x80 (sort of a fixed point value)
0x04 | 0x04 | (`YCoord` * 0x100) + 0x80 (sort of a fixed point value)
0x08 | 0x02 | `TypeId`. In case of `ServerId == 0` this entry points to [Moster Kind](../../Enumerations/ALM/MonsterKind.md)
0x0A | 0x02 | `FaceId`. This identifiers point to a portrait of a unit, and, in case of a monster, additionally describes it's level (from 1 to 4)
0x0C | 0x04 | `Special Flags`. This value contains set of flags such as `IsQuestForKill`(zero bit), `IsQuestForIntercept`(first bit), `IsQuestForEscort`(second bit), `IsNoXpForKill`(third bit). This knowledge was directly adapted from the ALM format for the **Allods II** and should be tested.
0x10 | 0x04 | `ServerId`. Helps to find a right entry in a humans declaration
0x14 | 0x04 | `FractionId`. Value from 1 to 16 giving the knowledge for which fraction this unit belongs
0x18 | 0x04 | `SackId`. If not storing a zero value, points to an identifier of a sacks section entry, where the connected sack(think about it as unit's inventory) described.
0x1C | 0x04 | `ViewAngle`. Storing value in a range [0..15] with a meaning of angle of view of a unit(where it looks at map start). `AngleInDegrees = ViewAngle * 22.5f`
0x20 | 0x20 | Some trash values which seemed to be used nearly never
0x40 | 0x02 | `Id`. Identifier of an unit entry in units section
0x42 | 0x04 | `GroupId`. Giving the knowledge for which group this unit belongs
