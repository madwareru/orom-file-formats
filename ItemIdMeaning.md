### Item Id Meaning

**Item Id** is a packed identifier which, in fact, stores more than a single value

It has a following structure:
![Item Id structure](./ItemId.gif)

**Material ID** is related to a quality of an item. **Magic Item** doesn't have this.

**Kind ID** is related to a kind of an item. It could be a **Magic Item**, **Weapon**, **Shield**, or, in all other cases, a **Wieldable**.

**Rarity ID** is related to a chance to find this kind of an item in the game, and, surprisingly, affects item's parameters and price similarly to a Material. **Magic Item** doesn't have this.

**Item ID** is, in fact, an identifier in one of the following enumerations -- **Weapons**, **Shields**, **Wieldables** -- in the case of `Kind ID != Magic Item`

**Magic Item ID** is, in fact, an identifier in **Magic Items** enumeration in the case of `Kind ID == Magic Item`
