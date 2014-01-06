/*
 * Intel ACPI Component Architecture
 * AML Disassembler version 20130117-64 [Jan  6 2014]
 * Copyright (c) 2000 - 2013 Intel Corporation
 * 
 * Disassembly of dmar.dat, Mon Jan  6 05:08:48 2014
 *
 * ACPI Data Table [DMAR]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue
 */

[000h 0000   4]                    Signature : "DMAR"    [DMA Remapping table]
[004h 0004   4]                 Table Length : 000000B0
[008h 0008   1]                     Revision : 01
[009h 0009   1]                     Checksum : 86
[00Ah 0010   6]                       Oem ID : "INTEL "
[010h 0016   8]                 Oem Table ID : "SNB "
[018h 0024   4]                 Oem Revision : 00000001
[01Ch 0028   4]              Asl Compiler ID : "INTL"
[020h 0032   4]        Asl Compiler Revision : 00000001

[024h 0036   1]           Host Address Width : 23
[025h 0037   1]                        Flags : 01

[030h 0048   2]                Subtable Type : 0000 [Hardware Unit Definition]
[032h 0050   2]                       Length : 0058
[034h 0052   1]                        Flags : 01
[035h 0053   1]                     Reserved : 00
[036h 0054   2]           PCI Segment Number : 0000
[038h 0056   8]        Register Base Address : 00000000FED91000

[040h 0064   1]      Device Scope Entry Type : 03
[041h 0065   1]                 Entry Length : 08
[042h 0066   2]                     Reserved : 0000
[044h 0068   1]               Enumeration ID : 02
[045h 0069   1]               PCI Bus Number : F0
[046h 0070   2]                     PCI Path : 1F,00

[048h 0072   1]      Device Scope Entry Type : 04
[049h 0073   1]                 Entry Length : 08
[04Ah 0074   2]                     Reserved : 0000
[04Ch 0076   1]               Enumeration ID : 00
[04Dh 0077   1]               PCI Bus Number : 00
[04Eh 0078   2]                     PCI Path : 0F,00

[050h 0080   1]      Device Scope Entry Type : 04
[051h 0081   1]                 Entry Length : 08
[052h 0082   2]                     Reserved : 0000
[054h 0084   1]               Enumeration ID : 00
[055h 0085   1]               PCI Bus Number : 00
[056h 0086   2]                     PCI Path : 0F,01

[058h 0088   1]      Device Scope Entry Type : 04
[059h 0089   1]                 Entry Length : 08
[05Ah 0090   2]                     Reserved : 0000
[05Ch 0092   1]               Enumeration ID : 00
[05Dh 0093   1]               PCI Bus Number : 00
[05Eh 0094   2]                     PCI Path : 0F,02

[060h 0096   1]      Device Scope Entry Type : 04
[061h 0097   1]                 Entry Length : 08
[062h 0098   2]                     Reserved : 0000
[064h 0100   1]               Enumeration ID : 00
[065h 0101   1]               PCI Bus Number : 00
[066h 0102   2]                     PCI Path : 0F,03

[068h 0104   1]      Device Scope Entry Type : 04
[069h 0105   1]                 Entry Length : 08
[06Ah 0106   2]                     Reserved : 0000
[06Ch 0108   1]               Enumeration ID : 00
[06Dh 0109   1]               PCI Bus Number : 00
[06Eh 0110   2]                     PCI Path : 0F,04

[070h 0112   1]      Device Scope Entry Type : 04
[071h 0113   1]                 Entry Length : 08
[072h 0114   2]                     Reserved : 0000
[074h 0116   1]               Enumeration ID : 00
[075h 0117   1]               PCI Bus Number : 00
[076h 0118   2]                     PCI Path : 0F,05

[078h 0120   1]      Device Scope Entry Type : 04
[079h 0121   1]                 Entry Length : 08
[07Ah 0122   2]                     Reserved : 0000
[07Ch 0124   1]               Enumeration ID : 00
[07Dh 0125   1]               PCI Bus Number : 00
[07Eh 0126   2]                     PCI Path : 0F,06

[080h 0128   1]      Device Scope Entry Type : 04
[081h 0129   1]                 Entry Length : 08
[082h 0130   2]                     Reserved : 0000
[084h 0132   1]               Enumeration ID : 00
[085h 0133   1]               PCI Bus Number : 00
[086h 0134   2]                     PCI Path : 0F,07

[088h 0136   2]                Subtable Type : 0001 [Reserved Memory Region]
[08Ah 0138   2]                       Length : 0028
[08Ch 0140   2]                     Reserved : 0000
[08Eh 0142   2]           PCI Segment Number : 0000
[090h 0144   8]                 Base Address : 00000000DF0D5000
[098h 0152   8]          End Address (limit) : 00000000DF0EBFFF

[0A0h 0160   1]      Device Scope Entry Type : 01
[0A1h 0161   1]                 Entry Length : 08
[0A2h 0162   2]                     Reserved : 0000
[0A4h 0164   1]               Enumeration ID : 00
[0A5h 0165   1]               PCI Bus Number : 00
[0A6h 0166   2]                     PCI Path : 1D,00

[0A8h 0168   1]      Device Scope Entry Type : 01
[0A9h 0169   1]                 Entry Length : 08
[0AAh 0170   2]                     Reserved : 0000
[0ACh 0172   1]               Enumeration ID : 00
[0ADh 0173   1]               PCI Bus Number : 00
[0AEh 0174   2]                     PCI Path : 1A,00

Raw Table Data: Length 176 (0xB0)

  0000: 44 4D 41 52 B0 00 00 00 01 86 49 4E 54 45 4C 20  DMAR......INTEL 
  0010: 53 4E 42 20 00 00 00 00 01 00 00 00 49 4E 54 4C  SNB ........INTL
  0020: 01 00 00 00 23 01 00 00 00 00 00 00 00 00 00 00  ....#...........
  0030: 00 00 58 00 01 00 00 00 00 10 D9 FE 00 00 00 00  ..X.............
  0040: 03 08 00 00 02 F0 1F 00 04 08 00 00 00 00 0F 00  ................
  0050: 04 08 00 00 00 00 0F 01 04 08 00 00 00 00 0F 02  ................
  0060: 04 08 00 00 00 00 0F 03 04 08 00 00 00 00 0F 04  ................
  0070: 04 08 00 00 00 00 0F 05 04 08 00 00 00 00 0F 06  ................
  0080: 04 08 00 00 00 00 0F 07 01 00 28 00 00 00 00 00  ..........(.....
  0090: 00 50 0D DF 00 00 00 00 FF BF 0E DF 00 00 00 00  .P..............
  00A0: 01 08 00 00 00 00 1D 00 01 08 00 00 00 00 1A 00  ................
