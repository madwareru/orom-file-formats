## Logic Instance Record

 offset | size | Meaning
--------|------|--------
0x000 | 0x40 | `Name`. Human readable name ended with terminal zero.
0x040 | 0x04 | `Check Type`. Points to a [Logick Instance Type](../../Enumerations/ALM/LogicInstanceType.md)
0x044 | 0x04 | `Id`. Unique identifier of an instance
0x048 | 0x04 | `Execute Once Flag`.
0x04C | 0x04 | `Argument 0 Value`.
0x050 | 0x04 | `Argument 1 Value`.
0x054 | 0x04 | `Argument 2 Value`.
0x058 | 0x04 | `Argument 3 Value`.
0x05C | 0x04 | `Argument 4 Value`.
0x060 | 0x04 | `Argument 5 Value`.
0x064 | 0x04 | `Argument 6 Value`.
0x068 | 0x04 | `Argument 7 Value`.
0x06C | 0x04 | `Argument 8 Value`.
0x070 | 0x04 | `Argument 9 Value`.
0x074 | 0x04 | `Argument 0 Type`. Points to a [Argument Type](../../Enumerations/ALM/ArgumentType.md)
0x078 | 0x04 | `Argument 1 Type`. Points to a [Argument Type](../../Enumerations/ALM/ArgumentType.md)
0x07C | 0x04 | `Argument 2 Type`. Points to a [Argument Type](../../Enumerations/ALM/ArgumentType.md)
0x080 | 0x04 | `Argument 3 Type`. Points to a [Argument Type](../../Enumerations/ALM/ArgumentType.md)
0x084 | 0x04 | `Argument 4 Type`. Points to a [Argument Type](../../Enumerations/ALM/ArgumentType.md)
0x088 | 0x04 | `Argument 5 Type`. Points to a [Argument Type](../../Enumerations/ALM/ArgumentType.md)
0x08C | 0x04 | `Argument 6 Type`. Points to a [Argument Type](../../Enumerations/ALM/ArgumentType.md)
0x090 | 0x04 | `Argument 7 Type`. Points to a [Argument Type](../../Enumerations/ALM/ArgumentType.md)
0x094 | 0x04 | `Argument 8 Type`. Points to a [Argument Type](../../Enumerations/ALM/ArgumentType.md)
0x098 | 0x04 | `Argument 9 Type`. Points to a [Argument Type](../../Enumerations/ALM/ArgumentType.md)
0x09C | 0x40 | `Argument 0 Name`. Human readable name ended with terminal zero.
0x0DC | 0x40 | `Argument 1 Name`. Human readable name ended with terminal zero.
0x11C | 0x40 | `Argument 2 Name`. Human readable name ended with terminal zero.
0x15C | 0x40 | `Argument 3 Name`. Human readable name ended with terminal zero.
0x19C | 0x40 | `Argument 4 Name`. Human readable name ended with terminal zero.
0x1DC | 0x40 | `Argument 5 Name`. Human readable name ended with terminal zero.
0x21C | 0x40 | `Argument 6 Name`. Human readable name ended with terminal zero.
0x25C | 0x40 | `Argument 7 Name`. Human readable name ended with terminal zero.
0x29C | 0x40 | `Argument 8 Name`. Human readable name ended with terminal zero.
0x2DC | 0x40 | `Argument 9 Name`. Human readable name ended with terminal zero.
