### Logic instance type

Used in [Logic Instance](../../ALMFormat/Records/LogicInstance.md)

This enumeration contains data that is useful to determine the instance type in a logic

Each entry takes four bytes in a memory

The following table describes all available values:

Id | Meaning
----|---------
 0x00 | Unknown
 0x01 | Increment Mission Stage
 0x02 | Send Message
 0x03 | Set Variable Value
 0x04 | Force Mission Complete
 0x05 | Force Mission Failed
 0x06 | Command
 0x07 | Keep Formation
 0x08 | Increment Variable
 0x0A | Set Diplomacy
 0x0B | Give Item
 0x0C | Add Item In Units Sack
 0x0D | Remove Item From Units Sack
 0x10 | Hide Unit
 0x11 | Show Unit
 0x12 | Metamorph Unit
 0x13 | Change Units Owner
 0x14 | Drop All
 0x15 | Magic On Area
 0x16 | Change Groups Owner
 0x17 | Give Money To Fraction
 0x18 | Magic On Unit
 0x19 | Create Magic Trigger
 0x1A | Set Building Health
 0x1B | Move Unit Momentally
 0x1C | Give All Items From Unit To Unit
 0x1D | Timed Spell On Ground
 0x1E | Timed Spell On Unit
 0x1F | Change Respawn Time
 0x20 | Hide Group
 0x21 | Show Group
 0x22 | Set Units Parameter
 0x23 | Set Scenario Variable
 0x24 | Set Sub Objective
 0x25 | Set Music Order
 0x26 | Remove Item From All
 0x27 | Stop Group
 0x10002 | Start Here
 0x10003 | Respawn Group
 0x10004 | Change Music To
