/*
 * Intel ACPI Component Architecture
 * AML Disassembler version 20130117-64 [Jan  6 2014]
 * Copyright (c) 2000 - 2013 Intel Corporation
 * 
 * Disassembly of ssdt3.dat, Mon Jan  6 05:08:49 2014
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000797 (1943)
 *     Revision         0x01
 *     Checksum         0x77
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "SataAhci"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20061109 (537268489)
 */

DefinitionBlock ("ssdt3.aml", "SSDT", 1, "LENOVO", "SataAhci", 0x00001000)
{
    External (_SB_.PCI0.LPC_.EC__.BDEV)
    External (_SB_.PCI0.LPC_.EC__.BEJ0, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.LPC_.EC__.BGID, IntObj)
    External (_SB_.PCI0.LPC_.EC__.BSTA, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.SAT1, DeviceObj)
    External (CDAH, IntObj)
    External (CDFL, IntObj)
    External (DPP0)
    External (DPP1)
    External (DPP2)
    External (DPP3)
    External (DPP4)
    External (IDET)

    Scope (\_SB.PCI0.SAT1)
    {
        Device (PRT0)
        {
            Name (DIP0, 0x00)
            Name (HDTF, Buffer (0x0E)
            {
                /* 0000 */   0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */   0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5
            })
            Name (ERTF, Buffer (0x15)
            {
                /* 0000 */   0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */   0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x5F, 0x00,
                /* 0010 */   0x00, 0x00, 0x00, 0xA0, 0xEF
            })
            Name (HPTF, Buffer (0x15)
            {
                /* 0000 */   0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */   0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x10, 0x03,
                /* 0010 */   0x00, 0x00, 0x00, 0xA0, 0xEF
            })
            Name (HXTF, Buffer (0x1C)
            {
                /* 0000 */   0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */   0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x5F, 0x00,
                /* 0010 */   0x00, 0x00, 0x00, 0xA0, 0xEF, 0x10, 0x03, 0x00,
                /* 0018 */   0x00, 0x00, 0xA0, 0xEF
            })
            Name (DDTF, Buffer (0x0E)
            {
                /* 0000 */   0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x00,
                /* 0008 */   0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3
            })
            CreateByteField (DDTF, 0x01, DTAT)
            CreateByteField (DDTF, 0x08, DTFT)
            Name (DGTF, Buffer (0x15)
            {
                /* 0000 */   0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x00,
                /* 0008 */   0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x10, 0x03,
                /* 0010 */   0x00, 0x00, 0x00, 0xA0, 0xEF
            })
            CreateByteField (DGTF, 0x01, GTAT)
            CreateByteField (DGTF, 0x08, GTFT)
            Name (_ADR, 0xFFFF)  // _ADR: Address
            Method (_SDD, 1, NotSerialized)  // _SDD: Set Device Data
            {
                Store (0x00, DIP0)
                If (LEqual (SizeOf (Arg0), 0x0200))
                {
                    CreateWordField (Arg0, 0x9C, M078)
                    If (LAnd (\DPP0, And (M078, 0x08)))
                    {
                        Store (0x01, DIP0)
                    }
                }
            }

            Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
            {
                If (DIP0)
                {
                    Return (HPTF)
                }

                Return (HDTF)
            }
        }

        Device (PRT1)
        {
            Name (DIP0, 0x00)
            Name (HDTF, Buffer (0x0E)
            {
                /* 0000 */   0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */   0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5
            })
            Name (ERTF, Buffer (0x15)
            {
                /* 0000 */   0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */   0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x5F, 0x00,
                /* 0010 */   0x00, 0x00, 0x00, 0xA0, 0xEF
            })
            Name (HPTF, Buffer (0x15)
            {
                /* 0000 */   0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */   0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x10, 0x03,
                /* 0010 */   0x00, 0x00, 0x00, 0xA0, 0xEF
            })
            Name (HXTF, Buffer (0x1C)
            {
                /* 0000 */   0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */   0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x5F, 0x00,
                /* 0010 */   0x00, 0x00, 0x00, 0xA0, 0xEF, 0x10, 0x03, 0x00,
                /* 0018 */   0x00, 0x00, 0xA0, 0xEF
            })
            Name (DDTF, Buffer (0x0E)
            {
                /* 0000 */   0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x00,
                /* 0008 */   0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3
            })
            CreateByteField (DDTF, 0x01, DTAT)
            CreateByteField (DDTF, 0x08, DTFT)
            Name (DGTF, Buffer (0x15)
            {
                /* 0000 */   0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x00,
                /* 0008 */   0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x10, 0x03,
                /* 0010 */   0x00, 0x00, 0x00, 0xA0, 0xEF
            })
            CreateByteField (DGTF, 0x01, GTAT)
            CreateByteField (DGTF, 0x08, GTFT)
            Method (_EJ0, 1, NotSerialized)  // _EJx: Eject Device
            {
                \_SB.PCI0.LPC.EC.BEJ0 (Arg0)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (\_SB.PCI0.LPC.EC.BSTA (0x01))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (0x00)
                }
            }

            Name (_PLD, Buffer (0x10)  // _PLD: Physical Location of Device
            {
                /* 0000 */   0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0008 */   0x59, 0x11, 0x00, 0x80, 0x03, 0x00, 0x00, 0x00
                /*           Revision : 01     */
                /*        IgnoreColor : 01     */
                /*              Color : 000000 */
                /*              Width : 0000   */
                /*             Height : 0000   */
                /*        UserVisible : 01     */
                /*               Dock : 00     */
                /*                Lid : 00     */
                /*              Panel : 03     */
                /*   VerticalPosition : 01     */
                /* HorizontalPosition : 01     */
                /*              Shape : 04     */
                /*   GroupOrientation : 00     */
                /*         GroupToken : 00     */
                /*      GroupPosition : 00     */
                /*                Bay : 01     */
                /*          Ejectable : 01     */
                /*  OspmEjectRequired : 01     */
                /*      CabinetNumber : 00     */
                /*     CardCageNumber : 00     */
                /*          Reference : 00     */
                /*           Rotation : 00     */
                /*              Order : 00     */
                /*     VerticalOffset : 0000   */
                /*   HorizontalOffset : 0000   */
            })
            Name (_ADR, 0x0001FFFF)  // _ADR: Address
            Method (_SDD, 1, NotSerialized)  // _SDD: Set Device Data
            {
                Store (0x00, DIP0)
                If (LEqual (SizeOf (Arg0), 0x0200))
                {
                    CreateWordField (Arg0, 0x9C, M078)
                    CreateWordField (Arg0, 0x00, M000)
                    If (And (M000, 0xC000))
                    {
                        If (LNot (And (M000, 0x4000)))
                        {
                            Store (0x03, \IDET)
                            Store (0x03, \_SB.PCI0.LPC.EC.BDEV)
                        }
                    }
                    Else
                    {
                        Store (0x06, \IDET)
                        Store (0x06, \_SB.PCI0.LPC.EC.BDEV)
                    }

                    If (LAnd (\DPP1, And (M078, 0x08)))
                    {
                        Store (0x01, DIP0)
                    }
                }
            }

            Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
            {
                Store (\_SB.PCI0.LPC.EC.BGID, 0x00)
                Local0
                If (LEqual (Local0, 0x07))
                {
                    Store (0x06, Local0)
                }

                If (LEqual (Local0, 0x06))
                {
                    If (DIP0)
                    {
                        Return (HPTF)
                    }

                    Return (HDTF)
                }

                If (DIP0)
                {
                    Store (\CDFL, GTFT)
                    Store (\CDAH, GTAT)
                    Return (DGTF)
                }

                Store (\CDFL, DTFT)
                Store (\CDAH, DTAT)
                Return (DDTF)
            }
        }

        Device (PRT2)
        {
            Name (DIP0, 0x00)
            Name (HDTF, Buffer (0x0E)
            {
                /* 0000 */   0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */   0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5
            })
            Name (ERTF, Buffer (0x15)
            {
                /* 0000 */   0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */   0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x5F, 0x00,
                /* 0010 */   0x00, 0x00, 0x00, 0xA0, 0xEF
            })
            Name (HPTF, Buffer (0x15)
            {
                /* 0000 */   0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */   0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x10, 0x03,
                /* 0010 */   0x00, 0x00, 0x00, 0xA0, 0xEF
            })
            Name (HXTF, Buffer (0x1C)
            {
                /* 0000 */   0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */   0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x5F, 0x00,
                /* 0010 */   0x00, 0x00, 0x00, 0xA0, 0xEF, 0x10, 0x03, 0x00,
                /* 0018 */   0x00, 0x00, 0xA0, 0xEF
            })
            Name (DDTF, Buffer (0x0E)
            {
                /* 0000 */   0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x00,
                /* 0008 */   0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3
            })
            CreateByteField (DDTF, 0x01, DTAT)
            CreateByteField (DDTF, 0x08, DTFT)
            Name (DGTF, Buffer (0x15)
            {
                /* 0000 */   0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x00,
                /* 0008 */   0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x10, 0x03,
                /* 0010 */   0x00, 0x00, 0x00, 0xA0, 0xEF
            })
            CreateByteField (DGTF, 0x01, GTAT)
            CreateByteField (DGTF, 0x08, GTFT)
            Name (_ADR, 0x0002FFFF)  // _ADR: Address
            Method (_SDD, 1, NotSerialized)  // _SDD: Set Device Data
            {
                Store (0x00, DIP0)
                If (LEqual (SizeOf (Arg0), 0x0200))
                {
                    CreateWordField (Arg0, 0x9C, M078)
                    If (LAnd (\DPP2, And (M078, 0x08)))
                    {
                        Store (0x01, DIP0)
                    }
                }
            }

            Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
            {
                If (DIP0)
                {
                    Return (HPTF)
                }

                Return (HDTF)
            }
        }

        Device (PRT3)
        {
            Name (DIP0, 0x00)
            Name (HDTF, Buffer (0x0E)
            {
                /* 0000 */   0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */   0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5
            })
            Name (ERTF, Buffer (0x15)
            {
                /* 0000 */   0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */   0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x5F, 0x00,
                /* 0010 */   0x00, 0x00, 0x00, 0xA0, 0xEF
            })
            Name (HPTF, Buffer (0x15)
            {
                /* 0000 */   0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */   0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x10, 0x03,
                /* 0010 */   0x00, 0x00, 0x00, 0xA0, 0xEF
            })
            Name (HXTF, Buffer (0x1C)
            {
                /* 0000 */   0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */   0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x5F, 0x00,
                /* 0010 */   0x00, 0x00, 0x00, 0xA0, 0xEF, 0x10, 0x03, 0x00,
                /* 0018 */   0x00, 0x00, 0xA0, 0xEF
            })
            Name (DDTF, Buffer (0x0E)
            {
                /* 0000 */   0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x00,
                /* 0008 */   0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3
            })
            CreateByteField (DDTF, 0x01, DTAT)
            CreateByteField (DDTF, 0x08, DTFT)
            Name (DGTF, Buffer (0x15)
            {
                /* 0000 */   0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x00,
                /* 0008 */   0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x10, 0x03,
                /* 0010 */   0x00, 0x00, 0x00, 0xA0, 0xEF
            })
            CreateByteField (DGTF, 0x01, GTAT)
            CreateByteField (DGTF, 0x08, GTFT)
            Name (_ADR, 0x0003FFFF)  // _ADR: Address
            Method (_SDD, 1, NotSerialized)  // _SDD: Set Device Data
            {
                Store (0x00, DIP0)
                If (LEqual (SizeOf (Arg0), 0x0200))
                {
                    CreateWordField (Arg0, 0x9C, M078)
                    If (LAnd (\DPP3, And (M078, 0x08)))
                    {
                        Store (0x01, DIP0)
                    }
                }
            }

            Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
            {
                If (DIP0)
                {
                    Return (HPTF)
                }

                Return (HDTF)
            }
        }

        Device (PRT4)
        {
            Name (DIP0, 0x00)
            Name (HDTF, Buffer (0x0E)
            {
                /* 0000 */   0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */   0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5
            })
            Name (ERTF, Buffer (0x15)
            {
                /* 0000 */   0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */   0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x5F, 0x00,
                /* 0010 */   0x00, 0x00, 0x00, 0xA0, 0xEF
            })
            Name (HPTF, Buffer (0x15)
            {
                /* 0000 */   0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */   0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x10, 0x03,
                /* 0010 */   0x00, 0x00, 0x00, 0xA0, 0xEF
            })
            Name (HXTF, Buffer (0x1C)
            {
                /* 0000 */   0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */   0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x5F, 0x00,
                /* 0010 */   0x00, 0x00, 0x00, 0xA0, 0xEF, 0x10, 0x03, 0x00,
                /* 0018 */   0x00, 0x00, 0xA0, 0xEF
            })
            Name (DDTF, Buffer (0x0E)
            {
                /* 0000 */   0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x00,
                /* 0008 */   0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3
            })
            CreateByteField (DDTF, 0x01, DTAT)
            CreateByteField (DDTF, 0x08, DTFT)
            Name (DGTF, Buffer (0x15)
            {
                /* 0000 */   0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x00,
                /* 0008 */   0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x10, 0x03,
                /* 0010 */   0x00, 0x00, 0x00, 0xA0, 0xEF
            })
            CreateByteField (DGTF, 0x01, GTAT)
            CreateByteField (DGTF, 0x08, GTFT)
            Name (_ADR, 0x0004FFFF)  // _ADR: Address
            Method (_SDD, 1, NotSerialized)  // _SDD: Set Device Data
            {
                Store (0x00, DIP0)
                If (LEqual (SizeOf (Arg0), 0x0200))
                {
                    CreateWordField (Arg0, 0x9C, M078)
                    If (LAnd (\DPP4, And (M078, 0x08)))
                    {
                        Store (0x01, DIP0)
                    }
                }
            }

            Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
            {
                If (DIP0)
                {
                    Return (HPTF)
                }

                Return (HDTF)
            }
        }
    }
}

