/*
 * Intel ACPI Component Architecture
 * AML Disassembler version 20100528
 *
 * Disassembly of SSDT4.dat, Thu Jan 12 17:31:21 2012
 *
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000259 (601)
 *     Revision         0x01
 *     Checksum         0x46
 *     OEM ID           "PmRef"
 *     OEM Table ID     "Cpu0Tst"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20060912 (537266450)
 */
DefinitionBlock ("SSDT4.aml", "SSDT", 1, "PmRef", "Cpu0Tst", 0x00003000)
{
    External (CFGD)
    External (_PSS, IntObj)
    External (PDC0)
    External (\_PR_.CPU0, DeviceObj)

    Scope (\_PR.CPU0)
    {
        Name (_TPC, Zero)
        Method (_PTC, 0, NotSerialized)
        {
            If (And (PDC0, 0x04))
            {
                Return (Package (0x02)
                {
                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }, 

                    ResourceTemplate ()
                    {
                        Register (FFixedHW, 
                            0x00,               // Bit Width
                            0x00,               // Bit Offset
                            0x0000000000000000, // Address
                            ,)
                    }
                })
            }

            Return (Package (0x02)
            {
                ResourceTemplate ()
                {
                    Register (SystemIO, 
                        0x04,               // Bit Width
                        0x01,               // Bit Offset
                        0x0000000000000410, // Address
                        ,)
                }, 

                ResourceTemplate ()
                {
                    Register (SystemIO, 
                        0x04,               // Bit Width
                        0x01,               // Bit Offset
                        0x0000000000000410, // Address
                        ,)
                }
            })
        }

        Name (TSSI, Package (0x08)
        {
            Package (0x05)
            {
                0x64, 
                0x03E8, 
                Zero, 
                Zero, 
                Zero
            }, 

            Package (0x05)
            {
                0x58, 
                0x036B, 
                Zero, 
                0x0F, 
                Zero
            }, 

            Package (0x05)
            {
                0x4B, 
                0x02EE, 
                Zero, 
                0x0E, 
                Zero
            }, 

            Package (0x05)
            {
                0x3F, 
                0x0271, 
                Zero, 
                0x0D, 
                Zero
            }, 

            Package (0x05)
            {
                0x32, 
                0x01F4, 
                Zero, 
                0x0C, 
                Zero
            }, 

            Package (0x05)
            {
                0x26, 
                0x0177, 
                Zero, 
                0x0B, 
                Zero
            }, 

            Package (0x05)
            {
                0x19, 
                0xFA, 
                Zero, 
                0x0A, 
                Zero
            }, 

            Package (0x05)
            {
                0x0D, 
                0x7D, 
                Zero, 
                0x09, 
                Zero
            }
        })
        Name (TSSM, Package (0x08)
        {
            Package (0x05)
            {
                0x64, 
                0x03E8, 
                Zero, 
                Zero, 
                Zero
            }, 

            Package (0x05)
            {
                0x58, 
                0x036B, 
                Zero, 
                0x1E, 
                Zero
            }, 

            Package (0x05)
            {
                0x4B, 
                0x02EE, 
                Zero, 
                0x1C, 
                Zero
            }, 

            Package (0x05)
            {
                0x3F, 
                0x0271, 
                Zero, 
                0x1A, 
                Zero
            }, 

            Package (0x05)
            {
                0x32, 
                0x01F4, 
                Zero, 
                0x18, 
                Zero
            }, 

            Package (0x05)
            {
                0x26, 
                0x0177, 
                Zero, 
                0x16, 
                Zero
            }, 

            Package (0x05)
            {
                0x19, 
                0xFA, 
                Zero, 
                0x14, 
                Zero
            }, 

            Package (0x05)
            {
                0x0D, 
                0x7D, 
                Zero, 
                0x12, 
                Zero
            }
        })
        Name (TSSF, Zero)
        Method (_TSS, 0, NotSerialized)
        {
            If (LAnd (LNot (TSSF), CondRefOf (_PSS)))
            {
                Store (_PSS, Local0)
                Store (SizeOf (Local0), Local1)
                Decrement (Local1)
                Store (DerefOf (Index (DerefOf (Index (Local0, Local1)), One)), 
                    Local2)
                Store (Zero, Local3)
                While (LLess (Local3, SizeOf (TSSI)))
                {
                    Store (Divide (Multiply (Local2, Subtract (0x08, Local3)), 0x08, 
                        ), Local4)
                    Store (Local4, Index (DerefOf (Index (TSSI, Local3)), One))
                    Store (Local4, Index (DerefOf (Index (TSSM, Local3)), One))
                    Increment (Local3)
                }

                Store (Ones, TSSF)
            }

            If (And (PDC0, 0x04))
            {
                Return (TSSM)
            }

            Return (TSSI)
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
                    Zero, 
                    0xFC, 
                    One
                }
            })
        }
    }
}

