/*
 * Intel ACPI Component Architecture
 * AML Disassembler version 20130117-64 [Jan  6 2014]
 * Copyright (c) 2000 - 2013 Intel Corporation
 * 
 * Disassembly of slic.dat, Mon Jan  6 05:08:49 2014
 *
 * ACPI Data Table [SLIC]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue
 */

[000h 0000   4]                    Signature : "SLIC"    [Software Licensing Description Table]
[004h 0004   4]                 Table Length : 00000176
[008h 0008   1]                     Revision : 01
[009h 0009   1]                     Checksum : B0
[00Ah 0010   6]                       Oem ID : "LENOVO"
[010h 0016   8]                 Oem Table ID : "TP-8A   "
[018h 0024   4]                 Oem Revision : 00001440
[01Ch 0028   4]              Asl Compiler ID : "PTEC"
[020h 0032   4]        Asl Compiler Revision : 00000001


[024h 0036   4]                Subtable Type : 00000000 [Public Key Structure]
[028h 0040   4]                       Length : 0000009C

[02Ch 0044   1]                     Key Type : 06
[02Dh 0045   1]                      Version : 02
[02Eh 0046   2]                     Reserved : 0000
[030h 0048   4]                    Algorithm : 00002400
[034h 0052   4]                        Magic : "RSA1"
[038h 0056   4]                    BitLength : 00000400
[03Ch 0060   4]                     Exponent : 00010001
[040h 0064 128]                      Modulus : 69 16 4A 9F B1 4B 3A FB 80 20 AA AF C4 F9 3E C1 \
                                               80 49 EE 6A 65 26 72 1E CD BF 5F 2F 96 D6 C0 0A \
                                               92 F5 06 B5 00 B2 3B 29 02 E2 4C 8D C2 F2 BC 41 \
                                               77 9C 70 F0 F3 1B 09 D2 63 5A DC A8 83 F8 5E C9 \
                                               15 95 F9 FA FD DC 05 B7 4D 67 7F 2D B3 84 33 20 \
                                               E1 D1 79 2A A7 6A 77 D1 B6 20 2A 76 42 C5 D5 E9 \
                                               B6 43 40 55 44 C3 C9 37 99 5F 41 97 70 F3 D1 F6 \
                                               07 EC 7B 1A 29 A1 C1 F1 91 FD 48 86 6E 3E CE CB

[0C0h 0192   4]                Subtable Type : 00000001 [Windows Marker Structure]
[0C4h 0196   4]                       Length : 000000B6

[0C8h 0200   4]                      Version : 00020000
[0CCh 0204   6]                       Oem ID : "LENOVO"
[0D2h 0210   8]                 Oem Table ID : "TP-8A   "
[0DAh 0218   8]                 Windows Flag : "WINDOWS "
[0E2h 0226   4]                 SLIC Version : 00020001
[0E6h 0230  16]                     Reserved : 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
[0F6h 0246 128]                    Signature : 3F 39 42 C3 80 BE 58 51 03 38 B2 65 42 4C CA 69 \
                                               0F 55 AF ED 82 DB 15 C5 2F 02 7D 93 9F 94 6D 42 \
                                               AA 94 EA FF 37 3F DA F4 8B D0 E7 1A 1C FD D8 A7 \
                                               25 70 B5 87 6A FD AE 1B F3 DA 6F 01 50 90 03 1A \
                                               5A 01 0D 61 63 33 42 DC 9E 96 1A 7A 04 C9 D8 16 \
                                               9D 92 3E 4B D0 6C 65 C5 F1 79 FE 81 C9 3B 7C 09 \
                                               46 9A 1E AD C9 34 C5 A6 72 9F 94 25 FA 80 28 A9 \
                                               C8 07 68 57 56 B5 37 88 82 D5 54 A7 90 5A 11 66

Raw Table Data: Length 374 (0x176)

  0000: 53 4C 49 43 76 01 00 00 01 B0 4C 45 4E 4F 56 4F  SLICv.....LENOVO
  0010: 54 50 2D 38 41 20 20 20 40 14 00 00 50 54 45 43  TP-8A   @...PTEC
  0020: 01 00 00 00 00 00 00 00 9C 00 00 00 06 02 00 00  ................
  0030: 00 24 00 00 52 53 41 31 00 04 00 00 01 00 01 00  .$..RSA1........
  0040: 69 16 4A 9F B1 4B 3A FB 80 20 AA AF C4 F9 3E C1  i.J..K:.. ....>.
  0050: 80 49 EE 6A 65 26 72 1E CD BF 5F 2F 96 D6 C0 0A  .I.je&r..._/....
  0060: 92 F5 06 B5 00 B2 3B 29 02 E2 4C 8D C2 F2 BC 41  ......;)..L....A
  0070: 77 9C 70 F0 F3 1B 09 D2 63 5A DC A8 83 F8 5E C9  w.p.....cZ....^.
  0080: 15 95 F9 FA FD DC 05 B7 4D 67 7F 2D B3 84 33 20  ........Mg.-..3 
  0090: E1 D1 79 2A A7 6A 77 D1 B6 20 2A 76 42 C5 D5 E9  ..y*.jw.. *vB...
  00A0: B6 43 40 55 44 C3 C9 37 99 5F 41 97 70 F3 D1 F6  .C@UD..7._A.p...
  00B0: 07 EC 7B 1A 29 A1 C1 F1 91 FD 48 86 6E 3E CE CB  ..{.).....H.n>..
  00C0: 01 00 00 00 B6 00 00 00 00 00 02 00 4C 45 4E 4F  ............LENO
  00D0: 56 4F 54 50 2D 38 41 20 20 20 57 49 4E 44 4F 57  VOTP-8A   WINDOW
  00E0: 53 20 01 00 02 00 00 00 00 00 00 00 00 00 00 00  S ..............
  00F0: 00 00 00 00 00 00 3F 39 42 C3 80 BE 58 51 03 38  ......?9B...XQ.8
  0100: B2 65 42 4C CA 69 0F 55 AF ED 82 DB 15 C5 2F 02  .eBL.i.U....../.
  0110: 7D 93 9F 94 6D 42 AA 94 EA FF 37 3F DA F4 8B D0  }...mB....7?....
  0120: E7 1A 1C FD D8 A7 25 70 B5 87 6A FD AE 1B F3 DA  ......%p..j.....
  0130: 6F 01 50 90 03 1A 5A 01 0D 61 63 33 42 DC 9E 96  o.P...Z..ac3B...
  0140: 1A 7A 04 C9 D8 16 9D 92 3E 4B D0 6C 65 C5 F1 79  .z......>K.le..y
  0150: FE 81 C9 3B 7C 09 46 9A 1E AD C9 34 C5 A6 72 9F  ...;|.F....4..r.
  0160: 94 25 FA 80 28 A9 C8 07 68 57 56 B5 37 88 82 D5  .%..(...hWV.7...
  0170: 54 A7 90 5A 11 66                                T..Z.f
