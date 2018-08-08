/*
 * Intel ACPI Component Architecture
 * AML Disassembler version 20100528
 *
 * Disassembly of SSDT5.dat, Thu Jan 12 17:31:21 2012
 *
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000049F (1183)
 *     Revision         0x01
 *     Checksum         0xEB
 *     OEM ID           "PmRef"
 *     OEM Table ID     "ApTst"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20060912 (537266450)
 */
DefinitionBlock ("SSDT5.aml", "SSDT", 1, "PmRef", "ApTst", 0x00003000)
{
    External (PDC0)
    External (CFGD)
    External (\_PR_.CPU7, DeviceObj)
    External (\_PR_.CPU6, DeviceObj)
    External (\_PR_.CPU5, DeviceObj)
    External (\_PR_.CPU4, DeviceObj)
    External (\_PR_.CPU3, DeviceObj)
    External (\_PR_.CPU2, DeviceObj)
    External (\_PR_.CPU1, DeviceObj)
    External (\_PR_.CPU0._TSS, IntObj)
    External (\_PR_.CPU0._PTC, IntObj)

    Scope (\_PR.CPU1)
    {
        Name (_TPC, Zero)
        Method (_PTC, 0, NotSerialized)
        {
            Return (\_PR.CPU0._PTC)
        }

        Method (_TSS, 0, NotSerialized)
        {
            Return (\_PR.CPU0._TSS)
        }

        Method (_TSD, 0, NotSerialized)
        {
            If (LAnd (And (CFGD, 0x00800000), LNot (And (PDC0, 0x04
                ))))
            {
                Return (Package (0x01)
                {
                    Package (0x05)
                    {
                        0x05, 
                        Zero, 
                        Zero, 
                        0xFD, 
                        0x04
                    }
                })
            }

            If (LAnd (And (CFGD, 0x01000000), LNot (And (PDC0, 0x04
                ))))
            {
                Return (Package (0x01)
                {
                    Package (0x05)
                    {
                        0x05, 
                        Zero, 
                        Zero, 
                        0xFD, 
                        0x02
                    }
                })
            }

            Return (Package (0x01)
            {
                Package (0x05)
                {
                    0x05, 
                    Zero, 
                    One, 
                    0xFC, 
                    One
                }
            })
        }
    }

    Scope (\_PR.CPU2)
    {
        Name (_TPC, Zero)
        Method (_PTC, 0, NotSerialized)
        {
            Return (\_PR.CPU0._PTC)
        }

        Method (_TSS, 0, NotSerialized)
        {
            Return (\_PR.CPU0._TSS)
        }

        Method (_TSD, 0, NotSerialized)
        {
            If (LAnd (And (CFGD, 0x00800000), LNot (And (PDC0, 0x04
                ))))
            {
                Return (Package (0x01)
                {
                    Package (0x05)
                    {
                        0x05, 
                        Zero, 
                        Zero, 
                        0xFD, 
                        0x04
                    }
                })
            }

            If (LAnd (And (CFGD, 0x01000000), LNot (And (PDC0, 0x04
                ))))
            {
                Return (Package (0x01)
                {
                    Package (0x05)
                    {
                        0x05, 
                        Zero, 
                        Zero, 
                        0xFD, 
                        0x02
                    }
                })
            }

            Return (Package (0x01)
            {
                Package (0x05)
                {
                    0x05, 
                    Zero, 
                    0x02, 
                    0xFC, 
                    One
                }
            })
        }
    }

    Scope (\_PR.CPU3)
    {
        Name (_TPC, Zero)
        Method (_PTC, 0, NotSerialized)
        {
            Return (\_PR.CPU0._PTC)
        }

        Method (_TSS, 0, NotSerialized)
        {
            Return (\_PR.CPU0._TSS)
        }

        Method (_TSD, 0, NotSerialized)
        {
            If (LAnd (And (CFGD, 0x00800000), LNot (And (PDC0, 0x04
                ))))
            {
                Return (Package (0x01)
                {
                    Package (0x05)
                    {
                        0x05, 
                        Zero, 
                        Zero, 
                        0xFD, 
                        0x04
                    }
                })
            }

            If (LAnd (And (CFGD, 0x01000000), LNot (And (PDC0, 0x04
                ))))
            {
                Return (Package (0x01)
                {
                    Package (0x05)
                    {
                        0x05, 
                        Zero, 
                        Zero, 
                        0xFD, 
                        0x02
                    }
                })
            }

            Return (Package (0x01)
            {
                Package (0x05)
                {
                    0x05, 
                    Zero, 
                    0x03, 
                    0xFC, 
                    One
                }
            })
        }
    }

    Scope (\_PR.CPU4)
    {
        Name (_TPC, Zero)
        Method (_PTC, 0, NotSerialized)
        {
            Return (\_PR.CPU0._PTC)
        }

        Method (_TSS, 0, NotSerialized)
        {
            Return (\_PR.CPU0._TSS)
        }

        Method (_TSD, 0, NotSerialized)
        {
            If (LAnd (And (CFGD, 0x00800000), LNot (And (PDC0, 0x04
                ))))
            {
                Return (Package (0x01)
                {
                    Package (0x05)
                    {
                        0x05, 
                        Zero, 
                        Zero, 
                        0xFD, 
                        0x04
                    }
                })
            }

            If (LAnd (And (CFGD, 0x01000000), LNot (And (PDC0, 0x04
                ))))
            {
                Return (Package (0x01)
                {
                    Package (0x05)
                    {
                        0x05, 
                        Zero, 
                        Zero, 
                        0xFD, 
                        0x02
                    }
                })
            }

            Return (Package (0x01)
            {
                Package (0x05)
                {
                    0x05, 
                    Zero, 
                    0x03, 
                    0xFC, 
                    One
                }
            })
        }
    }

    Scope (\_PR.CPU5)
    {
        Name (_TPC, Zero)
        Method (_PTC, 0, NotSerialized)
        {
            Return (\_PR.CPU0._PTC)
        }

        Method (_TSS, 0, NotSerialized)
        {
            Return (\_PR.CPU0._TSS)
        }

        Method (_TSD, 0, NotSerialized)
        {
            If (LAnd (And (CFGD, 0x00800000), LNot (And (PDC0, 0x04
                ))))
            {
                Return (Package (0x01)
                {
                    Package (0x05)
                    {
                        0x05, 
                        Zero, 
                        Zero, 
                        0xFD, 
                        0x04
                    }
                })
            }

            If (LAnd (And (CFGD, 0x01000000), LNot (And (PDC0, 0x04
                ))))
            {
                Return (Package (0x01)
                {
                    Package (0x05)
                    {
                        0x05, 
                        Zero, 
                        Zero, 
                        0xFD, 
                        0x02
                    }
                })
            }

            Return (Package (0x01)
            {
                Package (0x05)
                {
                    0x05, 
                    Zero, 
                    0x03, 
                    0xFC, 
                    One
                }
            })
        }
    }

    Scope (\_PR.CPU6)
    {
        Name (_TPC, Zero)
        Method (_PTC, 0, NotSerialized)
        {
            Return (\_PR.CPU0._PTC)
        }

        Method (_TSS, 0, NotSerialized)
        {
            Return (\_PR.CPU0._TSS)
        }

        Method (_TSD, 0, NotSerialized)
        {
            If (LAnd (And (CFGD, 0x00800000), LNot (And (PDC0, 0x04
                ))))
            {
                Return (Package (0x01)
                {
                    Package (0x05)
                    {
                        0x05, 
                        Zero, 
                        Zero, 
                        0xFD, 
                        0x04
                    }
                })
            }

            If (LAnd (And (CFGD, 0x01000000), LNot (And (PDC0, 0x04
                ))))
            {
                Return (Package (0x01)
                {
                    Package (0x05)
                    {
                        0x05, 
                        Zero, 
                        Zero, 
                        0xFD, 
                        0x02
                    }
                })
            }

            Return (Package (0x01)
            {
                Package (0x05)
                {
                    0x05, 
                    Zero, 
                    0x03, 
                    0xFC, 
                    One
                }
            })
        }
    }

    Scope (\_PR.CPU7)
    {
        Name (_TPC, Zero)
        Method (_PTC, 0, NotSerialized)
        {
            Return (\_PR.CPU0._PTC)
        }

        Method (_TSS, 0, NotSerialized)
        {
            Return (\_PR.CPU0._TSS)
        }

        Method (_TSD, 0, NotSerialized)
        {
            If (LAnd (And (CFGD, 0x00800000), LNot (And (PDC0, 0x04
                ))))
            {
                Return (Package (0x01)
                {
                    Package (0x05)
                    {
                        0x05, 
                        Zero, 
                        Zero, 
                        0xFD, 
                        0x04
                    }
                })
            }

            If (LAnd (And (CFGD, 0x01000000), LNot (And (PDC0, 0x04
                ))))
            {
                Return (Package (0x01)
                {
                    Package (0x05)
                    {
                        0x05, 
                        Zero, 
                        Zero, 
                        0xFD, 
                        0x02
                    }
                })
            }

            Return (Package (0x01)
            {
                Package (0x05)
                {
                    0x05, 
                    Zero, 
                    0x03, 
                    0xFC, 
                    One
                }
            })
        }
    }
}

