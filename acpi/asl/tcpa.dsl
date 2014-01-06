/*
 * Intel ACPI Component Architecture
 * AML Disassembler version 20130117-64 [Jan  6 2014]
 * Copyright (c) 2000 - 2013 Intel Corporation
 * 
 * Disassembly of tcpa.dat, Mon Jan  6 05:08:49 2014
 *
 * ACPI Data Table [TCPA]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue
 */

[000h 0000   4]                    Signature : "TCPA"    [Trusted Computing Platform Alliance table]
[004h 0004   4]                 Table Length : 00000032
[008h 0008   1]                     Revision : 02
[009h 0009   1]                     Checksum : F8
[00Ah 0010   6]                       Oem ID : "PTL"
[010h 0016   8]                 Oem Table ID : "LENOVO"
[018h 0024   4]                 Oem Revision : 06040000
[01Ch 0028   4]              Asl Compiler ID : "LNVO"
[020h 0032   4]        Asl Compiler Revision : 00000001

[024h 0036   2]                     Reserved : 0000
[026h 0038   4]         Max Event Log Length : 00010000
[02Ah 0042   8]            Event Log Address : 00000000DF2F9000

Raw Table Data: Length 50 (0x32)

  0000: 54 43 50 41 32 00 00 00 02 F8 50 54 4C 00 00 00  TCPA2.....PTL...
  0010: 4C 45 4E 4F 56 4F 00 00 00 00 04 06 4C 4E 56 4F  LENOVO......LNVO
  0020: 01 00 00 00 00 00 00 00 01 00 00 90 2F DF 00 00  ............/...
  0030: 00 00                                            ..
