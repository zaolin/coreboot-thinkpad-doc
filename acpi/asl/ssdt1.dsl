/*
 * Intel ACPI Component Architecture
 * AML Disassembler version 20130117-64 [Jan  6 2014]
 * Copyright (c) 2000 - 2013 Intel Corporation
 * 
 * Disassembly of ssdt1.dat, Mon Jan  6 05:08:49 2014
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000249 (585)
 *     Revision         0x01
 *     Checksum         0x1D
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "TP-SSDT2"
 *     OEM Revision     0x00000200 (512)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20061109 (537268489)
 */

DefinitionBlock ("ssdt1.aml", "SSDT", 1, "LENOVO", "TP-SSDT2", 0x00000200)
{
    External (_SB_.PCI0.LPC_.EC__.BRNS, MethodObj)    // 2 Arguments
    External (_SB_.PCI0.LPC_.EC__.BRTW, IntObj)
    External (_SB_.PCI0.PEG_.VID_.ISOP)
    External (_SB_.PCI0.PEG_.VID_.LCD0, DeviceObj)
    External (_SB_.PCI0.VID_.LCD0, DeviceObj)
    External (BRLV, IntObj)
    External (NBCF, IntObj)
    External (UCMS, MethodObj)    // 1 Arguments
    External (VBRC, MethodObj)    // 1 Arguments
    External (WIN7)
    External (WVIS, IntObj)

    Scope (\)
    {
        Method (KOU2, 0, NotSerialized)
        {
            Stall (0x64)
        }
    }

    Scope (\_SB.PCI0.VID.LCD0)
    {
        Method (_BCL, 0, NotSerialized)  // _BCL: Brightness Control Levels
        {
            Store (0x01, \NBCF)
            Return (\_SB.PCI0.LPC.EC.BRTW)
        }

        Method (_BCM, 1, NotSerialized)  // _BCM: Brightness Control Method
        {
            Store (Match (\_SB.PCI0.LPC.EC.BRTW, MEQ, Arg0, MTR, 0x00, 0x02), Local0)
            If (LNotEqual (Local0, Ones))
            {
                Subtract (Local0, 0x02, Local1)
                Store (Local1, \BRLV)
                \_SB.PCI0.LPC.EC.BRNS (\UCMS (0x16))
            }
        }

        Method (_BQC, 0, NotSerialized)  // _BQC: Brightness Query Current
        {
            Store (\BRLV, Local0)
            Add (Local0, 0x02, Local1)
            If (LLessEqual (Local1, 0x11))
            {
                Return (DerefOf (Index (\_SB.PCI0.LPC.EC.BRTW, Local1)))
            }
            Else
            {
                Return (Zero)
            }
        }
    }

    Scope (\_SB.PCI0.PEG.VID.LCD0)
    {
        Method (_BCL, 0, NotSerialized)  // _BCL: Brightness Control Levels
        {
            If (\WVIS)
            {
                Store (0x01, \NBCF)
            }

            Return (\_SB.PCI0.LPC.EC.BRTW)
        }

        Method (_BCM, 1, NotSerialized)  // _BCM: Brightness Control Method
        {
            If (LAnd (LNotEqual (\WIN7, 0x00), \_SB.PCI0.PEG.VID.ISOP))
            {
                \_SB.PCI0.VID.LCD0._BCM (Arg0)
            }
            Else
            {
                If (\NBCF)
                {
                    Store (Match (\_SB.PCI0.LPC.EC.BRTW, MEQ, Arg0, MTR, 0x00, 0x02), Local0)
                    If (LNotEqual (Local0, Ones))
                    {
                        Subtract (Local0, 0x02, Local1)
                        \VBRC (Local1)
                        Store (Local1, \BRLV)
                    }
                }
            }
        }

        Method (_BQC, 0, NotSerialized)  // _BQC: Brightness Query Current
        {
            If (LAnd (LNotEqual (\WIN7, 0x00), \_SB.PCI0.PEG.VID.ISOP))
            {
                Return (\_SB.PCI0.VID.LCD0._BQC ())
            }
            Else
            {
                Store (\BRLV, Local0)
                Add (Local0, 0x02, Local1)
                If (LLessEqual (Local1, 0x11))
                {
                    Return (DerefOf (Index (\_SB.PCI0.LPC.EC.BRTW, Local1)))
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }
}

