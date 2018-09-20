## Unit Record

 offset | size | Meaning
--------|------|--------
0x00 | 0x04 | (`XCoord` * 0x100) + 0x80 (sort of a fixed point value)
0x04 | 0x04 | (`YCoord` * 0x100) + 0x80 (sort of a fixed point value)
0x08 | 0x02 | `TypeId`.
0x0A | 0x02 | `FaceId`.
0x0C | 0x04 | `SpecialFlags`.
0x10 | 0x04 | `ServerId`. Helps to find a right entry in a humans declaration
0x14 | 0x04 | `FractionId`. Value in a range `[1..16]` points to a fraction this unit belongs
0x18 | 0x04 | `SackId`.
0x1C | 0x04 | `ViewAngle`.
0x20 | 0x20 | Some trash values which seemed to be used nearly never
0x40 | 0x02 | `Id`. Identifier of a unit entry in units section
0x42 | 0x04 | `GroupId`. Giving the knowledge for which group this unit belongs

### TypeId description
In case of `ServerId == 0` this id points to a [Monster Kind](../../Enumerations/ALM/MonsterKind.md),
otherwise it is part of a composite identifier in humans declaration

### FaceId description
This identifier points to a portrait of a unit, and, in case of a monster,
additionally describes its level (from 1 to 4)

### SackId description
If not storing a zero value, points to an identifier of a sacks section entry,
where the connected sack(think about it as of a units inventory) described.

### SpecialFlags description
This value contains set of flags such as `IsQuestForKill`(zero bit),
`IsQuestForIntercept`(first bit), `IsQuestForEscort`(second bit),
`IsNoXpForKill`(third bit). This knowledge was directly adapted
from the ALM format for the **Allods II** and should be tested.

### ViewAngle description
Storing value in a range `[0..15]` with a meaning of angle of view of
a unit(where it looks at map start). `AngleInDegrees = ViewAngle * 22.5f`
