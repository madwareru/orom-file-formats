### ItemId Meaning

**ItemId** is a packed identifier which, in fact, stores more than a single value

It has a following structure:
![ItemId structure](./ItemId.gif)

[Material ID](../Enumerations/ItemMaterial.md) is related to a quality of an item. [Magic Item](../Enumerations/MagicItem.md) doesn't have this.

[Kind ID](../Enumerations/ItemKind.md) is related to a kind of an item. It could be a [Magic Item](../Enumerations/MagicItem.md), [Weapon](../Enumerations/WeaponItem.md), [Shield](../Enumerations/ShieldItem.md), or, in all other cases, a [Wieldable](../Enumerations/WieldableItem.md).

[Rarity ID](../Enumerations/ItemRariry.md) is related to a chance to find this kind of an item in the game, and, surprisingly, affects item's parameters and price similarly to a Material. [Magic Item](../Enumerations/MagicItem.md) doesn't have this.

**Item ID** is, in fact, an identifier in one of the following enumerations -- [[Weapons](../Enumerations/WeaponItem.md), [Shields](../Enumerations/ShieldItem.md), [Wieldables](../Enumerations/WieldableItem.md)] -- in the case of `Kind ID != Magic Item`

**Magic Irem ID** is, in fact, an identifier in [Magic Items](../Enumerations/MagicItem.md) enumeration in the case of `Kind ID == Magic Item`
