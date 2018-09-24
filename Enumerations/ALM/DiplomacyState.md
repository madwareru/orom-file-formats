### Diplomacy State

This enumeration contains data that is useful to determine the Diplomacy of a fraction.

Each entry takes one byte in a memory.

Each [Fraction Record](../../ALMFormat/Records/Fraction.md) stores sixteen entries of this type in fields **Diplomacy 0**, **Diplomacy 1** .. **Diplomacy E**, **Diplomacy F**

The following table describes all available values:

Id | Meaning
---|---------
 0x00 | Neutral
 0x01 | Evil
 0x02 | Good
