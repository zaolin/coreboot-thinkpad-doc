/*
 * Intel ACPI Component Architecture
 * AML Disassembler version 20130117-64 [Jan  6 2014]
 * Copyright (c) 2000 - 2013 Intel Corporation
 * 
 * Disassembly of rsdp.dat, Mon Jan  6 05:08:49 2014
 *
 * ACPI Data Table [RSD ]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue
 */

[000h 0000   8]                    Signature : "RSD PTR "
[008h 0008   1]                     Checksum : 62
[009h 0009   6]                       Oem ID : "LENOVO"
[00Fh 0015   1]                     Revision : 02
[010h 0016   4]                 RSDT Address : DF3FE0AC
[014h 0020   4]                       Length : 00000024
[018h 0024   8]                 XSDT Address : 00000000DF3FE120
[020h 0032   1]            Extended Checksum : BD
[021h 0033   3]                     Reserved : 000000

Raw Table Data: Length 36 (0x24)

  0000: 52 53 44 20 50 54 52 20 62 4C 45 4E 4F 56 4F 02  RSD PTR bLENOVO.
  0010: AC E0 3F DF 24 00 00 00 20 E1 3F DF 00 00 00 00  ..?.$... .?.....
  0020: BD 00 00 00                                      ....
