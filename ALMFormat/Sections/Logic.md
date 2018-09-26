## Logic Section

 Size | Meaning
------|---------
 0x04 | `Instance count`.
 0x31C * `Instance count` | [Logic Instance](../Records/LogicInstance.md) records.
 0x04 | `Check count`
 0x31C * `Check count` | [Logic check](../Records/LogicCheck.md) records.
 0x04 | `Trigger count`
 0x31C * `Trigger count` | [Logic trigger](../Records/LogicTrigger.md) records.

Total sum of `Instance count`, `Check count`, and `Trigger count` are
equal to `Logic count` in [General Map Information](./GeneralMapInfo.md)
