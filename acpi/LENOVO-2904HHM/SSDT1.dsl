/*
 * Intel ACPI Component Architecture
 * AML Disassembler version 20100528
 *
 * Disassembly of SSDT1.dat, Thu Jan 12 17:31:21 2012
 *
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000021D (541)
 *     Revision         0x01
 *     Checksum         0x61
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "TP-6U   "
 *     OEM Revision     0x00001340 (4928)
 *     Compiler ID      "MSFT"
 *     Compiler Version 0x03000001 (50331649)
 */
DefinitionBlock ("SSDT1.aml", "SSDT", 1, "LENOVO", "TP-6U   ", 0x00001340)
{
    External (\VBRG, IntObj)
    External (\VBRC, MethodObj)    // 1 Arguments
    External (\VHYB)
    External (\WVIS)
    External (\UCMS, MethodObj)    // 1 Arguments
    External (\BRLV, IntObj)
    External (\NBCF)
    External (\_SB_.PCI0.VID_.LCD0, DeviceObj)
    External (\_SB_.PCI0.LPC_.EC__.BRNS, MethodObj)    // 2 Arguments
    External (\_SB_.PCI0.LPC_.EC__.BRTW, IntObj)
    External (\_SB_.PCI0.PEG_.VID_.LCD0, DeviceObj)

    Scope (\)
    {
        Method (KOU2, 0, NotSerialized)
        {
            Stall (0x64)
        }
    }

    Scope (\_SB.PCI0.VID.LCD0)
    {
        Method (_BCL, 0, NotSerialized)
        {
            Store (0x01, \NBCF)
            Return (\_SB.PCI0.LPC.EC.BRTW)
        }

        Method (_BCM, 1, NotSerialized)
        {
            Store (Match (\_SB.PCI0.LPC.EC.BRTW, MEQ, Arg0, MTR, 0x00, 0x02), Local0)
            If (LNotEqual (Local0, Ones))
            {
                Subtract (Local0, 0x02, Local1)
                Store (Local1, \BRLV)
                \_SB.PCI0.LPC.EC.BRNS (\UCMS (0x16))
            }
        }

        Method (_BQC, 0, NotSerialized)
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
        Method (_BCL, 0, NotSerialized)
        {
            Store (0x01, \NBCF)
            Return (\_SB.PCI0.LPC.EC.BRTW)
        }

        Method (_BCM, 1, NotSerialized)
        {
            If (LAnd (LNotEqual (\WVIS, 0x00), LEqual (\VHYB, 0x03)))
            {
                0x00
                0x03
                \_SB.PCI0.VID.LCD0._BCM (Arg0)
            }
            Else
            {
                Store (Match (\_SB.PCI0.LPC.EC.BRTW, MEQ, Arg0, MTR, 0x00, 0x02), Local0)
                If (LNotEqual (Local0, Ones))
                {
                    Subtract (Local0, 0x02, Local1)
                    \VBRC (Local1)
                }
            }
        }

        Method (_BQC, 0, NotSerialized)
        {
            If (LAnd (LNotEqual (\WVIS, 0x00), LEqual (\VHYB, 0x03)))
            {
                0x00
                0x03
                Return (\_SB.PCI0.VID.LCD0._BQC ())
            }
            Else
            {
                Store (\VBRG, Local0)
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

