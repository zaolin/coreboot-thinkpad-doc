/*
 * Intel ACPI Component Architecture
 * AML Disassembler version 20100528
 *
 * Disassembly of SSDT2.dat, Thu Jan 12 17:31:21 2012
 *
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000084B (2123)
 *     Revision         0x01
 *     Checksum         0xD7
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "TP-6U   "
 *     OEM Revision     0x00001340 (4928)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20050513 (537199891)
 */
DefinitionBlock ("SSDT2.aml", "SSDT", 1, "LENOVO", "TP-6U   ", 0x00001340)
{
    External (\DPP5)
    External (\DPP4)
    External (\CDAH, IntObj)
    External (\CDFL, IntObj)
    External (\DPP1)
    External (\IDET)
    External (\DPP0)
    External (\_SB_.PCI0.SAT1, DeviceObj)
    External (\_SB_.PCI0.LPC_.EC__.BGID, IntObj)
    External (\_SB_.PCI0.LPC_.EC__.BDEV)
    External (\_SB_.PCI0.LPC_.EC__.BSTA, MethodObj)    // 1 Arguments
    External (\_SB_.PCI0.LPC_.EC__.BEJ0, MethodObj)    // 1 Arguments

    Scope (\_SB.PCI0.SAT1)
    {
        Device (PRT0)
        {
            Name (DRE0, 0x00)
            Name (DIP0, 0x00)
            Name (HDTF, Buffer (0x0E)
            {
                /* 0000 */    0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00, 
                /* 0008 */    0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5
            })
            Name (ERTF, Buffer (0x15)
            {
                /* 0000 */    0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00, 
                /* 0008 */    0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x5F, 0x00, 
                /* 0010 */    0x00, 0x00, 0x00, 0xA0, 0xEF
            })
            Name (HPTF, Buffer (0x15)
            {
                /* 0000 */    0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00, 
                /* 0008 */    0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x10, 0x03, 
                /* 0010 */    0x00, 0x00, 0x00, 0xA0, 0xEF
            })
            Name (HXTF, Buffer (0x1C)
            {
                /* 0000 */    0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00, 
                /* 0008 */    0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x5F, 0x00, 
                /* 0010 */    0x00, 0x00, 0x00, 0xA0, 0xEF, 0x10, 0x03, 0x00, 
                /* 0018 */    0x00, 0x00, 0xA0, 0xEF
            })
            Name (DDTF, Buffer (0x0E)
            {
                /* 0000 */    0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x00, 
                /* 0008 */    0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3
            })
            CreateByteField (DDTF, 0x01, DTAT)
            CreateByteField (DDTF, 0x08, DTFT)
            Name (DGTF, Buffer (0x15)
            {
                /* 0000 */    0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x00, 
                /* 0008 */    0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x10, 0x03, 
                /* 0010 */    0x00, 0x00, 0x00, 0xA0, 0xEF
            })
            CreateByteField (DGTF, 0x01, GTAT)
            CreateByteField (DGTF, 0x08, GTFT)
            Name (_ADR, 0xFFFF)
            Method (_SDD, 1, NotSerialized)
            {
                Store (0x00, DRE0)
                Store (0x00, DIP0)
                If (LEqual (SizeOf (Arg0), 0x0200))
                {
                    CreateWordField (Arg0, 0x9C, M078)
                    CreateWordField (Arg0, 0xAC, M086)
                    CreateWordField (Arg0, 0xEE, M119)
                    CreateWordField (Arg0, 0x0128, M148)
                    If (LEqual (And (M148, 0xC000), 0x4000))
                    {
                        If (And (M148, 0x04))
                        {
                            Store (0x01, DRE0)
                        }
                    }

                    If (And (M086, 0x8000))
                    {
                        If (And (M119, 0x01))
                        {
                            Store (0x01, DRE0)
                        }
                    }

                    If (LAnd (\DPP0, And (M078, 0x08)))
                    {
                        Store (0x01, DIP0)
                    }
                }
            }

            Method (_GTF, 0, NotSerialized)
            {
                If (DRE0)
                {
                    If (DIP0)
                    {
                        Return (HXTF)
                    }
                    Else
                    {
                        Return (ERTF)
                    }
                }

                If (DIP0)
                {
                    Return (HPTF)
                }

                Return (HDTF)
            }
        }

        Device (PRT1)
        {
            Name (DRE0, 0x00)
            Name (DIP0, 0x00)
            Name (HDTF, Buffer (0x0E)
            {
                /* 0000 */    0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00, 
                /* 0008 */    0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5
            })
            Name (ERTF, Buffer (0x15)
            {
                /* 0000 */    0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00, 
                /* 0008 */    0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x5F, 0x00, 
                /* 0010 */    0x00, 0x00, 0x00, 0xA0, 0xEF
            })
            Name (HPTF, Buffer (0x15)
            {
                /* 0000 */    0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00, 
                /* 0008 */    0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x10, 0x03, 
                /* 0010 */    0x00, 0x00, 0x00, 0xA0, 0xEF
            })
            Name (HXTF, Buffer (0x1C)
            {
                /* 0000 */    0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00, 
                /* 0008 */    0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x5F, 0x00, 
                /* 0010 */    0x00, 0x00, 0x00, 0xA0, 0xEF, 0x10, 0x03, 0x00, 
                /* 0018 */    0x00, 0x00, 0xA0, 0xEF
            })
            Name (DDTF, Buffer (0x0E)
            {
                /* 0000 */    0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x00, 
                /* 0008 */    0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3
            })
            CreateByteField (DDTF, 0x01, DTAT)
            CreateByteField (DDTF, 0x08, DTFT)
            Name (DGTF, Buffer (0x15)
            {
                /* 0000 */    0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x00, 
                /* 0008 */    0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x10, 0x03, 
                /* 0010 */    0x00, 0x00, 0x00, 0xA0, 0xEF
            })
            CreateByteField (DGTF, 0x01, GTAT)
            CreateByteField (DGTF, 0x08, GTFT)
            Method (_EJ0, 1, NotSerialized)
            {
                \_SB.PCI0.LPC.EC.BEJ0 (Arg0)
            }

            Method (_STA, 0, NotSerialized)
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

            Name (_PLD, Buffer (0x10)
            {
                /* 0000 */    0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
                /* 0008 */    0x59, 0x11, 0x00, 0x80, 0x03, 0x00, 0x00, 0x00
            })
            Name (_ADR, 0x0001FFFF)
            Method (_SDD, 1, NotSerialized)
            {
                Store (0x00, DRE0)
                Store (0x00, DIP0)
                If (LEqual (SizeOf (Arg0), 0x0200))
                {
                    CreateWordField (Arg0, 0x00, M000)
                    CreateWordField (Arg0, 0x9C, M078)
                    CreateWordField (Arg0, 0xAC, M086)
                    CreateWordField (Arg0, 0xEE, M119)
                    CreateWordField (Arg0, 0x0128, M148)
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

                    If (LEqual (And (M148, 0xC000), 0x4000))
                    {
                        If (And (M148, 0x04))
                        {
                            Store (0x01, DRE0)
                        }
                    }

                    If (And (M086, 0x8000))
                    {
                        If (And (M119, 0x01))
                        {
                            Store (0x01, DRE0)
                        }
                    }

                    If (LAnd (\DPP1, And (M078, 0x08)))
                    {
                        Store (0x01, DIP0)
                    }
                }
            }

            Method (_GTF, 0, NotSerialized)
            {
                Store (\_SB.PCI0.LPC.EC.BGID, 0x00)
                Local0
                If (LEqual (Local0, 0x07))
                {
                    Store (0x06, Local0)
                }

                If (LEqual (Local0, 0x06))
                {
                    If (DRE0)
                    {
                        If (DIP0)
                        {
                            Return (HXTF)
                        }
                        Else
                        {
                            Return (ERTF)
                        }
                    }

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

        Device (PRT4)
        {
            Name (DRE0, 0x00)
            Name (DIP0, 0x00)
            Name (HDTF, Buffer (0x0E)
            {
                /* 0000 */    0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00, 
                /* 0008 */    0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5
            })
            Name (ERTF, Buffer (0x15)
            {
                /* 0000 */    0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00, 
                /* 0008 */    0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x5F, 0x00, 
                /* 0010 */    0x00, 0x00, 0x00, 0xA0, 0xEF
            })
            Name (HPTF, Buffer (0x15)
            {
                /* 0000 */    0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00, 
                /* 0008 */    0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x10, 0x03, 
                /* 0010 */    0x00, 0x00, 0x00, 0xA0, 0xEF
            })
            Name (HXTF, Buffer (0x1C)
            {
                /* 0000 */    0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00, 
                /* 0008 */    0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x5F, 0x00, 
                /* 0010 */    0x00, 0x00, 0x00, 0xA0, 0xEF, 0x10, 0x03, 0x00, 
                /* 0018 */    0x00, 0x00, 0xA0, 0xEF
            })
            Name (DDTF, Buffer (0x0E)
            {
                /* 0000 */    0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x00, 
                /* 0008 */    0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3
            })
            CreateByteField (DDTF, 0x01, DTAT)
            CreateByteField (DDTF, 0x08, DTFT)
            Name (DGTF, Buffer (0x15)
            {
                /* 0000 */    0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x00, 
                /* 0008 */    0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x10, 0x03, 
                /* 0010 */    0x00, 0x00, 0x00, 0xA0, 0xEF
            })
            CreateByteField (DGTF, 0x01, GTAT)
            CreateByteField (DGTF, 0x08, GTFT)
            Name (_ADR, 0x0004FFFF)
            Method (_SDD, 1, NotSerialized)
            {
                Store (0x00, DRE0)
                Store (0x00, DIP0)
                If (LEqual (SizeOf (Arg0), 0x0200))
                {
                    CreateWordField (Arg0, 0x9C, M078)
                    CreateWordField (Arg0, 0xAC, M086)
                    CreateWordField (Arg0, 0xEE, M119)
                    CreateWordField (Arg0, 0x0128, M148)
                    If (LEqual (And (M148, 0xC000), 0x4000))
                    {
                        If (And (M148, 0x04))
                        {
                            Store (0x01, DRE0)
                        }
                    }

                    If (And (M086, 0x8000))
                    {
                        If (And (M119, 0x01))
                        {
                            Store (0x01, DRE0)
                        }
                    }

                    If (LAnd (\DPP4, And (M078, 0x08)))
                    {
                        Store (0x01, DIP0)
                    }
                }
            }

            Method (_GTF, 0, NotSerialized)
            {
                If (DRE0)
                {
                    If (DIP0)
                    {
                        Return (HXTF)
                    }
                    Else
                    {
                        Return (ERTF)
                    }
                }

                If (DIP0)
                {
                    Return (HPTF)
                }

                Return (HDTF)
            }
        }

        Device (PRT5)
        {
            Name (DRE0, 0x00)
            Name (DIP0, 0x00)
            Name (HDTF, Buffer (0x0E)
            {
                /* 0000 */    0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00, 
                /* 0008 */    0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5
            })
            Name (ERTF, Buffer (0x15)
            {
                /* 0000 */    0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00, 
                /* 0008 */    0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x5F, 0x00, 
                /* 0010 */    0x00, 0x00, 0x00, 0xA0, 0xEF
            })
            Name (HPTF, Buffer (0x15)
            {
                /* 0000 */    0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00, 
                /* 0008 */    0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x10, 0x03, 
                /* 0010 */    0x00, 0x00, 0x00, 0xA0, 0xEF
            })
            Name (HXTF, Buffer (0x1C)
            {
                /* 0000 */    0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00, 
                /* 0008 */    0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x5F, 0x00, 
                /* 0010 */    0x00, 0x00, 0x00, 0xA0, 0xEF, 0x10, 0x03, 0x00, 
                /* 0018 */    0x00, 0x00, 0xA0, 0xEF
            })
            Name (DDTF, Buffer (0x0E)
            {
                /* 0000 */    0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x00, 
                /* 0008 */    0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3
            })
            CreateByteField (DDTF, 0x01, DTAT)
            CreateByteField (DDTF, 0x08, DTFT)
            Name (DGTF, Buffer (0x15)
            {
                /* 0000 */    0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x00, 
                /* 0008 */    0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x10, 0x03, 
                /* 0010 */    0x00, 0x00, 0x00, 0xA0, 0xEF
            })
            CreateByteField (DGTF, 0x01, GTAT)
            CreateByteField (DGTF, 0x08, GTFT)
            Name (_ADR, 0x0005FFFF)
            Method (_SDD, 1, NotSerialized)
            {
                Store (0x00, DRE0)
                Store (0x00, DIP0)
                If (LEqual (SizeOf (Arg0), 0x0200))
                {
                    CreateWordField (Arg0, 0x9C, M078)
                    CreateWordField (Arg0, 0xAC, M086)
                    CreateWordField (Arg0, 0xEE, M119)
                    CreateWordField (Arg0, 0x0128, M148)
                    If (LEqual (And (M148, 0xC000), 0x4000))
                    {
                        If (And (M148, 0x04))
                        {
                            Store (0x01, DRE0)
                        }
                    }

                    If (And (M086, 0x8000))
                    {
                        If (And (M119, 0x01))
                        {
                            Store (0x01, DRE0)
                        }
                    }

                    If (LAnd (\DPP5, And (M078, 0x08)))
                    {
                        Store (0x01, DIP0)
                    }
                }
            }

            Method (_GTF, 0, NotSerialized)
            {
                If (DRE0)
                {
                    If (DIP0)
                    {
                        Return (HXTF)
                    }
                    Else
                    {
                        Return (ERTF)
                    }
                }

                If (DIP0)
                {
                    Return (HPTF)
                }

                Return (HDTF)
            }
        }
    }
}

