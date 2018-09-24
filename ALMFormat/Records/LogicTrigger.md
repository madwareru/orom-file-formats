## Logic Trigger Record

 offset | size | Meaning
--------|------|--------
0x00 | 0x80 | `Name`. Human readable name ended with terminal zero.
0x80 | 0x04 | `Check 0 Id`. Points to an [Logic Check](./LogicCheck.md) with corresponding `Id`
0x84 | 0x04 | `Check 1 Id`. Points to an [Logic Check](./LogicCheck.md) with corresponding `Id`
0x88 | 0x04 | `Check 2 Id`. Points to an [Logic Check](./LogicCheck.md) with corresponding `Id`
0x8C | 0x04 | `Check 3 Id`. Points to an [Logic Check](./LogicCheck.md) with corresponding `Id`
0x90 | 0x04 | `Check 4 Id`. Points to an [Logic Check](./LogicCheck.md) with corresponding `Id`
0x94 | 0x04 | `Check 5 Id`. Points to an [Logic Check](./LogicCheck.md) with corresponding `Id`
0x98 | 0x04 | `Instance 0 Id`. Points to an [Logic Instance](./LogicInstance.md) with corresponding `Id`
0x9C | 0x04 | `Instance 1 Id`. Points to an [Logic Instance](./LogicInstance.md) with corresponding `Id`
0xA0 | 0x04 | `Instance 2 Id`. Points to an [Logic Instance](./LogicInstance.md) with corresponding `Id`
0xA4 | 0x04 | `Instance 3 Id`. Points to an [Logic Instance](./LogicInstance.md) with corresponding `Id`
0xA8 | 0x04 | `Check 0-1 Operator`. [Operator](../../Enumerations/ALM/CheckOperator.md) to compare `Check 0` and `Check 1`
0xAC | 0x04 | `Check 0-1 Operator`. [Operator](../../Enumerations/ALM/CheckOperator.md) to compare `Check 2` and `Check 3`
0xB0 | 0x04 | `Check 0-1 Operator`. [Operator](../../Enumerations/ALM/CheckOperator.md) to compare `Check 4` and `Check 5`
0xB4 | 0x04 | `Run Once Flag`.
