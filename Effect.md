## Effect Record

Effect record represent two kinds of things actually, it could be
**Effect** bound to an item, or, in other case, it could be a **Trap**

For the `Trap` format is following:

 Size | Meaning
------|--------
 0x04 | `Corrupt Effect Id`. Not used. The real `Effect Id` is just order number in a table
 0x04 | `Trap X`. X coordinate of a trap
 0x04 | `Trap Y`. Y coordinate of a trap
 0x02 | `Flags`. Zero bit => `From Structure`, First Bit => `To Unit`
 0x04 | `Structure Id`
 0x02 | `Magic Type`. Points to **Magic Type** in data.bin
 0x02 | `Magic Force`. Value in range `[0..100]`
 0x04 | `Modifier count`. Always 2
 0x02 | `From X`. X coordinate where Trap bolt starts movement
 0x02 | `From Y`. Y coordinate where Trap bolt starts movement
 0x02 | NOT Used
 0x02 | `To X`. X coordinate of the Trap bolts destination
 0x02 | `To Y`. Y coordinate of the Trap bolts destination
 0x02 | NOT Used

For the `Effect` format is next:

 Size | Meaning
------|--------
 0x04 | `Corrupt Effect Id`. Not used. The real `Effect Id` is just order number in a table
 0x04 | `Trap X`. Always zero
 0x04 | `Trap Y`. Always zero
 0x02 | `Magic Damage Kind`. Points to **Magic Sphere** in data.bin
 0x02 | `Minimal Magic Damage`.
 0x02 | `Magic Damage Spread`.
 0x02 | `Magic Type`. Points to **Magic Type** in data.bin
 0x02 | `Magic Force`. Value in range `[0..100]`
 0x04 | `Modifier count`.
 0x06 * `Modifier count` | **Effect Modifiers** in amount stored in `Modifier count`
