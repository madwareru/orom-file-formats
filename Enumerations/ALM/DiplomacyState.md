### Diplomacy State

This enumeration contains data that is useful to determine the Diplomacy of a player

Each entry takes one byte in a memory
Each Fraction Definition entry stores sixteen entries of this type in fields **Diplomacy0**, **Diplomacy1** .. **DiplomacyE**, **DiplomacyF**

The following table describes all available values:

Id | Meaning
---|---------
 0x00 | Neutral
 0x01 | Evil
 0x02 | Good
