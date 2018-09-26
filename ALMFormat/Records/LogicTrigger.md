## Logic Trigger Record

 Size | Meaning
------|--------
 0x80 | `Name`. Human readable name ended with terminal zero.
 0x04 | `Check 0 Id`. Points to a [Logic Check](./LogicCheck.md) with corresponding `Id`
 0x04 | `Check 1 Id`. Points to a [Logic Check](./LogicCheck.md) with corresponding `Id`
 0x04 | `Check 2 Id`. Points to a [Logic Check](./LogicCheck.md) with corresponding `Id`
 0x04 | `Check 3 Id`. Points to a [Logic Check](./LogicCheck.md) with corresponding `Id`
 0x04 | `Check 4 Id`. Points to a [Logic Check](./LogicCheck.md) with corresponding `Id`
 0x04 | `Check 5 Id`. Points to a [Logic Check](./LogicCheck.md) with corresponding `Id`
 0x04 | `Instance 0 Id`. Points to an [Logic Instance](./LogicInstance.md) with corresponding `Id`
 0x04 | `Instance 1 Id`. Points to an [Logic Instance](./LogicInstance.md) with corresponding `Id`
 0x04 | `Instance 2 Id`. Points to an [Logic Instance](./LogicInstance.md) with corresponding `Id`
 0x04 | `Instance 3 Id`. Points to an [Logic Instance](./LogicInstance.md) with corresponding `Id`
 0x04 | `Check 0-1 Operator`. [Operator](../../Enumerations/ALM/CheckOperator.md) to compare `Check 0` and `Check 1`
 0x04 | `Check 0-1 Operator`. [Operator](../../Enumerations/ALM/CheckOperator.md) to compare `Check 2` and `Check 3`
 0x04 | `Check 0-1 Operator`. [Operator](../../Enumerations/ALM/CheckOperator.md) to compare `Check 4` and `Check 5`
 0x04 | `Run Once Flag`.
