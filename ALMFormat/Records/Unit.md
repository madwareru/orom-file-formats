## Unit Record

 Offset | Size | Meaning
--------|------|--------
0x00 | 0x04 | (`X Coord` * 0x100) + 0x80 (sort of a fixed point value)
0x04 | 0x04 | (`Y Coord` * 0x100) + 0x80 (sort of a fixed point value)
0x08 | 0x02 | `Type Id`.
0x0A | 0x02 | `Face Id`.
0x0C | 0x04 | `Special Flags`.
0x10 | 0x04 | `Server Id`. Helps to find a right entry in a humans declaration
0x14 | 0x04 | `Fraction Id`. Value in a range `[1..16]` points to a fraction this unit belongs
0x18 | 0x04 | `Sack Id`.
0x1C | 0x04 | `View Angle`.
0x20 | 0x20 | Some trash values which seemed to be used nearly never
0x40 | 0x02 | `Id`. Identifier of a unit entry in units section
0x42 | 0x04 | `Group Id`. Giving the knowledge for which group this unit belongs

### Type Id description
In case of `Server Id == 0` this id points to a [Monster Kind](../../Enumerations/ALM/MonsterKind.md),
otherwise it is part of a composite identifier in humans declaration

### Face Id description
This identifier points to a portrait of a unit, and, in case of a monster,
additionally describes its level (from 1 to 4)

### Sack Id description
If not storing a zero value, points to an identifier of a sacks section entry,
where the connected [Sack](./Sack.md)(think about it as of a units inventory) described.

### Special Flags description
This value contains set of flags such as `Is Quest For Kill`(zero bit),
`Is Quest For Intercept`(first bit), `Is Quest For Escort`(second bit),
`Is No XP For Kill`(third bit). This knowledge was directly adapted
from the ALM format for the **Allods II** and should be tested.

### View Angle description
Storing value in a range `[0..15]` with a meaning of angle of view of
a unit(where it looks at map start).

`Angle In Degrees = View Angle * 22.5f`
