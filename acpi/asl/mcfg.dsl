/*
 * Intel ACPI Component Architecture
 * AML Disassembler version 20130117-64 [Jan  6 2014]
 * Copyright (c) 2000 - 2013 Intel Corporation
 * 
 * Disassembly of mcfg.dat, Mon Jan  6 05:08:49 2014
 *
 * ACPI Data Table [MCFG]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue
 */

[000h 0000   4]                    Signature : "MCFG"    [Memory Mapped Configuration table]
[004h 0004   4]                 Table Length : 0000003C
[008h 0008   1]                     Revision : 01
[009h 0009   1]                     Checksum : 8C
[00Ah 0010   6]                       Oem ID : "LENOVO"
[010h 0016   8]                 Oem Table ID : "TP-8A   "
[018h 0024   4]                 Oem Revision : 00001440
[01Ch 0028   4]              Asl Compiler ID : "PTL "
[020h 0032   4]        Asl Compiler Revision : 00000002

[024h 0036   8]                     Reserved : 0000000000000000

[02Ch 0044   8]                 Base Address : 00000000F8000000
[034h 0052   2]         Segment Group Number : 0000
[036h 0054   1]             Start Bus Number : 00
[037h 0055   1]               End Bus Number : 3F
[038h 0056   4]                     Reserved : 00000000

Raw Table Data: Length 60 (0x3C)

  0000: 4D 43 46 47 3C 00 00 00 01 8C 4C 45 4E 4F 56 4F  MCFG<.....LENOVO
  0010: 54 50 2D 38 41 20 20 20 40 14 00 00 50 54 4C 20  TP-8A   @...PTL 
  0020: 02 00 00 00 00 00 00 00 00 00 00 00 00 00 00 F8  ................
  0030: 00 00 00 00 00 00 00 3F 00 00 00 00              .......?....
