ACPI Warning: NsLookup: Type mismatch on BFWB (RegionField), searching for (Buffer) (20100528/nsaccess-731)
ACPI Warning: NsLookup: Type mismatch on BFWB (RegionField), searching for (Buffer) (20100528/nsaccess-731)
/*
 * Intel ACPI Component Architecture
 * AML Disassembler version 20100528
 *
 * Disassembly of DSDT.dat, Thu Jan 12 17:31:21 2012
 *
 *
 * Original Table Header:
 *     Signature        "DSDT"
 *     Length           0x0000F36C (62316)
 *     Revision         0x01 **** ACPI 1.0, no 64-bit math support
 *     Checksum         0x80
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "TP-6U   "
 *     OEM Revision     0x00001340 (4928)
 *     Compiler ID      "MSFT"
 *     Compiler Version 0x03000001 (50331649)
 */
DefinitionBlock ("DSDT.aml", "DSDT", 1, "LENOVO", "TP-6U   ", 0x00001340)
{
    External (SSBY)
    External (PDC7)
    External (PDC6)
    External (PDC5)
    External (PDC4)
    External (PDC3)
    External (PDC2)
    External (PDC1)
    External (PDC0)
    External (\_SB_.PCI0.SAT1.PRT1)
    External (\_SB_.PCI0.SAT1.SCND.MSTR)
    External (\_SB_.PCI0.SAT1.SCND.GTME)
    External (\_SB_.PCI0.SAT1.PRIM.GTME)

    Scope (\_PR)
    {
        Processor (CPU0, 0x00, 0x00001010, 0x06) {}
        Processor (CPU1, 0x01, 0x00001010, 0x06) {}
        Processor (CPU2, 0x02, 0x00001010, 0x06) {}
        Processor (CPU3, 0x03, 0x00001010, 0x06) {}
        Processor (CPU4, 0x04, 0x00001010, 0x06) {}
        Processor (CPU5, 0x05, 0x00001010, 0x06) {}
        Processor (CPU6, 0x06, 0x00001010, 0x06) {}
        Processor (CPU7, 0x07, 0x00001010, 0x06) {}
    }

    Scope (\)
    {
        Method (PNTF, 1, NotSerialized)
        {
            If (And (\PPMF, 0x01000000))
            {
                If (LOr (LAnd (And (PDC0, 0x08), LOr (LEqual (Arg0, 
                    0x80), LEqual (Arg0, 0x82))), LAnd (And (PDC0, 0x10), LEqual (Arg0, 
                    0x81))))
                {
                    Notify (\_PR.CPU0, Arg0)
                }

                If (LOr (LAnd (And (PDC1, 0x08), LOr (LEqual (Arg0, 
                    0x80), LEqual (Arg0, 0x82))), LAnd (And (PDC1, 0x10), LEqual (Arg0, 
                    0x81))))
                {
                    Notify (\_PR.CPU1, Arg0)
                }

                If (LOr (LAnd (And (PDC2, 0x08), LOr (LEqual (Arg0, 
                    0x80), LEqual (Arg0, 0x82))), LAnd (And (PDC2, 0x10), LEqual (Arg0, 
                    0x81))))
                {
                    Notify (\_PR.CPU2, Arg0)
                }

                If (LOr (LAnd (And (PDC3, 0x08), LOr (LEqual (Arg0, 
                    0x80), LEqual (Arg0, 0x82))), LAnd (And (PDC3, 0x10), LEqual (Arg0, 
                    0x81))))
                {
                    Notify (\_PR.CPU3, Arg0)
                }

                If (LOr (LAnd (And (PDC4, 0x08), LOr (LEqual (Arg0, 
                    0x80), LEqual (Arg0, 0x82))), LAnd (And (PDC4, 0x10), LEqual (Arg0, 
                    0x81))))
                {
                    Notify (\_PR.CPU4, Arg0)
                }

                If (LOr (LAnd (And (PDC5, 0x08), LOr (LEqual (Arg0, 
                    0x80), LEqual (Arg0, 0x82))), LAnd (And (PDC5, 0x10), LEqual (Arg0, 
                    0x81))))
                {
                    Notify (\_PR.CPU5, Arg0)
                }

                If (LOr (LAnd (And (PDC6, 0x08), LOr (LEqual (Arg0, 
                    0x80), LEqual (Arg0, 0x82))), LAnd (And (PDC6, 0x10), LEqual (Arg0, 
                    0x81))))
                {
                    Notify (\_PR.CPU6, Arg0)
                }

                If (LOr (LAnd (And (PDC7, 0x08), LOr (LEqual (Arg0, 
                    0x80), LEqual (Arg0, 0x82))), LAnd (And (PDC7, 0x10), LEqual (Arg0, 
                    0x81))))
                {
                    Notify (\_PR.CPU7, Arg0)
                }
            }
            Else
            {
                If (LOr (LEqual (Arg0, 0x80), LOr (LEqual (Arg0, 0x81), LEqual (
                    Arg0, 0x82))))
                {
                    Notify (\_PR.CPU0, Arg0)
                }
            }
        }
    }

    OperationRegion (MNVS, SystemMemory, 0xBB6E7000, 0x1000)
    Field (MNVS, DWordAcc, NoLock, Preserve)
    {
                Offset (0xE00), 
        GAPA,   32, 
        GAPL,   32, 
        DCKI,   32, 
        DCKS,   32, 
        VCDL,   1, 
        VCDC,   1, 
        VCDT,   1, 
        VCDD,   1, 
        VIGD,   1, 
        VCSS,   1, 
        VCDB,   1, 
        VCIN,   1, 
        VPDF,   1, 
                Offset (0xE12), 
        VLID,   4, 
        VVPO,   4, 
        BRLV,   4, 
        BRFQ,   2, 
        BRHB,   1, 
        BREV,   1, 
        CDFL,   8, 
        CDAH,   8, 
        PMOD,   2, 
        PDIR,   1, 
        PDMA,   1, 
                Offset (0xE17), 
        LFDC,   1, 
                Offset (0xE18), 
        C2NA,   1, 
        C3NA,   1, 
        C4NA,   1, 
        C6NA,   1, 
        C7NA,   1, 
                Offset (0xE19), 
                Offset (0xE1A), 
            ,   2, 
            ,   1, 
        NHPS,   1, 
        NPME,   1, 
                Offset (0xE1B), 
        UOPT,   8, 
        BTID,   32, 
        DPP0,   1, 
        DPP1,   1, 
        DPP2,   1, 
        DPP3,   1, 
        DPP4,   1, 
        DPP5,   1, 
                Offset (0xE21), 
                Offset (0xE22), 
        TCRT,   16, 
        TPSV,   16, 
        TTC1,   16, 
        TTC2,   16, 
        TTSP,   16, 
        SRAH,   8, 
        SRHE,   8, 
        SRE1,   8, 
        SRE2,   8, 
        SRE3,   8, 
        SRE4,   8, 
        SRE5,   8, 
        SRE6,   8, 
        SRU1,   8, 
        SRU2,   8, 
        SRU3,   8, 
        SRU7,   8, 
        SRU4,   8, 
        SRU5,   8, 
        SRU8,   8, 
        SRPB,   8, 
        SRLP,   8, 
        SRSA,   8, 
        SRSM,   8, 
        CWAC,   1, 
        CWAS,   1, 
        CWUE,   1, 
        CWUS,   1, 
                Offset (0xE40), 
        CWAP,   16, 
        CWAT,   16, 
        DBGC,   1, 
                Offset (0xE45), 
        FS1L,   16, 
        FS1M,   16, 
        FS1H,   16, 
        FS2L,   16, 
        FS2M,   16, 
        FS2H,   16, 
        FS3L,   16, 
        FS3M,   16, 
        FS3H,   16, 
        TATC,   1, 
            ,   6, 
        TATL,   1, 
        TATW,   8, 
        TNFT,   4, 
        TNTT,   4, 
        TDFA,   4, 
        TDTA,   4, 
        TDFD,   4, 
        TDTD,   4, 
        TCFA,   4, 
        TCTA,   4, 
        TCFD,   4, 
        TCTD,   4, 
        TSFT,   4, 
        TSTT,   4, 
        TIT0,   8, 
        TCR0,   16, 
        TPS0,   16, 
        TIT1,   8, 
        TCR1,   16, 
        TPS1,   16, 
        TIT2,   8, 
        TCR2,   16, 
        TPS2,   16, 
        TIF0,   8, 
        TIF1,   8, 
        TIF2,   8, 
                Offset (0xE75), 
        TCZ1,   8, 
        TCZ2,   8, 
        TCZ3,   8, 
        BTHI,   1, 
                Offset (0xE79), 
        HDIR,   1, 
        HDEH,   1, 
        HDSP,   1, 
        HDPP,   1, 
        HDUB,   1, 
        HDMC,   1, 
                Offset (0xE7A), 
        TPMP,   1, 
        TPMS,   1, 
                Offset (0xE7B), 
        BIDE,   4, 
        IDET,   4, 
            ,   1, 
        DTSE,   1, 
                Offset (0xE7D), 
        DTS0,   8, 
        DTS1,   8, 
        DT00,   1, 
        DT01,   1, 
        DT02,   1, 
        DT03,   1, 
                Offset (0xE80), 
        LIDB,   1, 
        C4WR,   1, 
        C4AC,   1, 
        ODDX,   1, 
        CMPR,   1, 
                Offset (0xE81), 
        PH01,   8, 
        PH02,   8, 
        PH03,   8, 
        PPRQ,   8, 
        PPLO,   8, 
        PPRP,   8, 
        PPOR,   8, 
        TPRS,   8, 
        TPMV,   8, 
        MOR,    8, 
        RSV0,   8, 
        IPAT,   4, 
        IPSC,   1, 
        IDMM,   1, 
        IDMS,   2, 
        HVCO,   3, 
        IF1E,   1, 
        ISSC,   1, 
        LIDS,   1, 
        IBIA,   2, 
        IBTT,   8, 
        ITVF,   4, 
        ITVM,   4, 
        TCG0,   1, 
        TCG1,   1, 
                Offset (0xE91), 
        SWGP,   8, 
        IPMS,   8, 
        IPMB,   120, 
        IPMR,   24, 
        IPMO,   24, 
        IPMA,   8, 
                Offset (0xEAD), 
        ASFT,   8, 
                Offset (0xEB0), 
        CHKC,   32, 
        CHKE,   32, 
        ATRB,   32, 
                Offset (0xEBD), 
        PPCR,   8, 
        TPCR,   5, 
                Offset (0xEBF), 
        ATMB,   128, 
        PPCA,   8, 
        TPCA,   5, 
                Offset (0xED1), 
        BFWB,   296
    }

    Field (MNVS, ByteAcc, NoLock, Preserve)
    {
                Offset (0xC00), 
        WITM,   8, 
        WSEL,   8, 
        WLS0,   8, 
        WLS1,   8, 
        WLS2,   8, 
        WLS3,   8, 
        WLS4,   8, 
        WLS5,   8, 
        WLS6,   8, 
        WLS7,   8, 
        WENC,   8, 
        WKBD,   8, 
        WPTY,   8, 
        WPAS,   1032, 
        WPNW,   1032, 
        WSPM,   8, 
        WSPS,   8, 
        WSMN,   8, 
        WSMX,   8, 
        WSEN,   8, 
        WSKB,   8
    }

    Field (MNVS, ByteAcc, NoLock, Preserve)
    {
                Offset (0xB00), 
        DBGS,   1024
    }

    OperationRegion (GNVS, SystemMemory, 0xBB6B55F2, 0x0200)
    Field (GNVS, AnyAcc, Lock, Preserve)
    {
        OSYS,   16, 
        SMIF,   8, 
        PRM0,   8, 
        PRM1,   8, 
                Offset (0x10), 
        PWRS,   8, 
                Offset (0x1E), 
                Offset (0x28), 
        APIC,   8, 
        MPEN,   8, 
        PCP0,   8, 
        PCP1,   8, 
        PPCM,   8, 
        PPMF,   32, 
                Offset (0x32), 
                Offset (0x3C), 
        IGDS,   8, 
        TLST,   8, 
        CADL,   8, 
        PADL,   8, 
        CSTE,   16, 
        NSTE,   16, 
        SSTE,   16, 
        NDID,   8, 
        DID1,   32, 
        DID2,   32, 
        DID3,   32, 
        DID4,   32, 
        DID5,   32, 
        KSV0,   32, 
        KSV1,   8, 
        BDSP,   8, 
        PTY1,   8, 
        PTY2,   8, 
        PSCL,   8, 
        TVF1,   8, 
        TVF2,   8, 
        GETM,   8, 
        BLCS,   8, 
        BRTL,   8, 
        ALSE,   8, 
        ALAF,   8, 
        LLOW,   8, 
        LHIH,   8, 
                Offset (0xAA), 
        ASLB,   32, 
                Offset (0xDF), 
        PAVP,   8, 
                Offset (0x15B), 
        PNHM,   32, 
        TBAB,   32, 
                Offset (0x180), 
        BUSH,   16, 
        BUSM,   16, 
        BUSL,   16, 
        HIST,   32, 
        LPST,   32, 
        LWST,   32, 
        FREH,   32, 
        FREL,   32, 
        SVST,   32, 
        GVEN,   8, 
        GVAC,   8, 
        GVDC,   8, 
        STCL,   8, 
        APCL,   8, 
        OSPX,   1, 
        OSC4,   1, 
                Offset (0x1A4), 
        SPEN,   1, 
            ,   1, 
            ,   1, 
            ,   1, 
                Offset (0x1A5), 
        FTPS,   8, 
        IPEN,   1
    }

    Scope (\_SB)
    {
        Method (_INI, 0, NotSerialized)
        {
            If (CondRefOf (\_OSI, Local0))
            {
                If (\_OSI ("Windows 2001"))
                {
                    Store (0x01, \WNTF)
                    Store (0x01, \WXPF)
                    Store (0x00, \WSPV)
                }

                If (\_OSI ("Windows 2001 SP1"))
                {
                    Store (0x01, \WSPV)
                }

                If (\_OSI ("Windows 2001 SP2"))
                {
                    Store (0x02, \WSPV)
                }

                If (\_OSI ("Windows 2006"))
                {
                    Store (0x01, \WVIS)
                }

                If (\_OSI ("Windows 2009"))
                {
                    Store (0x01, \WIN7)
                }

                If (\_OSI ("Linux"))
                {
                    Store (0x01, \LNUX)
                }

                If (\_OSI ("FreeBSD"))
                {
                    Store (0x01, \LNUX)
                }
            }
            Else
            {
                If (LEqual (\SCMP (\_OS, "Microsoft Windows NT"), Zero))
                {
                    Store (0x01, \WNTF)
                }
            }

            If (LGreaterEqual (\_REV, 0x02))
            {
                Store (0x01, \H8DR)
            }

            Store (0x01, \OSIF)
            Store (\_SB.PCI0.LPC.EC.AC._PSR (), \PWRS)
            \_SB.PCI0.LPC.MOU.MHID ()
            If (\LNUX)
            {
                \_SB.PCI0.LPC.EC.SAUM (0x02)
                \UCMS (0x1C)
            }

            Store (\SRAH, \_SB.PCI0.RID)
            If (VIGD)
            {
                Store (\SRHE, \_SB.PCI0.VID.RID)
            }
            Else
            {
                Store (\SRHE, \_SB.PCI0.PEG.RID)
            }

            Store (\SRE1, \_SB.PCI0.EXP1.RID)
            Store (\SRE2, \_SB.PCI0.EXP2.RID)
            Store (\SRE3, \_SB.PCI0.EXP3.RID)
            Store (\SRE4, \_SB.PCI0.EXP4.RID)
            Store (\SRU7, \_SB.PCI0.EHC1.RID)
            Store (\SRU8, \_SB.PCI0.EHC2.RID)
            Store (\SRLP, \_SB.PCI0.LPC.RID)
            Store (\SRSA, \_SB.PCI0.SAT1.RID)
            Store (\SRSM, \_SB.PCI0.SMBU.RID)
            Store (\VHYB (0x05, 0x00), Local1)
            If (And (Local1, 0x80))
            {
                If (\WIN7)
                {
                    If (LNotEqual (And (Local1, 0x03), 0x03))
                    {
                        \VHYB (0x06, 0x03)
                    }
                }
                Else
                {
                    If (LEqual (And (Local1, 0x03), 0x03))
                    {
                        \VHYB (0x06, 0x02)
                    }
                }
            }
        }

        Device (LNKA)
        {
            Name (_HID, EisaId ("PNP0C0F"))
            Name (_UID, 0x01)
            Method (_STA, 0, NotSerialized)
            {
                If (LNot (VPIR (\_SB.PCI0.LPC.PIRA)))
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Name (_PRS, ResourceTemplate ()
            {
                IRQ (Level, ActiveLow, Shared, )
                    {3,4,5,6,7,9,10,11}
            })
            Method (_DIS, 0, NotSerialized)
            {
                Or (\_SB.PCI0.LPC.PIRA, 0x80, \_SB.PCI0.LPC.PIRA)
            }

            Name (BUFA, ResourceTemplate ()
            {
                IRQ (Level, ActiveLow, Shared, _Y00)
                    {}
            })
            CreateWordField (BUFA, \_SB.LNKA._Y00._INT, IRA1)
            Method (_CRS, 0, NotSerialized)
            {
                And (\_SB.PCI0.LPC.PIRA, 0x8F, Local0)
                If (VPIR (Local0))
                {
                    ShiftLeft (0x01, Local0, IRA1)
                }
                Else
                {
                    Store (0x00, IRA1)
                }

                Return (BUFA)
            }

            Method (_SRS, 1, NotSerialized)
            {
                CreateWordField (Arg0, 0x01, IRA2)
                FindSetRightBit (IRA2, Local0)
                And (\_SB.PCI0.LPC.PIRA, 0x70, Local1)
                Or (Local1, Decrement (Local0), Local1)
                Store (Local1, \_SB.PCI0.LPC.PIRA)
            }
        }

        Device (LNKB)
        {
            Name (_HID, EisaId ("PNP0C0F"))
            Name (_UID, 0x02)
            Method (_STA, 0, NotSerialized)
            {
                If (LNot (VPIR (\_SB.PCI0.LPC.PIRB)))
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Name (_PRS, ResourceTemplate ()
            {
                IRQ (Level, ActiveLow, Shared, )
                    {3,4,5,6,7,9,10,11}
            })
            Method (_DIS, 0, NotSerialized)
            {
                Or (\_SB.PCI0.LPC.PIRB, 0x80, \_SB.PCI0.LPC.PIRB)
            }

            Name (BUFB, ResourceTemplate ()
            {
                IRQ (Level, ActiveLow, Shared, _Y01)
                    {}
            })
            CreateWordField (BUFB, \_SB.LNKB._Y01._INT, IRB1)
            Method (_CRS, 0, NotSerialized)
            {
                And (\_SB.PCI0.LPC.PIRB, 0x8F, Local0)
                If (VPIR (Local0))
                {
                    ShiftLeft (0x01, Local0, IRB1)
                }
                Else
                {
                    Store (0x00, IRB1)
                }

                Return (BUFB)
            }

            Method (_SRS, 1, NotSerialized)
            {
                CreateWordField (Arg0, 0x01, IRB2)
                FindSetRightBit (IRB2, Local0)
                And (\_SB.PCI0.LPC.PIRB, 0x70, Local1)
                Or (Local1, Decrement (Local0), Local1)
                Store (Local1, \_SB.PCI0.LPC.PIRB)
            }
        }

        Device (LNKC)
        {
            Name (_HID, EisaId ("PNP0C0F"))
            Name (_UID, 0x03)
            Method (_STA, 0, NotSerialized)
            {
                If (LNot (VPIR (\_SB.PCI0.LPC.PIRC)))
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Name (_PRS, ResourceTemplate ()
            {
                IRQ (Level, ActiveLow, Shared, )
                    {3,4,5,6,7,9,10,11}
            })
            Method (_DIS, 0, NotSerialized)
            {
                Or (\_SB.PCI0.LPC.PIRC, 0x80, \_SB.PCI0.LPC.PIRC)
            }

            Name (BUFC, ResourceTemplate ()
            {
                IRQ (Level, ActiveLow, Shared, _Y02)
                    {}
            })
            CreateWordField (BUFC, \_SB.LNKC._Y02._INT, IRC1)
            Method (_CRS, 0, NotSerialized)
            {
                And (\_SB.PCI0.LPC.PIRC, 0x8F, Local0)
                If (VPIR (Local0))
                {
                    ShiftLeft (0x01, Local0, IRC1)
                }
                Else
                {
                    Store (0x00, IRC1)
                }

                Return (BUFC)
            }

            Method (_SRS, 1, NotSerialized)
            {
                CreateWordField (Arg0, 0x01, IRC2)
                FindSetRightBit (IRC2, Local0)
                And (\_SB.PCI0.LPC.PIRC, 0x70, Local1)
                Or (Local1, Decrement (Local0), Local1)
                Store (Local1, \_SB.PCI0.LPC.PIRC)
            }
        }

        Device (LNKD)
        {
            Name (_HID, EisaId ("PNP0C0F"))
            Name (_UID, 0x04)
            Method (_STA, 0, NotSerialized)
            {
                If (LNot (VPIR (\_SB.PCI0.LPC.PIRD)))
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Name (_PRS, ResourceTemplate ()
            {
                IRQ (Level, ActiveLow, Shared, )
                    {3,4,5,6,7,9,10,11}
            })
            Method (_DIS, 0, NotSerialized)
            {
                Or (\_SB.PCI0.LPC.PIRD, 0x80, \_SB.PCI0.LPC.PIRD)
            }

            Name (BUFD, ResourceTemplate ()
            {
                IRQ (Level, ActiveLow, Shared, _Y03)
                    {}
            })
            CreateWordField (BUFD, \_SB.LNKD._Y03._INT, IRD1)
            Method (_CRS, 0, NotSerialized)
            {
                And (\_SB.PCI0.LPC.PIRD, 0x8F, Local0)
                If (VPIR (Local0))
                {
                    ShiftLeft (0x01, Local0, IRD1)
                }
                Else
                {
                    Store (0x00, IRD1)
                }

                Return (BUFD)
            }

            Method (_SRS, 1, NotSerialized)
            {
                CreateWordField (Arg0, 0x01, IRD2)
                FindSetRightBit (IRD2, Local0)
                And (\_SB.PCI0.LPC.PIRD, 0x70, Local1)
                Or (Local1, Decrement (Local0), Local1)
                Store (Local1, \_SB.PCI0.LPC.PIRD)
            }
        }

        Device (LNKE)
        {
            Name (_HID, EisaId ("PNP0C0F"))
            Name (_UID, 0x05)
            Method (_STA, 0, NotSerialized)
            {
                If (LNot (VPIR (\_SB.PCI0.LPC.PIRE)))
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Name (_PRS, ResourceTemplate ()
            {
                IRQ (Level, ActiveLow, Shared, )
                    {3,4,5,6,7,9,10,11}
            })
            Method (_DIS, 0, NotSerialized)
            {
                Or (\_SB.PCI0.LPC.PIRE, 0x80, \_SB.PCI0.LPC.PIRE)
            }

            Name (BUFE, ResourceTemplate ()
            {
                IRQ (Level, ActiveLow, Shared, _Y04)
                    {}
            })
            CreateWordField (BUFE, \_SB.LNKE._Y04._INT, IRE1)
            Method (_CRS, 0, NotSerialized)
            {
                And (\_SB.PCI0.LPC.PIRE, 0x8F, Local0)
                If (VPIR (Local0))
                {
                    ShiftLeft (0x01, Local0, IRE1)
                }
                Else
                {
                    Store (0x00, IRE1)
                }

                Return (BUFE)
            }

            Method (_SRS, 1, NotSerialized)
            {
                CreateWordField (Arg0, 0x01, IRE2)
                FindSetRightBit (IRE2, Local0)
                And (\_SB.PCI0.LPC.PIRE, 0x70, Local1)
                Or (Local1, Decrement (Local0), Local1)
                Store (Local1, \_SB.PCI0.LPC.PIRE)
            }
        }

        Device (LNKF)
        {
            Name (_HID, EisaId ("PNP0C0F"))
            Name (_UID, 0x06)
            Method (_STA, 0, NotSerialized)
            {
                If (LNot (VPIR (\_SB.PCI0.LPC.PIRF)))
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Name (_PRS, ResourceTemplate ()
            {
                IRQ (Level, ActiveLow, Shared, )
                    {3,4,5,6,7,9,10,11}
            })
            Method (_DIS, 0, NotSerialized)
            {
                Or (\_SB.PCI0.LPC.PIRF, 0x80, \_SB.PCI0.LPC.PIRF)
            }

            Name (BUFF, ResourceTemplate ()
            {
                IRQ (Level, ActiveLow, Shared, _Y05)
                    {}
            })
            CreateWordField (BUFF, \_SB.LNKF._Y05._INT, IRF1)
            Method (_CRS, 0, NotSerialized)
            {
                And (\_SB.PCI0.LPC.PIRF, 0x8F, Local0)
                If (VPIR (Local0))
                {
                    ShiftLeft (0x01, Local0, IRF1)
                }
                Else
                {
                    Store (0x00, IRF1)
                }

                Return (BUFF)
            }

            Method (_SRS, 1, NotSerialized)
            {
                CreateWordField (Arg0, 0x01, IRF2)
                FindSetRightBit (IRF2, Local0)
                And (\_SB.PCI0.LPC.PIRF, 0x70, Local1)
                Or (Local1, Decrement (Local0), Local1)
                Store (Local1, \_SB.PCI0.LPC.PIRF)
            }
        }

        Device (LNKG)
        {
            Name (_HID, EisaId ("PNP0C0F"))
            Name (_UID, 0x07)
            Method (_STA, 0, NotSerialized)
            {
                If (LNot (VPIR (\_SB.PCI0.LPC.PIRG)))
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Name (_PRS, ResourceTemplate ()
            {
                IRQ (Level, ActiveLow, Shared, )
                    {3,4,5,6,7,9,10,11}
            })
            Method (_DIS, 0, NotSerialized)
            {
                Or (\_SB.PCI0.LPC.PIRG, 0x80, \_SB.PCI0.LPC.PIRG)
            }

            Name (BUFG, ResourceTemplate ()
            {
                IRQ (Level, ActiveLow, Shared, _Y06)
                    {}
            })
            CreateWordField (BUFG, \_SB.LNKG._Y06._INT, IRG1)
            Method (_CRS, 0, NotSerialized)
            {
                And (\_SB.PCI0.LPC.PIRG, 0x8F, Local0)
                If (VPIR (Local0))
                {
                    ShiftLeft (0x01, Local0, IRG1)
                }
                Else
                {
                    Store (0x00, IRG1)
                }

                Return (BUFG)
            }

            Method (_SRS, 1, NotSerialized)
            {
                CreateWordField (Arg0, 0x01, IRG2)
                FindSetRightBit (IRG2, Local0)
                And (\_SB.PCI0.LPC.PIRG, 0x70, Local1)
                Or (Local1, Decrement (Local0), Local1)
                Store (Local1, \_SB.PCI0.LPC.PIRG)
            }
        }

        Device (LNKH)
        {
            Name (_HID, EisaId ("PNP0C0F"))
            Name (_UID, 0x08)
            Method (_STA, 0, NotSerialized)
            {
                If (LNot (VPIR (\_SB.PCI0.LPC.PIRH)))
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Name (_PRS, ResourceTemplate ()
            {
                IRQ (Level, ActiveLow, Shared, )
                    {3,4,5,6,7,9,10,11}
            })
            Method (_DIS, 0, NotSerialized)
            {
                Or (\_SB.PCI0.LPC.PIRH, 0x80, \_SB.PCI0.LPC.PIRH)
            }

            Name (BUFH, ResourceTemplate ()
            {
                IRQ (Level, ActiveLow, Shared, _Y07)
                    {}
            })
            CreateWordField (BUFH, \_SB.LNKH._Y07._INT, IRH1)
            Method (_CRS, 0, NotSerialized)
            {
                And (\_SB.PCI0.LPC.PIRH, 0x8F, Local0)
                If (VPIR (Local0))
                {
                    ShiftLeft (0x01, Local0, IRH1)
                }
                Else
                {
                    Store (0x00, IRH1)
                }

                Return (BUFH)
            }

            Method (_SRS, 1, NotSerialized)
            {
                CreateWordField (Arg0, 0x01, IRH2)
                FindSetRightBit (IRH2, Local0)
                And (\_SB.PCI0.LPC.PIRH, 0x70, Local1)
                Or (Local1, Decrement (Local0), Local1)
                Store (Local1, \_SB.PCI0.LPC.PIRH)
            }
        }

        Method (VPIR, 1, NotSerialized)
        {
            Store (0x01, Local0)
            If (And (Arg0, 0x80))
            {
                Store (0x00, Local0)
            }
            Else
            {
                And (Arg0, 0x0F, Local1)
                If (LLess (Local1, 0x03))
                {
                    Store (0x00, Local0)
                }
                Else
                {
                    If (LOr (LEqual (Local1, 0x08), LEqual (Local1, 0x0D)))
                    {
                        Store (0x00, Local0)
                    }
                }
            }

            Return (Local0)
        }

        Device (MEM)
        {
            Name (_HID, EisaId ("PNP0C01"))
            Name (MEMS, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x000A0000,         // Address Length
                    )
                Memory32Fixed (ReadOnly,
                    0x000C0000,         // Address Base
                    0x00000000,         // Address Length
                    _Y08)
                Memory32Fixed (ReadOnly,
                    0x000C4000,         // Address Base
                    0x00000000,         // Address Length
                    _Y09)
                Memory32Fixed (ReadOnly,
                    0x000C8000,         // Address Base
                    0x00000000,         // Address Length
                    _Y0A)
                Memory32Fixed (ReadOnly,
                    0x000CC000,         // Address Base
                    0x00000000,         // Address Length
                    _Y0B)
                Memory32Fixed (ReadOnly,
                    0x000D0000,         // Address Base
                    0x00000000,         // Address Length
                    _Y0C)
                Memory32Fixed (ReadOnly,
                    0x000D4000,         // Address Base
                    0x00000000,         // Address Length
                    _Y0D)
                Memory32Fixed (ReadOnly,
                    0x000D8000,         // Address Base
                    0x00000000,         // Address Length
                    _Y0E)
                Memory32Fixed (ReadOnly,
                    0x000DC000,         // Address Base
                    0x00000000,         // Address Length
                    _Y0F)
                Memory32Fixed (ReadOnly,
                    0x000E0000,         // Address Base
                    0x00000000,         // Address Length
                    _Y10)
                Memory32Fixed (ReadOnly,
                    0x000E4000,         // Address Base
                    0x00000000,         // Address Length
                    _Y11)
                Memory32Fixed (ReadOnly,
                    0x000E8000,         // Address Base
                    0x00000000,         // Address Length
                    _Y12)
                Memory32Fixed (ReadOnly,
                    0x000EC000,         // Address Base
                    0x00000000,         // Address Length
                    _Y13)
                Memory32Fixed (ReadOnly,
                    0x000F0000,         // Address Base
                    0x00010000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0x00100000,         // Address Base
                    0x01EE0000,         // Address Length
                    _Y14)
                Memory32Fixed (ReadOnly,
                    0xFEC00000,         // Address Base
                    0x00140000,         // Address Length
                    _Y15)
                Memory32Fixed (ReadOnly,
                    0xFED4C000,         // Address Base
                    0x012B4000,         // Address Length
                    _Y16)
            })
            CreateDWordField (MEMS, \_SB.MEM._Y08._LEN, MC0L)
            CreateDWordField (MEMS, \_SB.MEM._Y09._LEN, MC4L)
            CreateDWordField (MEMS, \_SB.MEM._Y0A._LEN, MC8L)
            CreateDWordField (MEMS, \_SB.MEM._Y0B._LEN, MCCL)
            CreateDWordField (MEMS, \_SB.MEM._Y0C._LEN, MD0L)
            CreateDWordField (MEMS, \_SB.MEM._Y0D._LEN, MD4L)
            CreateDWordField (MEMS, \_SB.MEM._Y0E._LEN, MD8L)
            CreateDWordField (MEMS, \_SB.MEM._Y0F._LEN, MDCL)
            CreateDWordField (MEMS, \_SB.MEM._Y10._LEN, ME0L)
            CreateDWordField (MEMS, \_SB.MEM._Y11._LEN, ME4L)
            CreateDWordField (MEMS, \_SB.MEM._Y12._LEN, ME8L)
            CreateDWordField (MEMS, \_SB.MEM._Y13._LEN, MECL)
            CreateBitField (MEMS, \_SB.MEM._Y08._RW, MC0W)
            CreateBitField (MEMS, \_SB.MEM._Y09._RW, MC4W)
            CreateBitField (MEMS, \_SB.MEM._Y0A._RW, MC8W)
            CreateBitField (MEMS, \_SB.MEM._Y0B._RW, MCCW)
            CreateBitField (MEMS, \_SB.MEM._Y0C._RW, MD0W)
            CreateBitField (MEMS, \_SB.MEM._Y0D._RW, MD4W)
            CreateBitField (MEMS, \_SB.MEM._Y0E._RW, MD8W)
            CreateBitField (MEMS, \_SB.MEM._Y0F._RW, MDCW)
            CreateBitField (MEMS, \_SB.MEM._Y10._RW, ME0W)
            CreateBitField (MEMS, \_SB.MEM._Y11._RW, ME4W)
            CreateBitField (MEMS, \_SB.MEM._Y12._RW, ME8W)
            CreateBitField (MEMS, \_SB.MEM._Y13._RW, MECW)
            CreateDWordField (MEMS, \_SB.MEM._Y14._BAS, MEB1)
            CreateDWordField (MEMS, \_SB.MEM._Y14._LEN, MEL1)
            CreateDWordField (MEMS, \_SB.MEM._Y15._LEN, MEL2)
            CreateDWordField (MEMS, \_SB.MEM._Y16._LEN, MEL3)
            Method (_CRS, 0, NotSerialized)
            {
                And (\_SB.UNCR.SAD.PAM1, 0x03, Local0)
                If (Local0)
                {
                    Store (0x4000, MC0L)
                    If (And (Local0, 0x02))
                    {
                        Store (0x01, MC0W)
                    }
                }

                And (\_SB.UNCR.SAD.PAM1, 0x30, Local0)
                If (Local0)
                {
                    Store (0x4000, MC4L)
                    If (And (Local0, 0x20))
                    {
                        Store (0x01, MC4W)
                    }
                }

                And (\_SB.UNCR.SAD.PAM2, 0x03, Local0)
                If (Local0)
                {
                    Store (0x4000, MC8L)
                    If (And (Local0, 0x02))
                    {
                        Store (0x01, MC8W)
                    }
                }

                And (\_SB.UNCR.SAD.PAM2, 0x30, Local0)
                If (Local0)
                {
                    Store (0x4000, MCCL)
                    If (And (Local0, 0x20))
                    {
                        Store (0x01, MCCW)
                    }
                }

                And (\_SB.UNCR.SAD.PAM3, 0x03, Local0)
                If (Local0)
                {
                    Store (0x4000, MD0L)
                    If (And (Local0, 0x02))
                    {
                        Store (0x01, MD0W)
                    }
                }

                And (\_SB.UNCR.SAD.PAM3, 0x30, Local0)
                If (Local0)
                {
                    Store (0x4000, MD4L)
                    If (And (Local0, 0x20))
                    {
                        Store (0x01, MD4W)
                    }
                }

                And (\_SB.UNCR.SAD.PAM4, 0x03, Local0)
                If (Local0)
                {
                    Store (0x4000, MD8L)
                    If (And (Local0, 0x02))
                    {
                        Store (0x01, MD8W)
                    }
                }

                And (\_SB.UNCR.SAD.PAM4, 0x30, Local0)
                If (Local0)
                {
                    Store (0x4000, MDCL)
                    If (And (Local0, 0x20))
                    {
                        Store (0x01, MDCW)
                    }
                }

                And (\_SB.UNCR.SAD.PAM5, 0x03, Local0)
                If (Local0)
                {
                    Store (0x4000, ME0L)
                    If (And (Local0, 0x02))
                    {
                        Store (0x01, ME0W)
                    }
                }

                And (\_SB.UNCR.SAD.PAM5, 0x30, Local0)
                If (Local0)
                {
                    Store (0x4000, ME4L)
                    If (And (Local0, 0x20))
                    {
                        Store (0x01, ME4W)
                    }
                }

                And (\_SB.UNCR.SAD.PAM6, 0x03, Local0)
                If (Local0)
                {
                    Store (0x4000, ME8L)
                    If (And (Local0, 0x02))
                    {
                        Store (0x01, ME8W)
                    }
                }

                And (\_SB.UNCR.SAD.PAM6, 0x30, Local0)
                If (Local0)
                {
                    Store (0x4000, MECL)
                    If (And (Local0, 0x20))
                    {
                        Store (0x01, MECW)
                    }
                }

                Subtract (\MEMX, MEB1, MEL1)
                If (LNotEqual (\_SB.PCI0.LPC.TPM._STA (), 0x0F))
                {
                    Store (0x01400000, MEL2)
                    Store (0x00, MEL3)
                }

                Return (MEMS)
            }
        }

        Device (LID)
        {
            Name (_HID, EisaId ("PNP0C0D"))
            Method (_LID, 0, NotSerialized)
            {
                If (\H8DR)
                {
                    Return (\_SB.PCI0.LPC.EC.HPLD)
                }
                Else
                {
                    If (And (\RBEC (0x46), 0x04))
                    {
                        Return (0x01)
                    }
                    Else
                    {
                        Return (0x00)
                    }
                }
            }

            Method (_PRW, 0, NotSerialized)
            {
                Return (Package (0x02)
                {
                    0x1D, 
                    0x03
                })
            }

            Method (_PSW, 1, NotSerialized)
            {
                If (\H8DR)
                {
                    If (Arg0)
                    {
                        Store (0x01, \_SB.PCI0.LPC.EC.HWLO)
                    }
                    Else
                    {
                        Store (0x00, \_SB.PCI0.LPC.EC.HWLO)
                    }
                }
                Else
                {
                    If (Arg0)
                    {
                        \MBEC (0x32, 0xFF, 0x04)
                    }
                    Else
                    {
                        \MBEC (0x32, 0xFB, 0x00)
                    }
                }
            }
        }

        Device (SLPB)
        {
            Name (_HID, EisaId ("PNP0C0E"))
            Method (_PRW, 0, NotSerialized)
            {
                Return (Package (0x02)
                {
                    0x1D, 
                    0x03
                })
            }

            Method (_PSW, 1, NotSerialized)
            {
                If (\H8DR)
                {
                    If (Arg0)
                    {
                        Store (0x01, \_SB.PCI0.LPC.EC.HWFN)
                    }
                    Else
                    {
                        Store (0x00, \_SB.PCI0.LPC.EC.HWFN)
                    }
                }
                Else
                {
                    If (Arg0)
                    {
                        \MBEC (0x32, 0xFF, 0x10)
                    }
                    Else
                    {
                        \MBEC (0x32, 0xEF, 0x00)
                    }
                }
            }
        }

        Device (UNCR)
        {
            Name (_BBN, 0xFF)
            Name (_ADR, 0x00)
            Name (RID, 0x00)
            Name (_HID, EisaId ("PNP0A03"))
            Name (_CRS, ResourceTemplate ()
            {
                WordBusNumber (ResourceProducer, MinFixed, MaxFixed, PosDecode,
                    0x0000,             // Granularity
                    0x00FF,             // Range Minimum
                    0x00FF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0001,             // Length
                    ,, )
            })
            Device (SAD)
            {
                Name (_ADR, 0x01)
                Name (RID, 0x00)
                OperationRegion (SADC, PCI_Config, 0x00, 0x0100)
                Field (SADC, DWordAcc, NoLock, Preserve)
                {
                            Offset (0x40), 
                    PAM0,   8, 
                    PAM1,   8, 
                    PAM2,   8, 
                    PAM3,   8, 
                    PAM4,   8, 
                    PAM5,   8, 
                    PAM6,   8
                }
            }
        }

        Device (PCI0)
        {
            Name (_BBN, 0x00)
            Name (_ADR, 0x00)
            Name (RID, 0x00)
            Name (_S3D, 0x02)
            Name (LRRT, Package (0x19)
            {
                Package (0x04)
                {
                    0x0001FFFF, 
                    0x00, 
                    \_SB.LNKA, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x0002FFFF, 
                    0x00, 
                    \_SB.LNKA, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x0003FFFF, 
                    0x00, 
                    \_SB.LNKA, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    0x00, 
                    \_SB.LNKA, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    0x01, 
                    \_SB.LNKB, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    0x02, 
                    \_SB.LNKC, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    0x03, 
                    \_SB.LNKD, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x0019FFFF, 
                    0x00, 
                    \_SB.LNKE, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001AFFFF, 
                    0x00, 
                    \_SB.LNKE, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001AFFFF, 
                    0x01, 
                    \_SB.LNKF, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001AFFFF, 
                    0x02, 
                    \_SB.LNKG, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001AFFFF, 
                    0x03, 
                    \_SB.LNKH, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001BFFFF, 
                    0x01, 
                    \_SB.LNKB, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    0x00, 
                    \_SB.LNKE, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    0x01, 
                    \_SB.LNKF, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    0x02, 
                    \_SB.LNKG, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    0x03, 
                    \_SB.LNKH, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    0x00, 
                    \_SB.LNKA, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    0x01, 
                    \_SB.LNKB, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    0x02, 
                    \_SB.LNKC, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    0x03, 
                    \_SB.LNKD, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    0x00, 
                    \_SB.LNKH, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    0x01, 
                    \_SB.LNKA, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    0x02, 
                    \_SB.LNKB, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    0x03, 
                    \_SB.LNKD, 
                    0x00
                }
            })
            Name (ARRT, Package (0x19)
            {
                Package (0x04)
                {
                    0x0001FFFF, 
                    0x00, 
                    0x00, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x0002FFFF, 
                    0x00, 
                    0x00, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x0003FFFF, 
                    0x00, 
                    0x00, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    0x00, 
                    0x00, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    0x01, 
                    0x00, 
                    0x11
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    0x02, 
                    0x00, 
                    0x12
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    0x03, 
                    0x00, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x0019FFFF, 
                    0x00, 
                    0x00, 
                    0x14
                }, 

                Package (0x04)
                {
                    0x001AFFFF, 
                    0x00, 
                    0x00, 
                    0x14
                }, 

                Package (0x04)
                {
                    0x001AFFFF, 
                    0x01, 
                    0x00, 
                    0x15
                }, 

                Package (0x04)
                {
                    0x001AFFFF, 
                    0x02, 
                    0x00, 
                    0x16
                }, 

                Package (0x04)
                {
                    0x001AFFFF, 
                    0x03, 
                    0x00, 
                    0x17
                }, 

                Package (0x04)
                {
                    0x001BFFFF, 
                    0x01, 
                    0x00, 
                    0x11
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    0x00, 
                    0x00, 
                    0x14
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    0x01, 
                    0x00, 
                    0x15
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    0x02, 
                    0x00, 
                    0x16
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    0x03, 
                    0x00, 
                    0x17
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    0x00, 
                    0x00, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    0x01, 
                    0x00, 
                    0x11
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    0x02, 
                    0x00, 
                    0x12
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    0x03, 
                    0x00, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    0x00, 
                    0x00, 
                    0x17
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    0x01, 
                    0x00, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    0x02, 
                    0x00, 
                    0x11
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    0x03, 
                    0x00, 
                    0x13
                }
            })
            Method (_PRT, 0, NotSerialized)
            {
                If (\GPIC)
                {
                    Return (ARRT)
                }
                Else
                {
                    Return (LRRT)
                }
            }

            Name (_HID, EisaId ("PNP0A08"))
            Name (_CID, EisaId ("PNP0A03"))
            OperationRegion (MHCS, PCI_Config, 0x40, 0xC0)
            Field (MHCS, DWordAcc, NoLock, Preserve)
            {
                        Offset (0x70), 
                    ,   4, 
                TLUD,   12
            }

            Name (_CRS, ResourceTemplate ()
            {
                WordBusNumber (ResourceProducer, MinFixed, MaxFixed, PosDecode,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x00FE,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x00FF,             // Length
                    ,, )
                IO (Decode16,
                    0x0CF8,             // Range Minimum
                    0x0CF8,             // Range Maximum
                    0x01,               // Alignment
                    0x08,               // Length
                    )
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x0CF7,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0CF8,             // Length
                    ,, , TypeStatic)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0D00,             // Range Minimum
                    0xFFFF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0xF300,             // Length
                    ,, , TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000A0000,         // Range Minimum
                    0x000BFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00020000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C0000,         // Range Minimum
                    0x000C3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y17, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C4000,         // Range Minimum
                    0x000C7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y18, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C8000,         // Range Minimum
                    0x000CBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y19, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000CC000,         // Range Minimum
                    0x000CFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y1A, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D0000,         // Range Minimum
                    0x000D3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y1B, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D4000,         // Range Minimum
                    0x000D7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y1C, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D8000,         // Range Minimum
                    0x000DBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y1D, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000DC000,         // Range Minimum
                    0x000DFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y1E, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E0000,         // Range Minimum
                    0x000E3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y1F, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E4000,         // Range Minimum
                    0x000E7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y20, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E8000,         // Range Minimum
                    0x000EBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y21, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000EC000,         // Range Minimum
                    0x000EFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y22, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x00100000,         // Range Minimum
                    0xFEBFFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0xFEB00000,         // Length
                    ,, _Y23, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0xFED40000,         // Range Minimum
                    0xFED4BFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x0000C000,         // Length
                    ,, _Y24, AddressRangeMemory, TypeStatic)
            })
            CreateDWordField (_CRS, \_SB.PCI0._Y17._LEN, C0LN)
            CreateDWordField (_CRS, \_SB.PCI0._Y18._LEN, C4LN)
            CreateDWordField (_CRS, \_SB.PCI0._Y19._LEN, C8LN)
            CreateDWordField (_CRS, \_SB.PCI0._Y1A._LEN, CCLN)
            CreateDWordField (_CRS, \_SB.PCI0._Y1B._LEN, D0LN)
            CreateDWordField (_CRS, \_SB.PCI0._Y1C._LEN, D4LN)
            CreateDWordField (_CRS, \_SB.PCI0._Y1D._LEN, D8LN)
            CreateDWordField (_CRS, \_SB.PCI0._Y1E._LEN, DCLN)
            CreateDWordField (_CRS, \_SB.PCI0._Y1F._LEN, E0LN)
            CreateDWordField (_CRS, \_SB.PCI0._Y20._LEN, E4LN)
            CreateDWordField (_CRS, \_SB.PCI0._Y21._LEN, E8LN)
            CreateDWordField (_CRS, \_SB.PCI0._Y22._LEN, ECLN)
            CreateDWordField (_CRS, \_SB.PCI0._Y23._MIN, XXMN)
            CreateDWordField (_CRS, \_SB.PCI0._Y23._MAX, XXMX)
            CreateDWordField (_CRS, \_SB.PCI0._Y23._LEN, XXLN)
            CreateDWordField (_CRS, \_SB.PCI0._Y24._MIN, F4MN)
            CreateDWordField (_CRS, \_SB.PCI0._Y24._MAX, F4MX)
            CreateDWordField (_CRS, \_SB.PCI0._Y24._LEN, F4LN)
            Method (_INI, 0, Serialized)
            {
                If (LNot (\OSIF))
                {
                    \_SB._INI ()
                }

                If (LEqual (\PNHM, 0x000106E0))
                {
                    ShiftLeft (Increment (\_SB.PCI0.IIO1.TOUD), 0x1A, Local0)
                }
                Else
                {
                    ShiftLeft (TLUD, 0x14, Local0)
                }

                Store (Local0, \MEMX)
                Store (Local0, XXMN)
                Add (Subtract (XXMX, XXMN), 0x01, XXLN)
                If (LNotEqual (And (\TPRS, 0x01), 0x01))
                {
                    Store (0x00, F4LN)
                }

                If (And (\_SB.UNCR.SAD.PAM1, 0x03))
                {
                    Store (0x00, C0LN)
                }

                If (And (\_SB.UNCR.SAD.PAM1, 0x30))
                {
                    Store (0x00, C4LN)
                }

                If (And (\_SB.UNCR.SAD.PAM2, 0x03))
                {
                    Store (0x00, C8LN)
                }

                If (And (\_SB.UNCR.SAD.PAM2, 0x30))
                {
                    Store (0x00, CCLN)
                }

                If (And (\_SB.UNCR.SAD.PAM3, 0x03))
                {
                    Store (0x00, D0LN)
                }

                If (And (\_SB.UNCR.SAD.PAM3, 0x30))
                {
                    Store (0x00, D4LN)
                }

                If (And (\_SB.UNCR.SAD.PAM4, 0x03))
                {
                    Store (0x00, D8LN)
                }

                If (And (\_SB.UNCR.SAD.PAM4, 0x30))
                {
                    Store (0x00, DCLN)
                }

                If (And (\_SB.UNCR.SAD.PAM5, 0x03))
                {
                    Store (0x00, E0LN)
                }

                If (And (\_SB.UNCR.SAD.PAM5, 0x30))
                {
                    Store (0x00, E4LN)
                }

                If (And (\_SB.UNCR.SAD.PAM6, 0x03))
                {
                    Store (0x00, E8LN)
                }

                If (And (\_SB.UNCR.SAD.PAM6, 0x30))
                {
                    Store (0x00, ECLN)
                }
            }

            Name (SUPP, 0x00)
            Name (CTRL, 0x00)
            Method (_OSC, 4, NotSerialized)
            {
                CreateDWordField (Arg3, 0x00, CDW1)
                CreateDWordField (Arg3, 0x04, CDW2)
                CreateDWordField (Arg3, 0x08, CDW3)
                CreateDWordField (Arg0, 0x00, IID0)
                CreateDWordField (Arg0, 0x04, IID1)
                CreateDWordField (Arg0, 0x08, IID2)
                CreateDWordField (Arg0, 0x0C, IID3)
                Name (UID0, Buffer (0x10)
                {
                    /* 0000 */    0x5B, 0x4D, 0xDB, 0x33, 0xF7, 0x1F, 0x1C, 0x40, 
                    /* 0008 */    0x96, 0x57, 0x74, 0x41, 0xC0, 0x3D, 0xD7, 0x66
                })
                CreateDWordField (UID0, 0x00, EID0)
                CreateDWordField (UID0, 0x04, EID1)
                CreateDWordField (UID0, 0x08, EID2)
                CreateDWordField (UID0, 0x0C, EID3)
                If (LAnd (LAnd (LEqual (IID0, EID0), LEqual (IID1, EID1)), LAnd (
                    LEqual (IID2, EID2), LEqual (IID3, EID3))))
                {
                    Store (CDW2, SUPP)
                    Store (CDW3, CTRL)
                    And (CTRL, 0x0D, CTRL)
                    If (LNot (And (CDW1, 0x01)))
                    {
                        If (And (CTRL, 0x01))
                        {
                            If (LNot (\VIGD))
                            {
                                Store (0x00, \_SB.PCI0.PEG.HPGP)
                                Store (0x00, \_SB.PCI0.PEG.GMGP)
                            }

                            Store (0x00, \_SB.PCI0.EXP4.HPCE)
                            Store (0x01, \_SB.PCI0.EXP4.HPCS)
                            Store (0x01, \_SB.PCI0.EXP4.PDC)
                            Store (0x01, \NHPS)
                        }

                        If (And (CTRL, 0x04))
                        {
                            If (LNot (\VIGD))
                            {
                                Store (0x00, \_SB.PCI0.PEG.PMGP)
                                Store (0x00, \_SB.PCI0.PEG.GMGP)
                            }

                            If (\_SB.PCI0.EXP1.PMCE)
                            {
                                Store (0x00, \_SB.PCI0.EXP1.PMCE)
                                Store (0x01, \_SB.PCI0.EXP1.PMCS)
                            }

                            If (\_SB.PCI0.EXP2.PMCE)
                            {
                                Store (0x00, \_SB.PCI0.EXP2.PMCE)
                                Store (0x01, \_SB.PCI0.EXP2.PMCS)
                            }

                            If (\_SB.PCI0.EXP3.PMCE)
                            {
                                Store (0x00, \_SB.PCI0.EXP3.PMCE)
                                Store (0x01, \_SB.PCI0.EXP3.PMCS)
                            }

                            If (\_SB.PCI0.EXP4.PMCE)
                            {
                                Store (0x00, \_SB.PCI0.EXP4.PMCE)
                                Store (0x01, \_SB.PCI0.EXP4.PMCS)
                            }

                            If (\_SB.PCI0.EXP5.PMCE)
                            {
                                Store (0x00, \_SB.PCI0.EXP5.PMCE)
                                Store (0x01, \_SB.PCI0.EXP5.PMCS)
                            }

                            Store (0x00, \_SB.PCI0.LPC.EXPE)
                            Store (0x01, \NPME)
                        }
                    }

                    If (LNotEqual (Arg1, 0x01))
                    {
                        Or (CDW1, 0x0A, CDW1)
                    }

                    If (LNotEqual (CDW3, CTRL))
                    {
                        Or (CDW1, 0x10, CDW1)
                    }

                    Store (CTRL, CDW3)
                }
                Else
                {
                    Or (CDW1, 0x06, CDW1)
                }

                Return (Arg3)
            }

            Mutex (MDGS, 0x07)
            Name (VDEE, 0x01)
            Name (VDDA, Buffer (0x02) {})
            CreateBitField (VDDA, 0x00, VUPC)
            CreateBitField (VDDA, 0x01, VQDL)
            CreateBitField (VDDA, 0x02, VQDC)
            CreateBitField (VDDA, 0x03, VQD0)
            CreateBitField (VDDA, 0x04, VQD1)
            CreateBitField (VDDA, 0x05, VQD2)
            CreateBitField (VDDA, 0x06, VSDL)
            CreateBitField (VDDA, 0x07, VSDC)
            CreateBitField (VDDA, 0x08, VSD0)
            CreateBitField (VDDA, 0x09, VSD1)
            CreateBitField (VDDA, 0x0A, VSD2)
            CreateBitField (VDDA, 0x0B, VSD3)
            CreateBitField (VDDA, 0x0C, VSD4)
            CreateBitField (VDDA, 0x0D, VSD5)
            CreateBitField (VDDA, 0x0E, MSWT)
            Device (VID)
            {
                Name (_ADR, 0x00020000)
                Name (RID, 0x00)
                OperationRegion (VPCG, PCI_Config, 0x00, 0x0100)
                Field (VPCG, DWordAcc, NoLock, Preserve)
                {
                            Offset (0xD4), 
                    VPWR,   8
                }

                Name (MIDL, 0x0400)
                Name (MIDC, 0x0100)
                Name (MID0, 0x0300)
                Name (MID1, 0x0301)
                Name (MID2, 0x0302)
                Name (MID3, 0x0303)
                Name (MID4, 0x0304)
                Name (MID5, 0x0305)
                Name (_S3D, 0x03)
                Method (_INI, 0, NotSerialized)
                {
                    Noop
                }

                Method (_PS0, 0, NotSerialized)
                {
                    Noop
                }

                Method (_PS1, 0, NotSerialized)
                {
                    Noop
                }

                Method (_PS2, 0, NotSerialized)
                {
                    Noop
                }

                Method (_PS3, 0, NotSerialized)
                {
                    Noop
                }

                Method (VSWT, 0, NotSerialized)
                {
                    GHDS (0x00)
                }

                Method (VLOC, 1, NotSerialized)
                {
                    If (LEqual (Arg0, \_SB.LID._LID ()))
                    {
                        \VSLD (Arg0)
                        If (LEqual (VPWR, 0x00))
                        {
                            Store (Arg0, CLID)
                            GNOT (0x02, 0x00)
                        }
                    }
                }

                Method (_DOS, 1, NotSerialized)
                {
                    And (Arg0, 0x03, Arg0)
                    If (LEqual (Arg0, 0x02))
                    {
                        Store (0x14, Local0)
                        While (Local0)
                        {
                            Decrement (Local0)
                            Acquire (MDGS, 0xFFFF)
                            If (LEqual (0x00, MSWT))
                            {
                                Store (0x01, MSWT)
                                Store (0x00, Local0)
                                Store (Arg0, VDEE)
                            }

                            Release (MDGS)
                            Sleep (0xC8)
                        }
                    }
                    Else
                    {
                        Acquire (MDGS, 0xFFFF)
                        If (LEqual (VDEE, 0x02))
                        {
                            Store (0x00, MSWT)
                        }

                        If (LGreater (Arg0, 0x02))
                        {
                            Store (0x01, VDEE)
                        }
                        Else
                        {
                            Store (Arg0, VDEE)
                        }

                        Release (MDGS)
                    }
                }

                Method (_DOD, 0, NotSerialized)
                {
                    If (LAnd (\WVIS, LGreaterEqual (\VHYB (0x03, 0x00), 0x01)))
                    {
                        Store (0x0410, MIDL)
                        Store (0x80000100, MIDC)
                        Store (0x80006330, MID0)
                        Store (0x80007331, MID1)
                        Store (0x80086342, MID2)
                        Store (0x80087355, MID3)
                        Store (0x80086354, MID4)
                        Store (0x80087343, MID5)
                        If (LAnd (\WVIS, ISOP ()))
                        {
                            Return (Package (0x04)
                            {
                                0x80000100, 
                                0x80006330, 
                                0x80007331, 
                                0x80000410
                            })
                        }

                        Return (\_SB.PCI0.PEG.VID._DOD ())
                    }

                    Store (0x00, NDID)
                    If (LNotEqual (DIDL, 0x00))
                    {
                        Increment (NDID)
                    }

                    If (LNotEqual (DDL2, 0x00))
                    {
                        Increment (NDID)
                    }

                    If (LNotEqual (DDL3, 0x00))
                    {
                        Increment (NDID)
                    }

                    If (LNotEqual (DDL4, 0x00))
                    {
                        Increment (NDID)
                    }

                    If (LNotEqual (DDL5, 0x00))
                    {
                        Increment (NDID)
                    }

                    If (LNotEqual (DDL6, 0x00))
                    {
                        Increment (NDID)
                    }

                    If (LNotEqual (DDL7, 0x00))
                    {
                        Increment (NDID)
                    }

                    If (LNotEqual (DDL8, 0x00))
                    {
                        Increment (NDID)
                    }

                    If (LEqual (NDID, 0x01))
                    {
                        Name (TMP1, Package (0x01)
                        {
                            0xFFFFFFFF
                        })
                        Store (Or (0x80010000, And (0x0F0F, DIDL)), Index (TMP1, 
                            0x00))
                        Return (TMP1)
                    }

                    If (LEqual (NDID, 0x02))
                    {
                        Name (TMP2, Package (0x02)
                        {
                            0xFFFFFFFF, 
                            0xFFFFFFFF
                        })
                        Store (Or (0x80010000, And (0x0F0F, DIDL)), Index (TMP2, 
                            0x00))
                        Store (Or (0x80010000, And (0x0F0F, DDL2)), Index (TMP2, 
                            0x01))
                        Return (TMP2)
                    }

                    If (LEqual (NDID, 0x03))
                    {
                        Name (TMP3, Package (0x03)
                        {
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF
                        })
                        Store (Or (0x80010000, And (0x0F0F, DIDL)), Index (TMP3, 
                            0x00))
                        Store (Or (0x80010000, And (0x0F0F, DDL2)), Index (TMP3, 
                            0x01))
                        Store (Or (0x80010000, And (0x0F0F, DDL3)), Index (TMP3, 
                            0x02))
                        Return (TMP3)
                    }

                    If (LEqual (NDID, 0x04))
                    {
                        Name (TMP4, Package (0x04)
                        {
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF
                        })
                        Store (Or (0x80010000, And (0x0F0F, DIDL)), Index (TMP4, 
                            0x00))
                        Store (Or (0x80010000, And (0x0F0F, DDL2)), Index (TMP4, 
                            0x01))
                        Store (Or (0x80010000, And (0x0F0F, DDL3)), Index (TMP4, 
                            0x02))
                        Store (Or (0x80010000, And (0x0F0F, DDL4)), Index (TMP4, 
                            0x03))
                        Return (TMP4)
                    }

                    If (LEqual (NDID, 0x05))
                    {
                        Name (TMP5, Package (0x05)
                        {
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF
                        })
                        Store (Or (0x80010000, And (0x0F0F, DIDL)), Index (TMP5, 
                            0x00))
                        Store (Or (0x80010000, And (0x0F0F, DDL2)), Index (TMP5, 
                            0x01))
                        Store (Or (0x80010000, And (0x0F0F, DDL3)), Index (TMP5, 
                            0x02))
                        Store (Or (0x80010000, And (0x0F0F, DDL4)), Index (TMP5, 
                            0x03))
                        Store (Or (0x80010000, And (0x0F0F, DDL5)), Index (TMP5, 
                            0x04))
                        Return (TMP5)
                    }

                    If (LEqual (NDID, 0x06))
                    {
                        Name (TMP6, Package (0x06)
                        {
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF
                        })
                        Store (Or (0x80010000, And (0x0F0F, DIDL)), Index (TMP6, 
                            0x00))
                        Store (Or (0x80010000, And (0x0F0F, DDL2)), Index (TMP6, 
                            0x01))
                        Store (Or (0x80010000, And (0x0F0F, DDL3)), Index (TMP6, 
                            0x02))
                        Store (Or (0x80010000, And (0x0F0F, DDL4)), Index (TMP6, 
                            0x03))
                        Store (Or (0x80010000, And (0x0F0F, DDL5)), Index (TMP6, 
                            0x04))
                        Store (Or (0x80010000, And (0x0F0F, DDL6)), Index (TMP6, 
                            0x05))
                        Return (TMP6)
                    }

                    If (LEqual (NDID, 0x07))
                    {
                        Name (TMP7, Package (0x07)
                        {
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF
                        })
                        Store (Or (0x80010000, And (0x0F0F, DIDL)), Index (TMP7, 
                            0x00))
                        Store (Or (0x80010000, And (0x0F0F, DDL2)), Index (TMP7, 
                            0x01))
                        Store (Or (0x80010000, And (0x0F0F, DDL3)), Index (TMP7, 
                            0x02))
                        Store (Or (0x80010000, And (0x0F0F, DDL4)), Index (TMP7, 
                            0x03))
                        Store (Or (0x80010000, And (0x0F0F, DDL5)), Index (TMP7, 
                            0x04))
                        Store (Or (0x80010000, And (0x0F0F, DDL6)), Index (TMP7, 
                            0x05))
                        Store (Or (0x80010000, And (0x0F0F, DDL7)), Index (TMP7, 
                            0x06))
                        Return (TMP7)
                    }

                    If (LGreater (NDID, 0x07))
                    {
                        Name (TMP8, Package (0x08)
                        {
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF
                        })
                        Store (Or (0x80010000, And (0x0F0F, DIDL)), Index (TMP8, 
                            0x00))
                        Store (Or (0x80010000, And (0x0F0F, DDL2)), Index (TMP8, 
                            0x01))
                        Store (Or (0x80010000, And (0x0F0F, DDL3)), Index (TMP8, 
                            0x02))
                        Store (Or (0x80010000, And (0x0F0F, DDL4)), Index (TMP8, 
                            0x03))
                        Store (Or (0x80010000, And (0x0F0F, DDL5)), Index (TMP8, 
                            0x04))
                        Store (Or (0x80010000, And (0x0F0F, DDL6)), Index (TMP8, 
                            0x05))
                        Store (Or (0x80010000, And (0x0F0F, DDL7)), Index (TMP8, 
                            0x06))
                        Store (Or (0x80010000, And (0x0F0F, DDL8)), Index (TMP8, 
                            0x07))
                        Return (TMP8)
                    }

                    Return (Package (0x01)
                    {
                        0x0400
                    })
                }

                Method (VDSW, 1, NotSerialized)
                {
                    If (LEqual (VPWR, 0x00))
                    {
                        GDCK (Arg0)
                    }
                }

                Method (VCAD, 1, NotSerialized)
                {
                    Store (0x00, Local0)
                    If (LEqual (And (DIDL, 0x0F0F), Arg0))
                    {
                        Store (0x0D, Local0)
                    }
                    Else
                    {
                        If (LEqual (And (DDL2, 0x0F0F), Arg0))
                        {
                            Store (0x0D, Local0)
                        }
                        Else
                        {
                            If (LEqual (And (DDL3, 0x0F0F), Arg0))
                            {
                                Store (0x0D, Local0)
                            }
                            Else
                            {
                                If (LEqual (And (DDL4, 0x0F0F), Arg0))
                                {
                                    Store (0x0D, Local0)
                                }
                                Else
                                {
                                    If (LEqual (And (DDL5, 0x0F0F), Arg0))
                                    {
                                        Store (0x0D, Local0)
                                    }
                                    Else
                                    {
                                        If (LEqual (And (DDL6, 0x0F0F), Arg0))
                                        {
                                            Store (0x0D, Local0)
                                        }
                                        Else
                                        {
                                            If (LEqual (And (DDL7, 0x0F0F), Arg0))
                                            {
                                                Store (0x0D, Local0)
                                            }
                                            Else
                                            {
                                                If (LEqual (And (DDL8, 0x0F0F), Arg0))
                                                {
                                                    Store (0x0D, Local0)
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }

                    If (LEqual (And (CPDL, 0x0F0F), Arg0))
                    {
                        Or (0x10, Local0, Local0)
                    }
                    Else
                    {
                        If (LEqual (And (CPL2, 0x0F0F), Arg0))
                        {
                            Or (0x10, Local0, Local0)
                        }
                        Else
                        {
                            If (LEqual (And (CPL3, 0x0F0F), Arg0))
                            {
                                Or (0x10, Local0, Local0)
                            }
                            Else
                            {
                                If (LEqual (And (CPL4, 0x0F0F), Arg0))
                                {
                                    Or (0x10, Local0, Local0)
                                }
                                Else
                                {
                                    If (LEqual (And (CPL5, 0x0F0F), Arg0))
                                    {
                                        Or (0x10, Local0, Local0)
                                    }
                                    Else
                                    {
                                        If (LEqual (And (CPL6, 0x0F0F), Arg0))
                                        {
                                            Or (0x10, Local0, Local0)
                                        }
                                        Else
                                        {
                                            If (LEqual (And (CPL7, 0x0F0F), Arg0))
                                            {
                                                Or (0x10, Local0, Local0)
                                            }
                                            Else
                                            {
                                                If (LEqual (And (CPL8, 0x0F0F), Arg0))
                                                {
                                                    Or (0x10, Local0, Local0)
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }

                    If (LEqual (And (CADL, 0x0F0F), Arg0))
                    {
                        Or (0x02, Local0, Local0)
                    }
                    Else
                    {
                        If (LEqual (And (CAL2, 0x0F0F), Arg0))
                        {
                            Or (0x02, Local0, Local0)
                        }
                        Else
                        {
                            If (LEqual (And (CAL3, 0x0F0F), Arg0))
                            {
                                Or (0x02, Local0, Local0)
                            }
                            Else
                            {
                                If (LEqual (And (CAL4, 0x0F0F), Arg0))
                                {
                                    Or (0x02, Local0, Local0)
                                }
                                Else
                                {
                                    If (LEqual (And (CAL5, 0x0F0F), Arg0))
                                    {
                                        Or (0x02, Local0, Local0)
                                    }
                                    Else
                                    {
                                        If (LEqual (And (CAL6, 0x0F0F), Arg0))
                                        {
                                            Or (0x02, Local0, Local0)
                                        }
                                        Else
                                        {
                                            If (LEqual (And (CAL7, 0x0F0F), Arg0))
                                            {
                                                Or (0x02, Local0, Local0)
                                            }
                                            Else
                                            {
                                                If (LEqual (And (CAL8, 0x0F0F), Arg0))
                                                {
                                                    Or (0x02, Local0, Local0)
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }

                    Return (Local0)
                }

                Method (NDDS, 1, NotSerialized)
                {
                    If (LEqual (And (NADL, 0x0F0F), Arg0))
                    {
                        Return (0x01)
                    }
                    Else
                    {
                        If (LEqual (And (NDL2, 0x0F0F), Arg0))
                        {
                            Return (0x01)
                        }
                        Else
                        {
                            If (LEqual (And (NDL3, 0x0F0F), Arg0))
                            {
                                Return (0x01)
                            }
                            Else
                            {
                                If (LEqual (And (NDL4, 0x0F0F), Arg0))
                                {
                                    Return (0x01)
                                }
                                Else
                                {
                                    If (LEqual (And (NDL5, 0x0F0F), Arg0))
                                    {
                                        Return (0x01)
                                    }
                                    Else
                                    {
                                        If (LEqual (And (NDL6, 0x0F0F), Arg0))
                                        {
                                            Return (0x01)
                                        }
                                        Else
                                        {
                                            If (LEqual (And (NDL7, 0x0F0F), Arg0))
                                            {
                                                Return (0x01)
                                            }
                                            Else
                                            {
                                                If (LEqual (And (NDL8, 0x0F0F), Arg0))
                                                {
                                                    Return (0x01)
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }

                    Return (0x00)
                }

                Device (LCD0)
                {
                    Method (_ADR, 0, NotSerialized)
                    {
                        If (LAnd (\WVIS, LGreaterEqual (\VHYB (0x03, 0x00), 0x01)))
                        {
                            Return (0x0410)
                        }
                        Else
                        {
                            Return (0x0400)
                        }
                    }

                    Method (_DCS, 0, NotSerialized)
                    {
                        Return (VCAD (MIDL))
                    }

                    Method (_DGS, 0, NotSerialized)
                    {
                        Return (NDDS (MIDL))
                    }

                    Method (_DSS, 1, NotSerialized)
                    {
                        And (Arg0, 0x01, VSDL)
                    }
                }

                Device (CRT0)
                {
                    Method (_ADR, 0, NotSerialized)
                    {
                        If (LAnd (\WVIS, LGreaterEqual (\VHYB (0x03, 0x00), 0x01)))
                        {
                            Return (0x80000100)
                        }
                        Else
                        {
                            Return (0x0100)
                        }
                    }

                    Method (_DCS, 0, NotSerialized)
                    {
                        Return (VCAD (MIDC))
                    }

                    Method (_DGS, 0, NotSerialized)
                    {
                        Return (NDDS (MIDC))
                    }

                    Method (_DSS, 1, NotSerialized)
                    {
                        And (Arg0, 0x01, VSDC)
                    }
                }

                Device (DVI0)
                {
                    Method (_ADR, 0, NotSerialized)
                    {
                        If (LAnd (\WVIS, LGreaterEqual (\VHYB (0x03, 0x00), 0x01)))
                        {
                            Return (0x80006330)
                        }
                        Else
                        {
                            Return (0x0300)
                        }
                    }

                    Method (_DCS, 0, NotSerialized)
                    {
                        Return (VCAD (MID0))
                    }

                    Method (_DGS, 0, NotSerialized)
                    {
                        Return (NDDS (MID0))
                    }

                    Method (_DSS, 1, NotSerialized)
                    {
                        And (Arg0, 0x01, VSD0)
                    }
                }

                Device (DVI1)
                {
                    Method (_ADR, 0, NotSerialized)
                    {
                        If (LAnd (\WVIS, LGreaterEqual (\VHYB (0x03, 0x00), 0x01)))
                        {
                            Return (0x80007331)
                        }
                        Else
                        {
                            Return (0x0301)
                        }
                    }

                    Method (_DCS, 0, NotSerialized)
                    {
                        Return (VCAD (MID1))
                    }

                    Method (_DGS, 0, NotSerialized)
                    {
                        Return (NDDS (MID1))
                    }

                    Method (_DSS, 1, NotSerialized)
                    {
                        And (Arg0, 0x01, VSD1)
                    }
                }

                Device (DVI2)
                {
                    Method (_ADR, 0, NotSerialized)
                    {
                        If (LAnd (\WVIS, LGreaterEqual (\VHYB (0x03, 0x00), 0x01)))
                        {
                            Return (0x80086342)
                        }
                        Else
                        {
                            Return (0x0302)
                        }
                    }

                    Method (_DCS, 0, NotSerialized)
                    {
                        Return (VCAD (MID2))
                    }

                    Method (_DGS, 0, NotSerialized)
                    {
                        Return (NDDS (MID2))
                    }

                    Method (_DSS, 1, NotSerialized)
                    {
                        And (Arg0, 0x01, VSD2)
                    }
                }

                Device (DVI3)
                {
                    Method (_ADR, 0, NotSerialized)
                    {
                        If (LAnd (\WVIS, LGreaterEqual (\VHYB (0x03, 0x00), 0x01)))
                        {
                            Return (0x80087355)
                        }
                        Else
                        {
                            Return (0x0303)
                        }
                    }

                    Method (_DCS, 0, NotSerialized)
                    {
                        Return (VCAD (MID3))
                    }

                    Method (_DGS, 0, NotSerialized)
                    {
                        Return (NDDS (MID3))
                    }

                    Method (_DSS, 1, NotSerialized)
                    {
                        And (Arg0, 0x01, VSD3)
                    }
                }

                Device (DVI4)
                {
                    Method (_ADR, 0, NotSerialized)
                    {
                        If (LAnd (\WVIS, LGreaterEqual (\VHYB (0x03, 0x00), 0x01)))
                        {
                            Return (0x80086354)
                        }
                        Else
                        {
                            Return (0x0304)
                        }
                    }

                    Method (_DCS, 0, NotSerialized)
                    {
                        Return (VCAD (MID4))
                    }

                    Method (_DGS, 0, NotSerialized)
                    {
                        Return (NDDS (MID4))
                    }

                    Method (_DSS, 1, NotSerialized)
                    {
                        And (Arg0, 0x01, VSD4)
                    }
                }

                Device (DVI5)
                {
                    Method (_ADR, 0, NotSerialized)
                    {
                        If (LAnd (\WVIS, LGreaterEqual (\VHYB (0x03, 0x00), 0x01)))
                        {
                            Return (0x80087343)
                        }
                        Else
                        {
                            Return (0x0305)
                        }
                    }

                    Method (_DCS, 0, NotSerialized)
                    {
                        Return (VCAD (MID5))
                    }

                    Method (_DGS, 0, NotSerialized)
                    {
                        Return (NDDS (MID5))
                    }

                    Method (_DSS, 1, NotSerialized)
                    {
                        And (Arg0, 0x01, VSD5)
                    }
                }

                OperationRegion (IGDP, PCI_Config, 0x40, 0xC0)
                Field (IGDP, AnyAcc, NoLock, Preserve)
                {
                            Offset (0x12), 
                        ,   1, 
                    GIVD,   1, 
                        ,   2, 
                    GUMA,   3, 
                            Offset (0x14), 
                        ,   4, 
                    GMFN,   1, 
                            Offset (0x18), 
                            Offset (0xA4), 
                    ASLE,   8, 
                            Offset (0xA8), 
                    GSSE,   1, 
                    GSSB,   14, 
                    GSES,   1, 
                            Offset (0xB0), 
                        ,   12, 
                    CDVL,   1, 
                            Offset (0xB2), 
                            Offset (0xB5), 
                    LBPC,   8, 
                            Offset (0xBC), 
                    ASLS,   32
                }

                OperationRegion (IGDM, SystemMemory, \ASLB, 0x2000)
                Field (IGDM, AnyAcc, NoLock, Preserve)
                {
                    SIGN,   128, 
                    SIZE,   32, 
                    OVER,   32, 
                    SVER,   256, 
                    VVER,   128, 
                    GVER,   128, 
                    MBOX,   32, 
                    DMOD,   32, 
                            Offset (0x100), 
                    DRDY,   32, 
                    CSTS,   32, 
                    CEVT,   32, 
                            Offset (0x120), 
                    DIDL,   32, 
                    DDL2,   32, 
                    DDL3,   32, 
                    DDL4,   32, 
                    DDL5,   32, 
                    DDL6,   32, 
                    DDL7,   32, 
                    DDL8,   32, 
                    CPDL,   32, 
                    CPL2,   32, 
                    CPL3,   32, 
                    CPL4,   32, 
                    CPL5,   32, 
                    CPL6,   32, 
                    CPL7,   32, 
                    CPL8,   32, 
                    CADL,   32, 
                    CAL2,   32, 
                    CAL3,   32, 
                    CAL4,   32, 
                    CAL5,   32, 
                    CAL6,   32, 
                    CAL7,   32, 
                    CAL8,   32, 
                    NADL,   32, 
                    NDL2,   32, 
                    NDL3,   32, 
                    NDL4,   32, 
                    NDL5,   32, 
                    NDL6,   32, 
                    NDL7,   32, 
                    NDL8,   32, 
                    ASLP,   32, 
                    TIDX,   32, 
                    CHPD,   32, 
                    CLID,   32, 
                    CDCK,   32, 
                    SXSW,   32, 
                    EVTS,   32, 
                    CNOT,   32, 
                    NRDY,   32, 
                            Offset (0x200), 
                    SCIE,   1, 
                    GEFC,   4, 
                    GXFC,   3, 
                    GESF,   8, 
                            Offset (0x204), 
                    PARM,   32, 
                    DSLP,   32, 
                            Offset (0x300), 
                    ARDY,   32, 
                    ASLC,   32, 
                    TCHE,   32, 
                    ALSI,   32, 
                    BCLP,   32, 
                    PFIT,   32, 
                    CBLV,   32, 
                    BCLM,   320, 
                    CPFM,   32, 
                    EPFM,   32, 
                    PLUT,   592, 
                    PFMB,   32, 
                    CCDV,   32, 
                    PCFT,   32, 
                            Offset (0x400), 
                    GVD1,   49152, 
                    PHED,   32, 
                    BDDC,   2048
                }

                Name (DBTB, Package (0x15)
                {
                    0x00, 
                    0x07, 
                    0x38, 
                    0x01C0, 
                    0x0E00, 
                    0x3F, 
                    0x01C7, 
                    0x0E07, 
                    0x01F8, 
                    0x0E38, 
                    0x0FC0, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x7000, 
                    0x7007, 
                    0x7038, 
                    0x71C0, 
                    0x7E00
                })
                Name (DBTC, Package (0x15)
                {
                    0x00, 
                    0x02, 
                    0x01, 
                    0x08, 
                    0x00, 
                    0x03, 
                    0x0A, 
                    0x00, 
                    0x09, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00, 
                    0x04, 
                    0x06, 
                    0x05, 
                    0x0C, 
                    0x00
                })
                Name (SUCC, 0x01)
                Name (NVLD, 0x02)
                Name (CRIT, 0x04)
                Name (NCRT, 0x06)
                Method (GSCI, 0, Serialized)
                {
                    If (LEqual (GEFC, 0x04))
                    {
                        Store (GBDA (), GXFC)
                    }

                    If (LEqual (GEFC, 0x06))
                    {
                        Store (SBCB (), GXFC)
                    }

                    Store (0x00, GEFC)
                    Store (0x01, \_SB.PCI0.LPC.SCIS)
                    Store (0x00, GSSE)
                    Store (0x00, SCIE)
                    Return (Zero)
                }

                Method (GBDA, 0, Serialized)
                {
                    If (LEqual (GESF, 0x00))
                    {
                        Store (0x0201, PARM)
                        Store (Zero, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x01))
                    {
                        Store (0x0202, PARM)
                        Store (Zero, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x04))
                    {
                        And (PARM, 0xEFFF0000, PARM)
                        And (PARM, ShiftLeft (DerefOf (Index (DBTB, IBTT)), 0x10), 
                            PARM)
                        Or (IBTT, PARM, PARM)
                        Store (Zero, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x05))
                    {
                        If (\_SB.LID._LID ())
                        {
                            Store (0x01, LIDS)
                        }
                        Else
                        {
                            Store (0x00, LIDS)
                        }

                        Store (IPSC, PARM)
                        Add (PARM, 0x01, PARM)
                        Add (PARM, 0x0300, PARM)
                        Add (PARM, 0x00010000, PARM)
                        Or (PARM, ShiftLeft (LIDS, 0x10), PARM)
                        Or (PARM, ShiftLeft (IBIA, 0x14), PARM)
                        Store (Zero, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x06))
                    {
                        Store (ITVF, PARM)
                        Or (PARM, ShiftLeft (ITVM, 0x04), PARM)
                        Store (Zero, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x07))
                    {
                        Store (0x01, PARM)
                        Or (PARM, ShiftLeft (0x03, 0x0B), PARM)
                        Or (PARM, ShiftLeft (0x03, 0x11), PARM)
                        Or (PARM, ShiftLeft (0x85, 0x15), PARM)
                        Store (0x01, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x0A))
                    {
                        Store (0x00, PARM)
                        Store (0x00, GESF)
                        Return (SUCC)
                    }

                    Store (Zero, GESF)
                    Return (CRIT)
                }

                Name (EXTD, 0x00)
                Method (SBCB, 0, Serialized)
                {
                    If (LEqual (GESF, 0x00))
                    {
                        Store (0x0101, PARM)
                        Store (Zero, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x01))
                    {
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x03))
                    {
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x04))
                    {
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x05))
                    {
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x06))
                    {
                        Store (And (PARM, 0x0F), ITVF)
                        Store (ShiftRight (And (PARM, 0xF0), 0x04), ITVM)
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x07))
                    {
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x08))
                    {
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x09))
                    {
                        And (PARM, 0x80000000, EXTD)
                        And (PARM, 0xFF, Local0)
                        If (LLessEqual (Local0, 0x14))
                        {
                            Store (DerefOf (Index (DBTC, Local0)), IBTT)
                        }
                        Else
                        {
                            Store (0x00, IBTT)
                        }

                        If (IBTT)
                        {
                            \UCMS (0x17)
                        }

                        And (PARM, 0xFF, IBTT)
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x0A))
                    {
                        Store (Subtract (And (PARM, 0x03), 0x01), IPSC)
                        \UCMS (0x1A)
                        If (And (ShiftRight (PARM, 0x08), 0xFF))
                        {
                            And (ShiftRight (PARM, 0x08), 0xFF, IPAT)
                            Decrement (IPAT)
                        }

                        And (ShiftRight (PARM, 0x14), 0x07, IBIA)
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x0B))
                    {
                        And (ShiftRight (PARM, 0x01), 0x01, IF1E)
                        If (And (PARM, ShiftLeft (0x0F, 0x0D)))
                        {
                            And (ShiftRight (PARM, 0x0D), 0x0F, IDMS)
                            Store (0x00, IDMM)
                        }
                        Else
                        {
                            And (ShiftRight (PARM, 0x11), 0x0F, IDMS)
                            Store (0x01, IDMM)
                        }

                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x10))
                    {
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x11))
                    {
                        Store (ShiftLeft (LIDS, 0x08), PARM)
                        Add (PARM, 0x0100, PARM)
                        Store (Zero, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x12))
                    {
                        If (And (PARM, 0x01))
                        {
                            If (LEqual (ShiftRight (PARM, 0x01), 0x01))
                            {
                                Store (0x01, ISSC)
                            }
                            Else
                            {
                                Store (Zero, GESF)
                                Return (CRIT)
                            }
                        }
                        Else
                        {
                            Store (0x00, ISSC)
                        }

                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x13))
                    {
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x14))
                    {
                        And (PARM, 0x0F, PAVP)
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    Store (Zero, GESF)
                    Return (SUCC)
                }

                Method (PDRD, 0, NotSerialized)
                {
                    If (LNot (DRDY))
                    {
                        Sleep (ASLP)
                    }

                    Return (LNot (DRDY))
                }

                Method (PSTS, 0, NotSerialized)
                {
                    If (LGreater (CSTS, 0x02))
                    {
                        Sleep (ASLP)
                    }

                    Return (LEqual (CSTS, 0x03))
                }

                Method (GNOT, 2, NotSerialized)
                {
                    If (PDRD ())
                    {
                        Return (0x01)
                    }

                    Store (Arg0, CEVT)
                    Store (0x03, CSTS)
                    If (LAnd (LEqual (CHPD, 0x00), LEqual (Arg1, 0x00)))
                    {
                        If (LNotEqual (Arg0, 0x01))
                        {
                            If (LAnd (\WXPF, LNot (\WVIS)))
                            {
                                Notify (\_SB.PCI0, Arg1)
                            }
                            Else
                            {
                                Notify (\_SB.PCI0.VID, Arg1)
                            }
                        }
                    }

                    If (LEqual (\VHYB (0x03, 0x00), 0x03))
                    {
                        Notify (\_SB.PCI0.VID, 0x81)
                    }
                    Else
                    {
                        Notify (\_SB.PCI0.VID, 0x80)
                    }

                    Return (0x00)
                }

                Method (GHDS, 1, NotSerialized)
                {
                    Store (Arg0, TIDX)
                    Return (GNOT (0x01, 0x00))
                }

                Method (GLID, 1, NotSerialized)
                {
                    Store (Arg0, CLID)
                    Return (GNOT (0x02, 0x00))
                }

                Method (GLIS, 1, NotSerialized)
                {
                    Store (Arg0, CLID)
                    Return (0x00)
                }

                Method (GDCK, 1, NotSerialized)
                {
                    Store (Arg0, CDCK)
                    Return (GNOT (0x04, 0x80))
                }

                Method (GDCS, 1, NotSerialized)
                {
                    Store (Arg0, CDCK)
                }

                Method (PARD, 0, NotSerialized)
                {
                    If (LNot (ARDY))
                    {
                        Sleep (ASLP)
                    }

                    Return (LNot (ARDY))
                }

                Method (AINT, 2, NotSerialized)
                {
                    If (LNot (And (TCHE, ShiftLeft (0x01, Arg0))))
                    {
                        Return (0x01)
                    }

                    If (PARD ())
                    {
                        Return (0x01)
                    }

                    If (LEqual (Arg0, 0x02))
                    {
                        XOr (PFIT, 0x07, PFIT)
                        Or (PFIT, 0x80000000, PFIT)
                        Store (0x04, ASLC)
                    }
                    Else
                    {
                        If (LEqual (Arg0, 0x01))
                        {
                            Store (Arg1, BCLP)
                            Or (BCLP, 0x80000000, BCLP)
                            Store (0x0A, ASLC)
                        }
                        Else
                        {
                            If (LEqual (Arg0, 0x03))
                            {
                                Store (Arg1, PFMB)
                                Or (PFMB, 0x80000100, PFMB)
                            }
                            Else
                            {
                                If (LEqual (Arg0, 0x00))
                                {
                                    Store (Arg1, ALSI)
                                    Store (0x01, ASLC)
                                }
                                Else
                                {
                                    Return (0x01)
                                }
                            }
                        }
                    }

                    Store (0x01, ASLE)
                    Return (0x00)
                }
            }

            Device (LPC)
            {
                Name (_ADR, 0x001F0000)
                Name (_S3D, 0x03)
                Name (RID, 0x00)
                Device (SIO)
                {
                    Name (_HID, EisaId ("PNP0C02"))
                    Name (_UID, 0x00)
                    Name (SCRS, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0010,             // Range Minimum
                            0x0010,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0090,             // Range Minimum
                            0x0090,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0024,             // Range Minimum
                            0x0024,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0028,             // Range Minimum
                            0x0028,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x002C,             // Range Minimum
                            0x002C,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0030,             // Range Minimum
                            0x0030,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0034,             // Range Minimum
                            0x0034,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0038,             // Range Minimum
                            0x0038,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x003C,             // Range Minimum
                            0x003C,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A4,             // Range Minimum
                            0x00A4,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A8,             // Range Minimum
                            0x00A8,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00AC,             // Range Minimum
                            0x00AC,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00B0,             // Range Minimum
                            0x00B0,             // Range Maximum
                            0x01,               // Alignment
                            0x06,               // Length
                            )
                        IO (Decode16,
                            0x00B8,             // Range Minimum
                            0x00B8,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00BC,             // Range Minimum
                            0x00BC,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0050,             // Range Minimum
                            0x0050,             // Range Maximum
                            0x01,               // Alignment
                            0x04,               // Length
                            )
                        IO (Decode16,
                            0x0072,             // Range Minimum
                            0x0072,             // Range Maximum
                            0x01,               // Alignment
                            0x06,               // Length
                            )
                        IO (Decode16,
                            0x164E,             // Range Minimum
                            0x164E,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x002E,             // Range Minimum
                            0x002E,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x1000,             // Range Minimum
                            0x1000,             // Range Maximum
                            0x01,               // Alignment
                            0x80,               // Length
                            )
                        IO (Decode16,
                            0x1180,             // Range Minimum
                            0x1180,             // Range Maximum
                            0x01,               // Alignment
                            0x80,               // Length
                            )
                        IO (Decode16,
                            0x0800,             // Range Minimum
                            0x0800,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x15E0,             // Range Minimum
                            0x15E0,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x1600,             // Range Minimum
                            0x1600,             // Range Maximum
                            0x01,               // Alignment
                            0x42,               // Length
                            )
                        IO (Decode16,
                            0x1644,             // Range Minimum
                            0x1644,             // Range Maximum
                            0x01,               // Alignment
                            0x3C,               // Length
                            )
                        Memory32Fixed (ReadWrite,
                            0xE0000000,         // Address Base
                            0x10000000,         // Address Length
                            )
                        Memory32Fixed (ReadWrite,
                            0x00000000,         // Address Base
                            0x00001000,         // Address Length
                            _Y25)
                        Memory32Fixed (ReadWrite,
                            0xFED1C000,         // Address Base
                            0x00004000,         // Address Length
                            )
                        Memory32Fixed (ReadWrite,
                            0xFED10000,         // Address Base
                            0x00004000,         // Address Length
                            )
                        Memory32Fixed (ReadWrite,
                            0xFED18000,         // Address Base
                            0x00001000,         // Address Length
                            )
                        Memory32Fixed (ReadWrite,
                            0xFED19000,         // Address Base
                            0x00001000,         // Address Length
                            )
                        Memory32Fixed (ReadWrite,
                            0xFED45000,         // Address Base
                            0x00007000,         // Address Length
                            )
                    })
                    CreateDWordField (SCRS, \_SB.PCI0.LPC.SIO._Y25._BAS, TRMB)
                    Method (_CRS, 0, NotSerialized)
                    {
                        Store (\TBAB, TRMB)
                        If (LEqual (\_SB.PCI0.LPC.TPM._STA (), 0x0F))
                        {
                            Return (SCRS)
                        }
                        Else
                        {
                            Subtract (SizeOf (SCRS), 0x02, Local0)
                            Name (BUF0, Buffer (Local0) {})
                            Add (Local0, SizeOf (\_SB.PCI0.LPC.TPM.BUF1), Local0)
                            Name (BUF1, Buffer (Local0) {})
                            Store (SCRS, BUF0)
                            Concatenate (BUF0, \_SB.PCI0.LPC.TPM.BUF1, BUF1)
                            Return (BUF1)
                        }
                    }
                }

                OperationRegion (LPCS, PCI_Config, 0x00, 0x0100)
                Field (LPCS, AnyAcc, NoLock, Preserve)
                {
                            Offset (0x60), 
                    PIRA,   8, 
                    PIRB,   8, 
                    PIRC,   8, 
                    PIRD,   8, 
                    SERQ,   8, 
                            Offset (0x68), 
                    PIRE,   8, 
                    PIRF,   8, 
                    PIRG,   8, 
                    PIRH,   8, 
                            Offset (0x80), 
                    XU1A,   3, 
                        ,   1, 
                    XU2A,   3, 
                            Offset (0x81), 
                    XPA,    2, 
                        ,   2, 
                    XFA,    1, 
                            Offset (0x82), 
                    XU1E,   1, 
                    XU2E,   1, 
                    XPE,    1, 
                    XFE,    1, 
                            Offset (0x84), 
                    XG1E,   1, 
                        ,   1, 
                    XG1A,   14, 
                            Offset (0x88), 
                    XG2E,   1, 
                        ,   1, 
                    XG2A,   14, 
                            Offset (0xA0), 
                        ,   2, 
                    CLKR,   1, 
                        ,   7, 
                    EXPE,   1, 
                            Offset (0xA2)
                }

                OperationRegion (LPIO, SystemIO, 0x1180, 0x80)
                Field (LPIO, DWordAcc, NoLock, Preserve)
                {
                            Offset (0x0C), 
                        ,   3, 
                    DOI0,   1, 
                    DOI1,   1, 
                    DOI2,   1, 
                            Offset (0x0D), 
                            Offset (0x0E), 
                        ,   6, 
                    GLIS,   1, 
                            Offset (0x0F), 
                            Offset (0x10)
                }

                OperationRegion (PMIO, SystemIO, 0x1000, 0x80)
                Field (PMIO, AnyAcc, NoLock, Preserve)
                {
                            Offset (0x42), 
                        ,   1, 
                    SWGE,   1, 
                            Offset (0x64), 
                        ,   9, 
                    SCIS,   1, 
                            Offset (0x66)
                }

                OperationRegion (IO_T, SystemIO, 0x0800, 0x10)
                Field (IO_T, ByteAcc, NoLock, Preserve)
                {
                    TRPI,   16, 
                            Offset (0x04), 
                            Offset (0x06), 
                            Offset (0x08), 
                    TRP0,   8, 
                            Offset (0x0A), 
                            Offset (0x0B), 
                            Offset (0x0C), 
                            Offset (0x0D), 
                            Offset (0x0E), 
                            Offset (0x0F), 
                            Offset (0x10)
                }

                Device (PIC)
                {
                    Name (_HID, EisaId ("PNP0000"))
                    Name (_CRS, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0020,             // Range Minimum
                            0x0020,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A0,             // Range Minimum
                            0x00A0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x04D0,             // Range Minimum
                            0x04D0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IRQNoFlags ()
                            {2}
                    })
                }

                Device (TIMR)
                {
                    Name (_HID, EisaId ("PNP0100"))
                    Name (_CRS, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0040,             // Range Minimum
                            0x0040,             // Range Maximum
                            0x01,               // Alignment
                            0x04,               // Length
                            )
                        IRQNoFlags ()
                            {0}
                    })
                }

                Device (HPET)
                {
                    Name (_HID, EisaId ("PNP0103"))
                    Method (_STA, 0, NotSerialized)
                    {
                        If (LAnd (\WNTF, LNot (\WXPF)))
                        {
                            Return (0x00)
                        }
                        Else
                        {
                            Return (0x0F)
                        }

                        Return (0x00)
                    }

                    Name (_CRS, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadOnly,
                            0xFED00000,         // Address Base
                            0x00000400,         // Address Length
                            )
                    })
                }

                Device (DMAC)
                {
                    Name (_HID, EisaId ("PNP0200"))
                    Name (_CRS, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0080,             // Range Minimum
                            0x0080,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x00C0,             // Range Minimum
                            0x00C0,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                        DMA (Compatibility, BusMaster, Transfer8_16, )
                            {4}
                    })
                }

                Device (SPKR)
                {
                    Name (_HID, EisaId ("PNP0800"))
                    Name (_CRS, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0061,             // Range Minimum
                            0x0061,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                    })
                }

                Device (FPU)
                {
                    Name (_HID, EisaId ("PNP0C04"))
                    Name (_CRS, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x00F0,             // Range Minimum
                            0x00F0,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IRQNoFlags ()
                            {13}
                    })
                }

                Device (RTC)
                {
                    Name (_HID, EisaId ("PNP0B00"))
                    Name (_CRS, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IRQNoFlags ()
                            {8}
                    })
                }

                Device (KBD)
                {
                    Name (_HID, EisaId ("PNP0303"))
                    Name (_CRS, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0060,             // Range Minimum
                            0x0060,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0064,             // Range Minimum
                            0x0064,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IRQNoFlags ()
                            {1}
                    })
                }

                Device (MOU)
                {
                    Name (_HID, EisaId ("IBM3780"))
                    Name (_CID, EisaId ("PNP0F13"))
                    Name (_CRS, ResourceTemplate ()
                    {
                        IRQNoFlags ()
                            {12}
                    })
                    Method (MHID, 0, NotSerialized)
                    {
                        If (\_SB.PCI0.LPC.PADD)
                        {
                            Store (0x80374D24, _HID)
                        }
                        Else
                        {
                            Store (0x1500AE30, _HID)
                        }
                    }
                }

                OperationRegion (IMGA, SystemIO, 0x15E0, 0x10)
                Field (IMGA, ByteAcc, NoLock, Preserve)
                {
                            Offset (0x01), 
                            Offset (0x02), 
                            Offset (0x03), 
                    WAKR,   16, 
                            Offset (0x0C), 
                    GAIX,   8, 
                            Offset (0x0E), 
                    GADT,   8, 
                            Offset (0x10)
                }

                IndexField (GAIX, GADT, ByteAcc, NoLock, Preserve)
                {
                            Offset (0x50), 
                        ,   3, 
                    IVPW,   1, 
                    DVPW,   1, 
                    BLPL,   1, 
                            Offset (0x51), 
                    TP4R,   1, 
                    PADR,   1, 
                    BPAD,   1, 
                        ,   1, 
                        ,   1, 
                    PADD,   1, 
                            Offset (0x60), 
                    EPWG,   1, 
                        ,   1, 
                    CSON,   1, 
                    DSCI,   1, 
                    DSCS,   1, 
                    DLAN,   1, 
                            Offset (0xC2), 
                    GAID,   8
                }

                OperationRegion (NCFG, SystemIO, 0x2E, 0x02)
                Field (NCFG, ByteAcc, NoLock, Preserve)
                {
                    INDX,   8, 
                    DATA,   8
                }

                IndexField (INDX, DATA, ByteAcc, NoLock, Preserve)
                {
                            Offset (0x07), 
                    LDN,    8, 
                            Offset (0x20), 
                    SIOD,   8, 
                            Offset (0x22), 
                    SCF2,   8, 
                            Offset (0x24), 
                    SCF4,   8, 
                        ,   2, 
                    PPSE,   1, 
                        ,   4, 
                    PNF,    1, 
                    FDCD,   1, 
                    PPD,    1, 
                    SP2D,   1, 
                    SP1D,   1, 
                        ,   1, 
                    GPSR,   2, 
                            Offset (0x27), 
                    SRID,   8, 
                            Offset (0x29), 
                    SCF9,   8, 
                            Offset (0x2B), 
                            Offset (0x30), 
                    LDA,    1, 
                            Offset (0x31), 
                            Offset (0x60), 
                    IOHI,   8, 
                    IOLW,   8, 
                            Offset (0x70), 
                    IRQN,   4, 
                    IRQW,   1, 
                            Offset (0x71), 
                    IRQT,   1, 
                    IRQL,   1, 
                            Offset (0x72), 
                            Offset (0x74), 
                    DMA0,   3, 
                            Offset (0x75), 
                    DMA1,   3, 
                            Offset (0x76)
                }

                IndexField (INDX, DATA, ByteAcc, NoLock, Preserve)
                {
                            Offset (0xF0), 
                    PTRS,   1, 
                    PPMC,   1, 
                        ,   2, 
                    PERA,   1, 
                    PMDS,   3
                }

                IndexField (INDX, DATA, ByteAcc, NoLock, Preserve)
                {
                            Offset (0xF0), 
                    STRS,   1, 
                    SPMC,   1, 
                    SBSY,   1, 
                        ,   4, 
                    SBSE,   1
                }

                IndexField (INDX, DATA, ByteAcc, NoLock, Preserve)
                {
                            Offset (0xF0), 
                    GPPS,   8, 
                    GPPC,   8, 
                    GPER,   8
                }

                OperationRegion (CFGS, SystemIO, 0x164E, 0x02)
                Field (CFGS, ByteAcc, NoLock, Preserve)
                {
                    NDXS,   8, 
                    ATAS,   8
                }

                IndexField (NDXS, ATAS, ByteAcc, NoLock, Preserve)
                {
                            Offset (0x07), 
                    LDNS,   8, 
                            Offset (0x20), 
                            Offset (0x21), 
                            Offset (0x22), 
                            Offset (0x23), 
                            Offset (0x24), 
                            Offset (0x25), 
                        ,   2, 
                    PSES,   1, 
                        ,   4, 
                    PNFS,   1, 
                    DCDS,   1, 
                    PPDS,   1, 
                    SP2S,   1, 
                    SP1S,   1, 
                        ,   1, 
                    PSRS,   2, 
                            Offset (0x27), 
                    RIDS,   8, 
                            Offset (0x29), 
                    CCSS,   2, 
                    CCES,   1, 
                    MCSS,   1, 
                    MESS,   1, 
                            Offset (0x2A), 
                            Offset (0x2B), 
                            Offset (0x30), 
                    LDAS,   1, 
                            Offset (0x31), 
                            Offset (0x60), 
                    OHIS,   8, 
                    OLWS,   8, 
                            Offset (0x70), 
                    RQNS,   4, 
                    RQWS,   1, 
                            Offset (0x71), 
                    RQTS,   1, 
                    RQLS,   1, 
                            Offset (0x72), 
                            Offset (0x74), 
                    MA0S,   3, 
                            Offset (0x75), 
                    MA1S,   3, 
                            Offset (0x76)
                }

                IndexField (NDXS, ATAS, ByteAcc, NoLock, Preserve)
                {
                            Offset (0xF0), 
                    TRSS,   1, 
                    PMCS,   1, 
                    BSYS,   1, 
                        ,   4, 
                    SESS,   1
                }

                OperationRegion (NSDL, SystemIO, 0x164C, 0x01)
                Field (NSDL, ByteAcc, NoLock, Preserve)
                {
                    DLPC,   8
                }

                OperationRegion (NSIO, SystemIO, 0x1680, 0x0C)
                Field (NSIO, ByteAcc, NoLock, Preserve)
                {
                    DRST,   1, 
                    DLPD,   1, 
                    ULRT,   1, 
                    ULPD,   1, 
                            Offset (0x01), 
                        ,   4, 
                    DKI0,   1, 
                            Offset (0x02), 
                            Offset (0x09), 
                    DKI1,   1, 
                    DKI2,   1
                }

                OperationRegion (DSIO, SystemIO, 0x1620, 0x0C)
                Field (DSIO, ByteAcc, NoLock, Preserve)
                {
                        ,   1, 
                    DUSB,   1, 
                            Offset (0x01)
                }

                Device (UART)
                {
                    Name (_HID, EisaId ("PNP0501"))
                    Name (_PRW, Package (0x02)
                    {
                        0x1D, 
                        0x03
                    })
                    Method (_PSW, 1, NotSerialized)
                    {
                        If (\H8DR)
                        {
                            If (Arg0)
                            {
                                Store (0x01, \_SB.PCI0.LPC.EC.HWRI)
                            }
                            Else
                            {
                                Store (0x00, \_SB.PCI0.LPC.EC.HWRI)
                            }
                        }
                        Else
                        {
                            If (Arg0)
                            {
                                \MBEC (0x32, 0xFF, 0x40)
                            }
                            Else
                            {
                                \MBEC (0x32, 0xBF, 0x00)
                            }
                        }
                    }

                    Method (_STA, 0, NotSerialized)
                    {
                        If (LEqual (SIOD, 0xFF))
                        {
                            Return (0x00)
                        }
                        Else
                        {
                            If (XU1E)
                            {
                                Return (0x0F)
                            }
                            Else
                            {
                                Return (0x0D)
                            }
                        }
                    }

                    Method (_DIS, 0, NotSerialized)
                    {
                        Store (0x00, XU1E)
                        Store (0x03, LDN)
                        Store (0x00, IRQN)
                        Store (0x00, LDA)
                        Store (0x01, SP1D)
                    }

                    Name (U1BF, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x01,               // Alignment
                            0x08,               // Length
                            _Y26)
                        IRQNoFlags (_Y27)
                            {}
                    })
                    CreateWordField (U1BF, \_SB.PCI0.LPC.UART._Y26._MIN, U1MN)
                    CreateWordField (U1BF, \_SB.PCI0.LPC.UART._Y26._MAX, U1MX)
                    CreateWordField (U1BF, \_SB.PCI0.LPC.UART._Y27._INT, U1IQ)
                    Method (_CRS, 0, NotSerialized)
                    {
                        Store (0x03, LDN)
                        Or (ShiftLeft (IOHI, 0x08), IOLW, Local0)
                        Store (Local0, U1MN)
                        Store (Local0, U1MX)
                        Store (IRQN, Local0)
                        If (Local0)
                        {
                            ShiftLeft (0x01, IRQN, U1IQ)
                        }
                        Else
                        {
                            Store (0x00, U1IQ)
                        }

                        Return (U1BF)
                    }

                    Name (_PRS, ResourceTemplate ()
                    {
                        StartDependentFn (0x00, 0x00)
                        {
                            IO (Decode16,
                                0x03F8,             // Range Minimum
                                0x03F8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {4}
                        }
                        StartDependentFn (0x01, 0x00)
                        {
                            IO (Decode16,
                                0x02F8,             // Range Minimum
                                0x02F8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {3}
                        }
                        StartDependentFn (0x01, 0x00)
                        {
                            IO (Decode16,
                                0x03E8,             // Range Minimum
                                0x03E8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {4}
                        }
                        StartDependentFn (0x01, 0x00)
                        {
                            IO (Decode16,
                                0x02E8,             // Range Minimum
                                0x02E8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {3}
                        }
                        StartDependentFn (0x02, 0x00)
                        {
                            IO (Decode16,
                                0x03F8,             // Range Minimum
                                0x03F8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {3,5,7}
                        }
                        StartDependentFn (0x02, 0x00)
                        {
                            IO (Decode16,
                                0x02F8,             // Range Minimum
                                0x02F8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {4,5,7}
                        }
                        StartDependentFn (0x02, 0x00)
                        {
                            IO (Decode16,
                                0x03E8,             // Range Minimum
                                0x03E8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {3,5,7}
                        }
                        StartDependentFn (0x02, 0x00)
                        {
                            IO (Decode16,
                                0x02E8,             // Range Minimum
                                0x02E8,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {4,5,7}
                        }
                        EndDependentFn ()
                    })
                    Method (_SRS, 1, NotSerialized)
                    {
                        CreateByteField (Arg0, 0x02, RUIL)
                        CreateByteField (Arg0, 0x03, RUIH)
                        CreateWordField (Arg0, 0x02, RUIO)
                        CreateWordField (Arg0, 0x09, RUIQ)
                        Store (0x03, LDN)
                        Store (0x00, LDA)
                        Store (RUIL, IOLW)
                        Store (RUIH, IOHI)
                        If (RUIQ)
                        {
                            FindSetRightBit (RUIQ, Local0)
                            Store (Decrement (Local0), IRQN)
                        }
                        Else
                        {
                            Store (0x00, IRQN)
                        }

                        Store (0x00, SP1D)
                        Store (0x01, LDA)
                        If (LEqual (RUIO, 0x03F8))
                        {
                            Store (0x00, XU1A)
                        }
                        Else
                        {
                            If (LEqual (RUIO, 0x02F8))
                            {
                                Store (0x01, XU1A)
                            }
                            Else
                            {
                                If (LEqual (RUIO, 0x03E8))
                                {
                                    Store (0x07, XU1A)
                                }
                                Else
                                {
                                    If (LEqual (RUIO, 0x02E8))
                                    {
                                        Store (0x05, XU1A)
                                    }
                                    Else
                                    {
                                        Fatal (0x02, 0x90020000, 0x01AA)
                                    }
                                }
                            }
                        }

                        Store (0x01, XU1E)
                        Store (0x01, SSBY)
                    }

                    Method (_PSC, 0, NotSerialized)
                    {
                        Store (0x03, LDN)
                        If (LDA)
                        {
                            Return (0x00)
                        }
                        Else
                        {
                            Return (0x03)
                        }
                    }

                    Method (_PS0, 0, NotSerialized)
                    {
                        Store (0x03, LDN)
                        Store (0x01, LDA)
                        Store (0x01, SSBY)
                    }

                    Method (_PS3, 0, NotSerialized)
                    {
                        Store (0x03, LDN)
                        Store (0x00, LDA)
                        Store (0x00, SSBY)
                    }
                }

                Device (LPT)
                {
                    Name (_HID, EisaId ("PNP0400"))
                    Method (_STA, 0, NotSerialized)
                    {
                        If (LEqual (SIOD, 0xFF))
                        {
                            Return (0x00)
                        }
                        Else
                        {
                            If (LNotEqual (\PMOD, 0x03))
                            {
                                If (XPE)
                                {
                                    Return (0x0F)
                                }
                                Else
                                {
                                    Return (0x0D)
                                }
                            }
                            Else
                            {
                                Return (0x00)
                            }
                        }
                    }

                    Method (_DIS, 0, NotSerialized)
                    {
                        Store (0x00, XPE)
                        Store (0x01, LDN)
                        Store (0x00, IRQN)
                        Store (0x00, LDA)
                        Store (0x01, PPD)
                    }

                    Name (PPBF, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x01,               // Alignment
                            0x00,               // Length
                            _Y28)
                        IRQNoFlags (_Y29)
                            {}
                    })
                    CreateWordField (PPBF, \_SB.PCI0.LPC.LPT._Y28._MIN, LPN0)
                    CreateWordField (PPBF, \_SB.PCI0.LPC.LPT._Y28._MAX, LPX0)
                    CreateByteField (PPBF, \_SB.PCI0.LPC.LPT._Y28._LEN, LPL0)
                    CreateWordField (PPBF, \_SB.PCI0.LPC.LPT._Y29._INT, LPIQ)
                    Method (_CRS, 0, NotSerialized)
                    {
                        If (LEqual (\PMOD, 0x03))
                        {
                            Return (PPBF)
                        }

                        Store (0x01, LDN)
                        Or (ShiftLeft (IOHI, 0x08), IOLW, Local0)
                        Store (Local0, LPN0)
                        Store (Local0, LPX0)
                        If (LEqual (Local0, 0x03BC))
                        {
                            Store (0x03, LPL0)
                        }
                        Else
                        {
                            Store (0x08, LPL0)
                        }

                        Store (IRQN, Local0)
                        If (Local0)
                        {
                            ShiftLeft (0x01, IRQN, LPIQ)
                        }
                        Else
                        {
                            Store (0x00, LPIQ)
                        }

                        Return (PPBF)
                    }

                    Method (_PRS, 0, NotSerialized)
                    {
                        If (\PMOD)
                        {
                            Return (PEPP)
                        }
                        Else
                        {
                            Return (PLPT)
                        }
                    }

                    Name (PLPT, ResourceTemplate ()
                    {
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x03BC,             // Range Minimum
                                0x03BC,             // Range Maximum
                                0x01,               // Alignment
                                0x03,               // Length
                                )
                            IRQNoFlags ()
                                {7}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x0378,             // Range Minimum
                                0x0378,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {7}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x0278,             // Range Minimum
                                0x0278,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {5}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x03BC,             // Range Minimum
                                0x03BC,             // Range Maximum
                                0x01,               // Alignment
                                0x03,               // Length
                                )
                            IRQNoFlags ()
                                {5}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x0378,             // Range Minimum
                                0x0378,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {5}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x0278,             // Range Minimum
                                0x0278,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {7}
                        }
                        EndDependentFn ()
                    })
                    Name (PEPP, ResourceTemplate ()
                    {
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x0378,             // Range Minimum
                                0x0378,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {7}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x0278,             // Range Minimum
                                0x0278,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {5}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x0378,             // Range Minimum
                                0x0378,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {5}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x0278,             // Range Minimum
                                0x0278,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {7}
                        }
                        EndDependentFn ()
                    })
                    Method (_SRS, 1, NotSerialized)
                    {
                        CreateByteField (Arg0, 0x02, RLIL)
                        CreateByteField (Arg0, 0x03, RLIH)
                        CreateWordField (Arg0, 0x02, RLIO)
                        CreateWordField (Arg0, 0x09, RLIQ)
                        Store (0x01, LDN)
                        Store (0x00, LDA)
                        Store (RLIL, IOLW)
                        Store (RLIH, IOHI)
                        If (RLIQ)
                        {
                            FindSetRightBit (RLIQ, Local0)
                            Store (Decrement (Local0), IRQN)
                        }
                        Else
                        {
                            Store (0x00, IRQN)
                        }

                        If (LEqual (\PMOD, 0x00))
                        {
                            If (\PDIR)
                            {
                                Store (0x01, PMDS)
                            }
                            Else
                            {
                                Store (0x00, PMDS)
                            }
                        }
                        Else
                        {
                            If (LEqual (\PMOD, 0x01))
                            {
                                Store (0x02, PMDS)
                            }
                            Else
                            {
                                Store (0x03, PMDS)
                            }
                        }

                        Store (0x00, PPD)
                        Store (0x01, LDA)
                        If (LEqual (RLIO, 0x0378))
                        {
                            Store (0x00, XPA)
                        }
                        Else
                        {
                            If (LEqual (RLIO, 0x0278))
                            {
                                Store (0x01, XPA)
                            }
                            Else
                            {
                                If (LEqual (RLIO, 0x03BC))
                                {
                                    Store (0x02, XPA)
                                }
                                Else
                                {
                                    Fatal (0x02, 0x90020000, 0x01CF)
                                }
                            }
                        }

                        Store (0x01, XPE)
                    }

                    Method (_PSC, 0, NotSerialized)
                    {
                        Store (0x01, LDN)
                        If (LDA)
                        {
                            Return (0x00)
                        }
                        Else
                        {
                            Return (0x03)
                        }
                    }

                    Method (_PS0, 0, NotSerialized)
                    {
                        Store (0x01, LDN)
                        Store (0x01, LDA)
                    }

                    Method (_PS3, 0, NotSerialized)
                    {
                        Store (0x01, LDN)
                        Store (0x00, LDA)
                    }
                }

                Device (ECP)
                {
                    Name (_HID, EisaId ("PNP0401"))
                    Method (_STA, 0, NotSerialized)
                    {
                        If (LEqual (SIOD, 0xFF))
                        {
                            Return (0x00)
                        }
                        Else
                        {
                            If (LEqual (\PMOD, 0x03))
                            {
                                If (XPE)
                                {
                                    Return (0x0F)
                                }
                                Else
                                {
                                    Return (0x0D)
                                }
                            }
                            Else
                            {
                                Return (0x00)
                            }
                        }
                    }

                    Method (_DIS, 0, NotSerialized)
                    {
                        Store (0x00, XPE)
                        Store (0x01, LDN)
                        Store (0x00, IRQN)
                        Store (0x00, LDA)
                        Store (0x01, PPD)
                    }

                    Name (EPBF, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x01,               // Alignment
                            0x00,               // Length
                            _Y2A)
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x01,               // Alignment
                            0x00,               // Length
                            _Y2B)
                        IRQNoFlags (_Y2C)
                            {}
                        DMA (Compatibility, NotBusMaster, Transfer8, _Y2D)
                            {}
                    })
                    CreateWordField (EPBF, \_SB.PCI0.LPC.ECP._Y2A._MIN, ECN0)
                    CreateWordField (EPBF, \_SB.PCI0.LPC.ECP._Y2A._MAX, ECX0)
                    CreateByteField (EPBF, \_SB.PCI0.LPC.ECP._Y2A._LEN, ECL0)
                    CreateWordField (EPBF, \_SB.PCI0.LPC.ECP._Y2B._MIN, ECN1)
                    CreateWordField (EPBF, \_SB.PCI0.LPC.ECP._Y2B._MAX, ECX1)
                    CreateByteField (EPBF, \_SB.PCI0.LPC.ECP._Y2B._LEN, ECL1)
                    CreateWordField (EPBF, \_SB.PCI0.LPC.ECP._Y2C._INT, ECIQ)
                    CreateWordField (EPBF, \_SB.PCI0.LPC.ECP._Y2D._DMA, ECDQ)
                    Method (_CRS, 0, NotSerialized)
                    {
                        If (LNotEqual (\PMOD, 0x03))
                        {
                            Return (EPBF)
                        }

                        Store (0x01, LDN)
                        Or (ShiftLeft (IOHI, 0x08), IOLW, Local0)
                        Store (Local0, ECN0)
                        Store (Local0, ECX0)
                        Add (Local0, 0x0400, ECN1)
                        Add (Local0, 0x0400, ECX1)
                        If (LEqual (Local0, 0x03BC))
                        {
                            Store (0x03, ECL0)
                            Store (0x03, ECL1)
                        }
                        Else
                        {
                            Store (0x08, ECL0)
                            Store (0x08, ECL1)
                        }

                        Store (IRQN, Local0)
                        If (Local0)
                        {
                            ShiftLeft (0x01, IRQN, ECIQ)
                        }
                        Else
                        {
                            Store (0x00, ECIQ)
                        }

                        Store (DMA0, Local0)
                        If (LLess (Local0, 0x04))
                        {
                            ShiftLeft (0x01, Local0, ECDQ)
                        }
                        Else
                        {
                            Store (0x00, ECDQ)
                        }

                        Return (EPBF)
                    }

                    Name (_PRS, ResourceTemplate ()
                    {
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x0378,             // Range Minimum
                                0x0378,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IO (Decode16,
                                0x0778,             // Range Minimum
                                0x0778,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {7}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {0,1,3}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x0278,             // Range Minimum
                                0x0278,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IO (Decode16,
                                0x0678,             // Range Minimum
                                0x0678,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {5}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {0,1,3}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x03BC,             // Range Minimum
                                0x03BC,             // Range Maximum
                                0x01,               // Alignment
                                0x03,               // Length
                                )
                            IO (Decode16,
                                0x07BC,             // Range Minimum
                                0x07BC,             // Range Maximum
                                0x01,               // Alignment
                                0x03,               // Length
                                )
                            IRQNoFlags ()
                                {7}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {0,1,3}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x0378,             // Range Minimum
                                0x0378,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IO (Decode16,
                                0x0778,             // Range Minimum
                                0x0778,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {5}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {0,1,3}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x0278,             // Range Minimum
                                0x0278,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IO (Decode16,
                                0x0678,             // Range Minimum
                                0x0678,             // Range Maximum
                                0x01,               // Alignment
                                0x08,               // Length
                                )
                            IRQNoFlags ()
                                {7}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {0,1,3}
                        }
                        StartDependentFnNoPri ()
                        {
                            IO (Decode16,
                                0x03BC,             // Range Minimum
                                0x03BC,             // Range Maximum
                                0x01,               // Alignment
                                0x03,               // Length
                                )
                            IO (Decode16,
                                0x07BC,             // Range Minimum
                                0x07BC,             // Range Maximum
                                0x01,               // Alignment
                                0x03,               // Length
                                )
                            IRQNoFlags ()
                                {5}
                            DMA (Compatibility, NotBusMaster, Transfer8, )
                                {0,1,3}
                        }
                        EndDependentFn ()
                    })
                    Method (_SRS, 1, NotSerialized)
                    {
                        CreateByteField (Arg0, 0x02, RLIL)
                        CreateByteField (Arg0, 0x03, RLIH)
                        CreateWordField (Arg0, 0x02, RLIO)
                        CreateWordField (Arg0, 0x11, RLIQ)
                        CreateByteField (Arg0, 0x14, RLDQ)
                        Store (0x01, LDN)
                        Store (0x00, LDA)
                        Store (0x07, PMDS)
                        Store (0x01, PERA)
                        Store (RLIL, IOLW)
                        Store (RLIH, IOHI)
                        If (RLIQ)
                        {
                            FindSetRightBit (RLIQ, Local0)
                            Store (Decrement (Local0), IRQN)
                        }
                        Else
                        {
                            Store (0x00, IRQN)
                        }

                        If (And (RLDQ, 0x0F))
                        {
                            FindSetRightBit (RLDQ, Local0)
                            Store (Decrement (Local0), DMA0)
                        }
                        Else
                        {
                            Store (0x04, DMA0)
                        }

                        Store (0x00, PPD)
                        Store (0x01, LDA)
                        If (LEqual (RLIO, 0x0378))
                        {
                            Store (0x00, XPA)
                        }
                        Else
                        {
                            If (LEqual (RLIO, 0x0278))
                            {
                                Store (0x01, XPA)
                            }
                            Else
                            {
                                If (LEqual (RLIO, 0x03BC))
                                {
                                    Store (0x02, XPA)
                                }
                                Else
                                {
                                    Fatal (0x02, 0x90020000, 0x039F)
                                }
                            }
                        }

                        Store (0x01, XPE)
                    }

                    Method (_PSC, 0, NotSerialized)
                    {
                        Store (0x01, LDN)
                        If (LDA)
                        {
                            Return (0x00)
                        }
                        Else
                        {
                            Return (0x03)
                        }
                    }

                    Method (_PS0, 0, NotSerialized)
                    {
                        Store (0x01, LDN)
                        Store (0x01, LDA)
                    }

                    Method (_PS3, 0, NotSerialized)
                    {
                        Store (0x01, LDN)
                        Store (0x00, LDA)
                    }
                }

                Device (TPM)
                {
                    Method (_HID, 0, NotSerialized)
                    {
                        TPHY (0x00)
                        If (LEqual (TPMV, 0x01))
                        {
                            Return (0x0201D824)
                        }

                        If (LEqual (TPMV, 0x02))
                        {
                            Return (0x0435CF4D)
                        }

                        If (LEqual (TPMV, 0x03))
                        {
                            Return (0x02016D08)
                        }

                        If (LEqual (TPMV, 0x04))
                        {
                            Return (0x01016D08)
                        }

                        If (LOr (LEqual (TPMV, 0x05), LEqual (TPMV, 0x06)))
                        {
                            Return (0x0010A35C)
                        }

                        If (LEqual (TPMV, 0x08))
                        {
                            Return (0x00128D06)
                        }

                        If (LEqual (TPMV, 0x09))
                        {
                            Return ("INTC0102")
                        }

                        If (LEqual (TPMV, 0x0A))
                        {
                            Return ("SMO1200")
                        }

                        Return (0x310CD041)
                    }

                    Name (_CID, EisaId ("PNP0C31"))
                    Name (_UID, 0x01)
                    Method (_STA, 0, NotSerialized)
                    {
                        TPHY (0x00)
                        If (TPRS)
                        {
                            Return (0x0F)
                        }

                        Return (0x00)
                    }

                    Name (BUF1, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadOnly,
                            0xFED40000,         // Address Base
                            0x00005000,         // Address Length
                            )
                    })
                    Method (_CRS, 0, Serialized)
                    {
                        Return (BUF1)
                    }

                    Method (UCMP, 2, NotSerialized)
                    {
                        If (LNotEqual (0x10, SizeOf (Arg0)))
                        {
                            Return (0x00)
                        }

                        If (LNotEqual (0x10, SizeOf (Arg1)))
                        {
                            Return (0x00)
                        }

                        Store (0x00, Local0)
                        While (LLess (Local0, 0x10))
                        {
                            If (LNotEqual (DerefOf (Index (Arg0, Local0)), DerefOf (Index (
                                Arg1, Local0))))
                            {
                                Return (0x00)
                            }

                            Increment (Local0)
                        }

                        Return (0x01)
                    }

                    Method (_DSM, 4, Serialized)
                    {
                        Name (PPRC, 0x00)
                        Name (RQS1, Package (0x02)
                        {
                            0x0C, 
                            0x0D
                        })
                        Name (TTMP, Buffer (0x01)
                        {
                            0x00
                        })
                        CreateByteField (TTMP, 0x00, TMPV)
                        If (LEqual (UCMP (Arg0, Buffer (0x10)
                                    {
                                        /* 0000 */    0xA6, 0xFA, 0xDD, 0x3D, 0x1B, 0x36, 0xB4, 0x4E, 
                                        /* 0008 */    0xA4, 0x24, 0x8D, 0x10, 0x08, 0x9D, 0x16, 0x53
                                    }), 0x01))
                        {
                            If (LEqual (Arg2, 0x00))
                            {
                                Return (Buffer (0x01)
                                {
                                    0x7F
                                })
                            }

                            If (LEqual (Arg2, 0x01))
                            {
                                Return (Buffer (0x04)
                                {
                                    "1.0"
                                })
                            }

                            If (LEqual (Arg2, 0x02))
                            {
                                If (TPRS)
                                {
                                    Store (0x00, PPRC)
                                    If (LFLS ())
                                    {
                                        Store (0x02, PPRC)
                                    }
                                    Else
                                    {
                                        If (LEqual (DerefOf (Index (Arg3, 0x00)), 0x00))
                                        {
                                            Store (0x00, PPRQ)
                                        }

                                        If (LEqual (DerefOf (Index (Arg3, 0x00)), 0x01))
                                        {
                                            Store (0x01, PPRQ)
                                        }

                                        If (LEqual (DerefOf (Index (Arg3, 0x00)), 0x02))
                                        {
                                            Store (0x02, PPRQ)
                                        }

                                        If (LEqual (DerefOf (Index (Arg3, 0x00)), 0x03))
                                        {
                                            Store (0x03, PPRQ)
                                        }

                                        If (LEqual (DerefOf (Index (Arg3, 0x00)), 0x04))
                                        {
                                            Store (0x04, PPRQ)
                                        }

                                        If (LEqual (DerefOf (Index (Arg3, 0x00)), 0x05))
                                        {
                                            Store (0x05, PPRQ)
                                        }

                                        If (LEqual (DerefOf (Index (Arg3, 0x00)), 0x06))
                                        {
                                            Store (0x06, PPRQ)
                                        }

                                        If (LEqual (DerefOf (Index (Arg3, 0x00)), 0x07))
                                        {
                                            Store (0x07, PPRQ)
                                        }

                                        If (LEqual (DerefOf (Index (Arg3, 0x00)), 0x08))
                                        {
                                            Store (0x08, PPRQ)
                                        }

                                        If (LEqual (DerefOf (Index (Arg3, 0x00)), 0x09))
                                        {
                                            Store (0x09, PPRQ)
                                        }

                                        If (LEqual (DerefOf (Index (Arg3, 0x00)), 0x0A))
                                        {
                                            Store (0x0A, PPRQ)
                                        }

                                        If (LEqual (DerefOf (Index (Arg3, 0x00)), 0x0B))
                                        {
                                            Store (0x0B, PPRQ)
                                        }

                                        If (LEqual (DerefOf (Index (Arg3, 0x00)), 0x0C))
                                        {
                                            Store (0x0C, PPRQ)
                                            Return (0x01)
                                        }

                                        If (LEqual (DerefOf (Index (Arg3, 0x00)), 0x0D))
                                        {
                                            Store (0x0D, PPRQ)
                                            Return (0x01)
                                        }

                                        If (LEqual (DerefOf (Index (Arg3, 0x00)), 0x0E))
                                        {
                                            Store (0x0E, PPRQ)
                                        }

                                        If (LGreaterEqual (DerefOf (Index (Arg3, 0x00)), 0x0F))
                                        {
                                            Return (0x01)
                                        }

                                        SFLS ()
                                        Return (PPRC)
                                    }
                                }

                                Return (0x01)
                            }

                            If (LEqual (Arg2, 0x03))
                            {
                                Name (TMP1, Package (0x02)
                                {
                                    0x00, 
                                    0xFFFFFFFF
                                })
                                If (LFLS ())
                                {
                                    Store (0x01, Index (TMP1, 0x00))
                                    Return (TMP1)
                                }

                                Store (PPRQ, Index (TMP1, 0x01))
                                Return (TMP1)
                            }

                            If (LEqual (Arg2, 0x04))
                            {
                                Return (0x01)
                            }

                            If (LEqual (Arg2, 0x05))
                            {
                                Name (TMP2, Package (0x03)
                                {
                                    0x00, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF
                                })
                                If (LFLS ())
                                {
                                    Store (0x01, Index (TMP2, 0x00))
                                    Return (TMP2)
                                }

                                Store (PPLO, Index (TMP2, 0x01))
                                If (LGreater (PPLO, 0x0E))
                                {
                                    Store (0xFFFFFFF1, Index (TMP2, 0x02))
                                    Return (TMP2)
                                }

                                If (LEqual (PPRQ, 0x1F))
                                {
                                    Store (0xFFFFFFF1, Index (TMP2, 0x02))
                                    Return (TMP2)
                                }

                                If (PPOR)
                                {
                                    Store (0xFFFFFFF0, Index (TMP2, 0x02))
                                    Return (TMP2)
                                }

                                Store (0x00, Index (TMP2, 0x02))
                                Return (TMP2)
                            }

                            If (LEqual (Arg2, 0x06))
                            {
                                CreateByteField (Arg3, 0x04, LAN0)
                                CreateByteField (Arg3, 0x05, LAN1)
                                If (LOr (LEqual (LAN0, 0x65), LEqual (LAN0, 0x45)))
                                {
                                    If (LOr (LEqual (LAN1, 0x6E), LEqual (LAN1, 0x4E)))
                                    {
                                        Return (0x00)
                                    }
                                }

                                Return (0x01)
                            }

                            Return (0x01)
                        }

                        If (LEqual (UCMP (Arg0, Buffer (0x10)
                                    {
                                        /* 0000 */    0xED, 0x54, 0x60, 0x37, 0x13, 0xCC, 0x75, 0x46, 
                                        /* 0008 */    0x90, 0x1C, 0x47, 0x56, 0xD7, 0xF2, 0xD4, 0x5D
                                    }), 0x01))
                        {
                            If (LEqual (Arg2, 0x00))
                            {
                                Return (Buffer (0x01)
                                {
                                    0x01
                                })
                            }

                            If (LEqual (Arg2, 0x01))
                            {
                                If (LEqual (DerefOf (Index (Arg3, 0x00)), 0x00))
                                {
                                    If (LFLS ())
                                    {
                                        Return (0x02)
                                    }

                                    Store (0x00, MOR)
                                    SFLS ()
                                    Return (0x00)
                                }

                                If (LEqual (DerefOf (Index (Arg3, 0x00)), 0x01))
                                {
                                    If (LFLS ())
                                    {
                                        Return (0x02)
                                    }

                                    Store (0x01, MOR)
                                    SFLS ()
                                    Return (0x00)
                                }
                            }

                            Return (0x01)
                        }

                        Return (Buffer (0x01)
                        {
                            0x00
                        })
                    }

                    Method (LFLS, 0, NotSerialized)
                    {
                        Name (TMPB, Buffer (0x02)
                        {
                            0x00, 0x00
                        })
                        CreateByteField (TMPB, 0x00, LPCT)
                        CreateByteField (TMPB, 0x01, SSUM)
                        TPHY (0x00)
                        Store (PH02, LPCT)
                        If (LPCT)
                        {
                            Store (0x00, SSUM)
                            Add (SSUM, PH01, SSUM)
                            Add (SSUM, PH02, SSUM)
                            Add (SSUM, PH03, SSUM)
                            Add (SSUM, PPRQ, SSUM)
                            Add (SSUM, PPLO, SSUM)
                            Add (SSUM, PPRP, SSUM)
                            Add (SSUM, PPOR, SSUM)
                            Add (SSUM, TPRS, SSUM)
                            Add (SSUM, TPMV, SSUM)
                            Add (SSUM, MOR, SSUM)
                            Add (SSUM, RSV0, SSUM)
                            If (SSUM) {}
                            Else
                            {
                                Return (0x00)
                            }

                            Return (0x02)
                        }
                    }

                    Method (SFLS, 0, NotSerialized)
                    {
                        Name (TMPB, Buffer (0x02)
                        {
                            0x00, 0x00
                        })
                        CreateByteField (TMPB, 0x00, LPCT)
                        CreateByteField (TMPB, 0x01, SSUM)
                        Store (PH02, LPCT)
                        If (LPCT)
                        {
                            Store (0x00, SSUM)
                            Add (SSUM, PH01, SSUM)
                            Add (SSUM, PH02, SSUM)
                            Add (SSUM, PH03, SSUM)
                            Add (SSUM, PPRQ, SSUM)
                            Add (SSUM, PPLO, SSUM)
                            Add (SSUM, PPRP, SSUM)
                            Add (SSUM, PPOR, SSUM)
                            Add (SSUM, TPRS, SSUM)
                            Add (SSUM, TPMV, SSUM)
                            Add (SSUM, MOR, SSUM)
                            Add (SSUM, RSV0, SSUM)
                            Subtract (0x00, SSUM, PH03)
                            TPHY (0x01)
                            Return (0x00)
                        }
                        Else
                        {
                            Return (0x02)
                        }
                    }
                }

                Device (EC)
                {
                    Name (_HID, EisaId ("PNP0C09"))
                    Name (_UID, 0x00)
                    Name (_GPE, 0x11)
                    Method (_REG, 2, NotSerialized)
                    {
                        If (LEqual (Arg0, 0x03))
                        {
                            Store (Arg1, \H8DR)
                        }
                    }

                    OperationRegion (ECOR, EmbeddedControl, 0x00, 0x0100)
                    Field (ECOR, ByteAcc, NoLock, Preserve)
                    {
                        HDBM,   1, 
                            ,   1, 
                            ,   1, 
                        HFNE,   1, 
                            ,   1, 
                            ,   1, 
                        HLDM,   1, 
                                Offset (0x01), 
                            ,   1, 
                        BTCM,   1, 
                            ,   1, 
                            ,   1, 
                            ,   1, 
                        HBPR,   1, 
                        BTPC,   1, 
                                Offset (0x02), 
                        HDUE,   1, 
                            ,   4, 
                        SNLK,   1, 
                                Offset (0x03), 
                            ,   1, 
                        HETE,   1, 
                            ,   3, 
                        HAUM,   2, 
                                Offset (0x05), 
                        HSPA,   1, 
                                Offset (0x06), 
                        HSUN,   8, 
                        HSRP,   8, 
                                Offset (0x0C), 
                        HLCL,   8, 
                                Offset (0x0E), 
                        HFNS,   2, 
                                Offset (0x0F), 
                            ,   6, 
                        NULS,   1, 
                                Offset (0x10), 
                        HAM0,   8, 
                        HAM1,   8, 
                        HAM2,   8, 
                        HAM3,   8, 
                        HAM4,   8, 
                        HAM5,   8, 
                        HAM6,   8, 
                        HAM7,   8, 
                        HAM8,   8, 
                        HAM9,   8, 
                        HAMA,   8, 
                        HAMB,   8, 
                        HAMC,   8, 
                        HAMD,   8, 
                        HAME,   8, 
                        HAMF,   8, 
                                Offset (0x23), 
                        HANT,   8, 
                                Offset (0x26), 
                            ,   1, 
                            ,   1, 
                        HANA,   2, 
                            ,   1, 
                            ,   1, 
                                Offset (0x2A), 
                        HATR,   8, 
                        HT0H,   8, 
                        HT0L,   8, 
                        HT1H,   8, 
                        HT1L,   8, 
                        HFSP,   8, 
                            ,   6, 
                        HMUT,   1, 
                                Offset (0x31), 
                            ,   2, 
                        HUWB,   1, 
                                Offset (0x32), 
                        HWPM,   1, 
                        HWLB,   1, 
                        HWLO,   1, 
                        HWDK,   1, 
                        HWFN,   1, 
                        HWBT,   1, 
                        HWRI,   1, 
                        HWBU,   1, 
                        HWLU,   1, 
                                Offset (0x34), 
                            ,   7, 
                        HPLO,   1, 
                                Offset (0x36), 
                                Offset (0x38), 
                        HB0S,   7, 
                        HB0A,   1, 
                        HB1S,   7, 
                        HB1A,   1, 
                        HCMU,   1, 
                            ,   2, 
                        OVRQ,   1, 
                        DCBD,   1, 
                        DCWL,   1, 
                        DCWW,   1, 
                        HB1I,   1, 
                            ,   1, 
                        KBLT,   1, 
                        BTPW,   1, 
                        BTDT,   1, 
                        HUBS,   1, 
                        BDPW,   1, 
                        BDDT,   1, 
                        HUBB,   1, 
                                Offset (0x46), 
                            ,   1, 
                        BTWK,   1, 
                        HPLD,   1, 
                            ,   1, 
                        HPAC,   1, 
                        BTST,   1, 
                                Offset (0x47), 
                        HPBU,   1, 
                            ,   1, 
                        HBID,   1, 
                            ,   3, 
                        HBCS,   1, 
                        HPNF,   1, 
                            ,   1, 
                        GSTS,   1, 
                            ,   2, 
                        HLBU,   1, 
                        DOCD,   1, 
                        HCBL,   1, 
                                Offset (0x4C), 
                        HTMH,   8, 
                        HTML,   8, 
                        HWAK,   16, 
                        HMPR,   8, 
                            ,   7, 
                        HMDN,   1, 
                                Offset (0x78), 
                        TMP0,   8, 
                                Offset (0x80), 
                                Offset (0x81), 
                        HIID,   8, 
                                Offset (0x83), 
                        HFNI,   8, 
                        HSPD,   16, 
                                Offset (0x88), 
                        TSL0,   7, 
                        TSR0,   1, 
                        TSL1,   7, 
                        TSR1,   1, 
                        TSL2,   7, 
                        TSR2,   1, 
                        TSL3,   7, 
                        TSR3,   1, 
                                Offset (0x8D), 
                        HDAA,   3, 
                        HDAB,   3, 
                        HDAC,   2, 
                                Offset (0xB0), 
                        HDEN,   32, 
                        HDEP,   32, 
                        HDEM,   8, 
                        HDES,   8, 
                                Offset (0xC8), 
                        ATMX,   8, 
                        HWAT,   8, 
                                Offset (0xCC), 
                        PWMH,   8, 
                        PWML,   8, 
                                Offset (0xED), 
                            ,   4, 
                        HDDD,   1
                    }

                    Method (_INI, 0, NotSerialized)
                    {
                        If (\H8DR)
                        {
                            Store (0x00, HSPA)
                        }
                        Else
                        {
                            \MBEC (0x05, 0xFE, 0x00)
                        }

                        BINI ()
                        \_SB.PCI0.LPC.EC.HKEY.WGIN ()
                    }

                    Name (_CRS, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0062,             // Range Minimum
                            0x0062,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0066,             // Range Minimum
                            0x0066,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                    })
                    Method (LED, 2, NotSerialized)
                    {
                        Or (Arg0, Arg1, Local0)
                        If (\H8DR)
                        {
                            Store (Local0, HLCL)
                        }
                        Else
                        {
                            \WBEC (0x0C, Local0)
                        }
                    }

                    Name (BAON, 0x00)
                    Name (WBON, 0x00)
                    Method (BEEP, 1, NotSerialized)
                    {
                        If (LEqual (Arg0, 0x05))
                        {
                            Store (0x00, WBON)
                        }

                        Store (WBON, Local2)
                        If (BAON)
                        {
                            If (LEqual (Arg0, 0x00))
                            {
                                Store (0x00, BAON)
                                If (WBON)
                                {
                                    Store (0x03, Local0)
                                    Store (0x08, Local1)
                                }
                                Else
                                {
                                    Store (0x00, Local0)
                                    Store (0x00, Local1)
                                }
                            }
                            Else
                            {
                                Store (0xFF, Local0)
                                Store (0xFF, Local1)
                                If (LEqual (Arg0, 0x11))
                                {
                                    Store (0x00, WBON)
                                }

                                If (LEqual (Arg0, 0x10))
                                {
                                    Store (0x01, WBON)
                                }
                            }
                        }
                        Else
                        {
                            Store (Arg0, Local0)
                            Store (0xFF, Local1)
                            If (LEqual (Arg0, 0x0F))
                            {
                                Store (Arg0, Local0)
                                Store (0x08, Local1)
                                Store (0x01, BAON)
                            }

                            If (LEqual (Arg0, 0x11))
                            {
                                Store (0x00, Local0)
                                Store (0x00, Local1)
                                Store (0x00, WBON)
                            }

                            If (LEqual (Arg0, 0x10))
                            {
                                Store (0x03, Local0)
                                Store (0x08, Local1)
                                Store (0x01, WBON)
                            }
                        }

                        If (LEqual (Arg0, 0x03))
                        {
                            Store (0x00, WBON)
                            If (Local2)
                            {
                                Store (0x07, Local0)
                                If (LOr (LEqual (\SPS, 0x03), LEqual (\SPS, 0x04)))
                                {
                                    Store (0x00, Local2)
                                    Store (0xFF, Local0)
                                    Store (0xFF, Local1)
                                }
                            }
                        }

                        If (LEqual (Arg0, 0x07))
                        {
                            If (Local2)
                            {
                                Store (0x00, Local2)
                                Store (0xFF, Local0)
                                Store (0xFF, Local1)
                            }
                        }

                        If (\H8DR)
                        {
                            If (LAnd (Local2, LNot (WBON)))
                            {
                                Store (0x00, HSRP)
                                Store (0x00, HSUN)
                                Sleep (0x64)
                            }

                            If (LNotEqual (Local1, 0xFF))
                            {
                                Store (Local1, HSRP)
                            }

                            If (LNotEqual (Local0, 0xFF))
                            {
                                Store (Local0, HSUN)
                            }
                        }
                        Else
                        {
                            If (LAnd (Local2, LNot (WBON)))
                            {
                                \WBEC (0x07, 0x00)
                                \WBEC (0x06, 0x00)
                                Sleep (0x64)
                            }

                            If (LNotEqual (Local1, 0xFF))
                            {
                                \WBEC (0x07, Local1)
                            }

                            If (LNotEqual (Local0, 0xFF))
                            {
                                \WBEC (0x06, Local0)
                            }
                        }

                        If (LEqual (Arg0, 0x03)) {}
                        If (LEqual (Arg0, 0x07))
                        {
                            Sleep (0x01F4)
                        }
                    }

                    Method (EVNT, 1, NotSerialized)
                    {
                        If (\H8DR)
                        {
                            If (Arg0)
                            {
                                Or (HAM7, 0x01, HAM7)
                                Or (HAM5, 0x04, HAM5)
                            }
                            Else
                            {
                                And (HAM7, 0xFE, HAM7)
                                And (HAM5, 0xFB, HAM5)
                            }
                        }
                        Else
                        {
                            If (Arg0)
                            {
                                \MBEC (0x17, 0xFF, 0x01)
                                \MBEC (0x15, 0xFF, 0x04)
                            }
                            Else
                            {
                                \MBEC (0x17, 0xFE, 0x00)
                                \MBEC (0x15, 0xFB, 0x00)
                            }
                        }
                    }

                    PowerResource (PUBS, 0x03, 0x0000)
                    {
                        Method (_STA, 0, NotSerialized)
                        {
                            If (\H8DR)
                            {
                                Store (HUBS, Local0)
                            }
                            Else
                            {
                                And (\RBEC (0x3B), 0x10, Local0)
                            }

                            If (Local0)
                            {
                                Return (0x01)
                            }
                            Else
                            {
                                Return (0x00)
                            }
                        }

                        Method (_ON, 0, NotSerialized)
                        {
                            If (\H8DR)
                            {
                                Store (0x01, HUBS)
                            }
                            Else
                            {
                                \MBEC (0x3B, 0xFF, 0x10)
                            }
                        }

                        Method (_OFF, 0, NotSerialized)
                        {
                            If (\H8DR)
                            {
                                Store (0x00, HUBS)
                            }
                            Else
                            {
                                \MBEC (0x3B, 0xEF, 0x00)
                            }
                        }
                    }

                    Method (CHKS, 0, NotSerialized)
                    {
                        Store (0x03E8, Local0)
                        While (HMPR)
                        {
                            Sleep (0x01)
                            Decrement (Local0)
                            If (LNot (Local0))
                            {
                                Return (0x8080)
                            }
                        }

                        If (HMDN)
                        {
                            Return (Zero)
                        }

                        Return (0x8081)
                    }

                    Method (LPMD, 0, NotSerialized)
                    {
                        Store (0x00, Local0)
                        Store (0x00, Local1)
                        Store (0x00, Local2)
                        If (\H8DR)
                        {
                            If (HPAC)
                            {
                                If (HPLO)
                                {
                                    Store (\LPST, Local0)
                                }
                                Else
                                {
                                    If (LLess (HWAT, 0x5A))
                                    {
                                        If (HB0A)
                                        {
                                            If (LOr (And (HB0S, 0x10), LLess (And (HB0S, 0x0F
                                                ), 0x02)))
                                            {
                                                Store (0x01, Local1)
                                            }
                                        }
                                        Else
                                        {
                                            Store (0x01, Local1)
                                        }

                                        If (HB1A)
                                        {
                                            If (LOr (And (HB1S, 0x10), LLess (And (HB1S, 0x0F
                                                ), 0x02)))
                                            {
                                                Store (0x01, Local2)
                                            }
                                        }
                                        Else
                                        {
                                            Store (0x01, Local2)
                                        }

                                        If (LAnd (Local1, Local2))
                                        {
                                            Store (\LPST, Local0)
                                        }
                                    }
                                }
                            }
                        }
                        Else
                        {
                            If (And (\RBEC (0x46), 0x10))
                            {
                                If (And (\RBEC (0x34), 0x80))
                                {
                                    Store (\LPST, Local0)
                                }
                                Else
                                {
                                    If (LLess (\RBEC (0xC9), 0x5A))
                                    {
                                        Store (\RBEC (0x38), Local3)
                                        If (And (Local3, 0x80))
                                        {
                                            If (LOr (And (Local3, 0x10), LLess (And (Local3, 0x0F
                                                ), 0x02)))
                                            {
                                                Store (0x01, Local1)
                                            }
                                        }
                                        Else
                                        {
                                            Store (0x01, Local2)
                                        }

                                        Store (\RBEC (0x39), Local3)
                                        If (And (Local3, 0x80))
                                        {
                                            If (LOr (And (Local3, 0x10), LLess (And (Local3, 0x0F
                                                ), 0x02)))
                                            {
                                                Store (0x01, Local1)
                                            }
                                        }
                                        Else
                                        {
                                            Store (0x01, Local2)
                                        }

                                        If (LAnd (Local1, Local2))
                                        {
                                            Store (\LPST, Local0)
                                        }
                                    }
                                }
                            }
                        }

                        Return (Local0)
                    }

                    Method (CLPM, 0, NotSerialized)
                    {
                        If (And (\PPMF, 0x01))
                        {
                            If (\OSPX)
                            {
                                \PNTF (0x80)
                            }
                            Else
                            {
                                Store (LPMD (), Local0)
                                If (Local0)
                                {
                                    \STEP (0x04)
                                }
                                Else
                                {
                                    \STEP (0x05)
                                }
                            }
                        }
                    }

                    Mutex (MCPU, 0x07)
                    Method (_Q10, 0, NotSerialized)
                    {
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x01))
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x1001)
                        }
                    }

                    Method (_Q11, 0, NotSerialized)
                    {
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x02))
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x1002)
                        }
                        Else
                        {
                            Noop
                        }
                    }

                    Method (_Q12, 0, NotSerialized)
                    {
                        \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x1003)
                    }

                    Method (_Q13, 0, NotSerialized)
                    {
                        If (\_SB.PCI0.LPC.EC.HKEY.DHKC)
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x1004)
                        }
                        Else
                        {
                            Notify (\_SB.SLPB, 0x80)
                        }
                    }

                    Method (_Q64, 0, NotSerialized)
                    {
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x10))
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x1005)
                        }
                    }

                    Method (_Q65, 0, NotSerialized)
                    {
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x20))
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x1006)
                        }
                    }

                    Method (_Q16, 0, NotSerialized)
                    {
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x40))
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x1007)
                        }
                        Else
                        {
                            If (LEqual (\VHYB (0x03, 0x00), 0x03))
                            {
                                Notify (\_SB.PCI0.VID, 0x80)
                                Return (0x00)
                            }

                            If (VIGD)
                            {
                                \_SB.PCI0.VID.VSWT ()
                            }
                            Else
                            {
                                \_SB.PCI0.PEG.VID.VSWT ()
                            }
                        }
                    }

                    Method (_Q17, 0, NotSerialized)
                    {
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x80))
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x1008)
                        }
                        Else
                        {
                            If (LNot (\WNTF))
                            {
                                VEXP ()
                            }
                        }
                    }

                    Method (_Q18, 0, NotSerialized)
                    {
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x0100))
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x1009)
                        }

                        Noop
                    }

                    Method (_Q66, 0, NotSerialized)
                    {
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x0200))
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x100A)
                        }
                    }

                    Method (_Q1A, 0, NotSerialized)
                    {
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x0400))
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x100B)
                        }
                    }

                    Method (_Q1B, 0, NotSerialized)
                    {
                        \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x100C)
                    }

                    Method (_Q62, 0, NotSerialized)
                    {
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x1000))
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x100D)
                        }
                    }

                    Method (_Q60, 0, NotSerialized)
                    {
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x2000))
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x100E)
                        }
                    }

                    Method (_Q61, 0, NotSerialized)
                    {
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x4000))
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x100F)
                        }
                    }

                    Method (_Q1F, 0, NotSerialized)
                    {
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x00020000))
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x1012)
                        }

                        \UCMS (0x0E)
                    }

                    Method (_Q67, 0, NotSerialized)
                    {
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x00040000))
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x1013)
                        }
                    }

                    Method (_Q1C, 0, NotSerialized)
                    {
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x01000000))
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x1019)
                        }
                    }

                    Method (_Q1D, 0, NotSerialized)
                    {
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x02000000))
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x101A)
                        }
                    }

                    Method (_Q26, 0, NotSerialized)
                    {
                        If (VIGD)
                        {
                            If (\WVIS)
                            {
                                \VBTD ()
                            }

                            \_SB.PCI0.LPC.EC.BRNS ()
                        }
                        Else
                        {
                            \UCMS (0x12)
                        }

                        Notify (\_SB.PCI0.PEG.VID, 0xDF)
                        Sleep (0x01F4)
                        Notify (AC, 0x80)
                        Notify (\_TZ.THM0, 0x80)
                        If (\WXPF)
                        {
                            Acquire (MCPU, 0xFFFF)
                        }

                        Store (0x01, PWRS)
                        If (And (\PPMF, 0x01))
                        {
                            If (\OSPX)
                            {
                                \PNTF (0x80)
                            }
                            Else
                            {
                                \STEP (0x00)
                            }
                        }

                        If (\WXPF)
                        {
                            Sleep (0x64)
                        }

                        If (\OSC4)
                        {
                            \PNTF (0x81)
                        }

                        If (\WXPF)
                        {
                            Release (MCPU)
                        }

                        ATMC ()
                    }

                    Method (_Q27, 0, NotSerialized)
                    {
                        If (VIGD)
                        {
                            If (\WVIS)
                            {
                                \VBTD ()
                            }

                            \_SB.PCI0.LPC.EC.BRNS ()
                        }
                        Else
                        {
                            \UCMS (0x12)
                        }

                        Notify (\_SB.PCI0.PEG.VID, 0xDF)
                        Sleep (0x01F4)
                        Notify (AC, 0x80)
                        Notify (\_TZ.THM0, 0x80)
                        If (\WXPF)
                        {
                            Acquire (MCPU, 0xFFFF)
                        }

                        Store (0x00, PWRS)
                        If (And (\PPMF, 0x01))
                        {
                            If (\OSPX)
                            {
                                \PNTF (0x80)
                            }
                            Else
                            {
                                \STEP (0x01)
                            }
                        }

                        If (\WXPF)
                        {
                            Sleep (0x64)
                        }

                        If (\OSC4)
                        {
                            \PNTF (0x81)
                        }

                        If (\WXPF)
                        {
                            Release (MCPU)
                        }

                        ATMC ()
                    }

                    Method (_Q2A, 0, NotSerialized)
                    {
                        If (VIGD)
                        {
                            \_SB.PCI0.VID.GLIS (0x01)
                        }
                        Else
                        {
                            If (\WVIS)
                            {
                                \_SB.PCI0.VID.GLIS (0x01)
                            }
                        }

                        If (VIGD)
                        {
                            \_SB.PCI0.VID.VLOC (0x01)
                        }
                        Else
                        {
                            \_SB.PCI0.PEG.VID.VLOC (0x01)
                        }

                        \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x5002)
                        Notify (\_SB.LID, 0x80)
                    }

                    Method (_Q2B, 0, NotSerialized)
                    {
                        If (VIGD)
                        {
                            \_SB.PCI0.VID.GLIS (0x00)
                        }

                        \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x5001)
                        \UCMS (0x0D)
                        Notify (\_SB.LID, 0x80)
                    }

                    Method (_Q3D, 0, NotSerialized)
                    {
                    }

                    Method (_Q48, 0, NotSerialized)
                    {
                        If (And (\PPMF, 0x01))
                        {
                            If (\OSPX)
                            {
                                \PNTF (0x80)
                            }
                            Else
                            {
                                \STEP (0x04)
                            }
                        }
                    }

                    Method (_Q49, 0, NotSerialized)
                    {
                        If (And (\PPMF, 0x01))
                        {
                            If (\OSPX)
                            {
                                \PNTF (0x80)
                            }
                            Else
                            {
                                \STEP (0x05)
                            }
                        }
                    }

                    Method (_Q7F, 0, NotSerialized)
                    {
                        Fatal (0x01, 0x80010000, 0x039A)
                    }

                    Method (_Q4E, 0, NotSerialized)
                    {
                        \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x6011)
                    }

                    Method (_Q4F, 0, NotSerialized)
                    {
                        \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x6012)
                    }

                    Method (_Q46, 0, NotSerialized)
                    {
                        \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x6012)
                    }

                    Method (_Q22, 0, NotSerialized)
                    {
                        CLPM ()
                        If (HB0A)
                        {
                            Notify (BAT0, 0x80)
                        }

                        If (HB1A)
                        {
                            Notify (BAT1, 0x80)
                        }
                    }

                    Method (_Q4A, 0, NotSerialized)
                    {
                        CLPM ()
                        Notify (BAT0, 0x81)
                    }

                    Method (_Q4B, 0, NotSerialized)
                    {
                        Notify (BAT0, 0x80)
                    }

                    Method (_Q4C, 0, NotSerialized)
                    {
                        CLPM ()
                        If (\WNTF)
                        {
                            If (HB1A)
                            {
                                Store (0x01, \_SB.PCI0.LPC.EC.BAT1.XB1S)
                                Notify (\_SB.PCI0.LPC.EC.BAT1, 0x01)
                            }
                            Else
                            {
                                Notify (\_SB.PCI0.LPC.EC.BAT1, 0x03)
                            }
                        }
                        Else
                        {
                            Notify (\_SB.PCI0.LPC.EC.BAT1, 0x81)
                        }
                    }

                    Method (_Q4D, 0, NotSerialized)
                    {
                        If (And (^BAT1.B1ST, ^BAT1.XB1S))
                        {
                            Notify (BAT1, 0x80)
                        }
                    }

                    Method (_Q24, 0, NotSerialized)
                    {
                        CLPM ()
                        Notify (BAT0, 0x80)
                    }

                    Method (_Q25, 0, NotSerialized)
                    {
                        If (And (^BAT1.B1ST, ^BAT1.XB1S))
                        {
                            CLPM ()
                            Notify (BAT1, 0x80)
                        }
                    }

                    Field (ECOR, ByteAcc, NoLock, Preserve)
                    {
                                Offset (0xA0), 
                        SBRC,   16, 
                        SBFC,   16, 
                        SBAE,   16, 
                        SBRS,   16, 
                        SBAC,   16, 
                        SBVO,   16, 
                        SBAF,   16, 
                        SBBS,   16
                    }

                    Field (ECOR, ByteAcc, NoLock, Preserve)
                    {
                                Offset (0xA0), 
                            ,   15, 
                        SBCM,   1, 
                        SBMD,   16, 
                        SBCC,   16
                    }

                    Field (ECOR, ByteAcc, NoLock, Preserve)
                    {
                                Offset (0xA0), 
                        SBDC,   16, 
                        SBDV,   16, 
                        SBOM,   16, 
                        SBSI,   16, 
                        SBDT,   16, 
                        SBSN,   16
                    }

                    Field (ECOR, ByteAcc, NoLock, Preserve)
                    {
                                Offset (0xA0), 
                        SBCH,   32
                    }

                    Field (ECOR, ByteAcc, NoLock, Preserve)
                    {
                                Offset (0xA0), 
                        SBMN,   128
                    }

                    Field (ECOR, ByteAcc, NoLock, Preserve)
                    {
                                Offset (0xA0), 
                        SBDN,   128
                    }

                    Mutex (BATM, 0x07)
                    Method (GBIF, 3, NotSerialized)
                    {
                        Acquire (BATM, 0xFFFF)
                        If (Arg2)
                        {
                            Or (Arg0, 0x01, HIID)
                            Store (SBCM, Local7)
                            XOr (Local7, 0x01, Index (Arg1, 0x00))
                            Store (Arg0, HIID)
                            If (Local7)
                            {
                                Multiply (SBFC, 0x0A, Local1)
                            }
                            Else
                            {
                                Store (SBFC, Local1)
                            }

                            Store (Local1, Index (Arg1, 0x02))
                            Or (Arg0, 0x02, HIID)
                            If (Local7)
                            {
                                Multiply (SBDC, 0x0A, Local0)
                            }
                            Else
                            {
                                Store (SBDC, Local0)
                            }

                            Store (Local0, Index (Arg1, 0x01))
                            Divide (Local1, 0x14, Local2, Index (Arg1, 0x05))
                            If (Local7)
                            {
                                Store (0xC8, Index (Arg1, 0x06))
                            }
                            Else
                            {
                                If (SBDV)
                                {
                                    Divide (0x00030D40, SBDV, Local2, Index (Arg1, 0x06))
                                }
                                Else
                                {
                                    Store (0x00, Index (Arg1, 0x06))
                                }
                            }

                            Store (SBDV, Index (Arg1, 0x04))
                            Store (SBSN, Local0)
                            Name (SERN, Buffer (0x06)
                            {
                                "     "
                            })
                            Store (0x04, Local2)
                            While (Local0)
                            {
                                Divide (Local0, 0x0A, Local1, Local0)
                                Add (Local1, 0x30, Index (SERN, Local2))
                                Decrement (Local2)
                            }

                            Store (SERN, Index (Arg1, 0x0A))
                            Or (Arg0, 0x06, HIID)
                            Store (SBDN, Index (Arg1, 0x09))
                            Or (Arg0, 0x04, HIID)
                            Name (BTYP, Buffer (0x05)
                            {
                                0x00, 0x00, 0x00, 0x00, 0x00
                            })
                            Store (SBCH, BTYP)
                            Store (BTYP, Index (Arg1, 0x0B))
                            Or (Arg0, 0x05, HIID)
                            Store (SBMN, Index (Arg1, 0x0C))
                        }
                        Else
                        {
                            Store (0xFFFFFFFF, Index (Arg1, 0x01))
                            Store (0x00, Index (Arg1, 0x05))
                            Store (0x00, Index (Arg1, 0x06))
                            Store (0xFFFFFFFF, Index (Arg1, 0x02))
                        }

                        Release (BATM)
                        Return (Arg1)
                    }

                    Method (GBST, 4, NotSerialized)
                    {
                        Acquire (BATM, 0xFFFF)
                        If (And (Arg1, 0x20))
                        {
                            Store (0x02, Local0)
                        }
                        Else
                        {
                            If (And (Arg1, 0x40))
                            {
                                Store (0x01, Local0)
                            }
                            Else
                            {
                                Store (0x00, Local0)
                            }
                        }

                        If (And (Arg1, 0x0F)) {}
                        Else
                        {
                            Or (Local0, 0x04, Local0)
                        }

                        If (LEqual (And (Arg1, 0x0F), 0x0F))
                        {
                            Store (0x04, Local0)
                            Store (0x00, Local1)
                            Store (0x00, Local2)
                            Store (0x00, Local3)
                        }
                        Else
                        {
                            Store (Arg0, HIID)
                            Store (SBVO, Local3)
                            If (Arg2)
                            {
                                Multiply (SBRC, 0x0A, Local2)
                            }
                            Else
                            {
                                Store (SBRC, Local2)
                            }

                            Store (SBAC, Local1)
                            If (LGreaterEqual (Local1, 0x8000))
                            {
                                If (And (Local0, 0x01))
                                {
                                    Subtract (0x00010000, Local1, Local1)
                                }
                                Else
                                {
                                    Store (0x00, Local1)
                                }
                            }
                            Else
                            {
                                If (LNot (And (Local0, 0x02)))
                                {
                                    Store (0x00, Local1)
                                }
                            }

                            If (Arg2)
                            {
                                Multiply (Local3, Local1, Local1)
                                Divide (Local1, 0x03E8, Local7, Local1)
                            }
                        }

                        Store (Local0, Index (Arg3, 0x00))
                        Store (Local1, Index (Arg3, 0x01))
                        Store (Local2, Index (Arg3, 0x02))
                        Store (Local3, Index (Arg3, 0x03))
                        Release (BATM)
                        Return (Arg3)
                    }

                    Device (BAT0)
                    {
                        Name (_HID, EisaId ("PNP0C0A"))
                        Name (_UID, 0x00)
                        Name (_PCL, Package (0x01)
                        {
                            \_SB
                        })
                        Name (B0ST, 0x00)
                        Name (BT0I, Package (0x0D)
                        {
                            0x00, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0x01, 
                            0x2A30, 
                            0x00, 
                            0x00, 
                            0x01, 
                            0x01, 
                            "", 
                            "", 
                            "", 
                            ""
                        })
                        Name (BT0P, Package (0x04) {})
                        Method (_STA, 0, NotSerialized)
                        {
                            If (\H8DR)
                            {
                                Store (HB0A, B0ST)
                            }
                            Else
                            {
                                If (And (\RBEC (0x38), 0x80))
                                {
                                    Store (0x01, B0ST)
                                }
                                Else
                                {
                                    Store (0x00, B0ST)
                                }
                            }

                            If (B0ST)
                            {
                                Return (0x1F)
                            }
                            Else
                            {
                                Return (0x0F)
                            }
                        }

                        Method (_BIF, 0, NotSerialized)
                        {
                            Store (0x00, Local7)
                            Store (0x0A, Local6)
                            While (LAnd (LNot (Local7), Local6))
                            {
                                If (HB0A)
                                {
                                    If (LEqual (And (HB0S, 0x0F), 0x0F))
                                    {
                                        Sleep (0x03E8)
                                        Decrement (Local6)
                                    }
                                    Else
                                    {
                                        Store (0x01, Local7)
                                    }
                                }
                                Else
                                {
                                    Store (0x00, Local6)
                                }
                            }

                            Return (GBIF (0x00, BT0I, Local7))
                        }

                        Method (_BST, 0, NotSerialized)
                        {
                            XOr (DerefOf (Index (BT0I, 0x00)), 0x01, Local0)
                            Return (GBST (0x00, HB0S, Local0, BT0P))
                        }

                        Method (_BTP, 1, NotSerialized)
                        {
                            And (HAM4, 0xEF, HAM4)
                            If (Arg0)
                            {
                                Store (Arg0, Local1)
                                If (LNot (DerefOf (Index (BT0I, 0x00))))
                                {
                                    Divide (Local1, 0x0A, Local0, Local1)
                                }

                                And (Local1, 0xFF, HT0L)
                                And (ShiftRight (Local1, 0x08), 0xFF, HT0H)
                                Or (HAM4, 0x10, HAM4)
                            }
                        }
                    }

                    Device (BAT1)
                    {
                        Name (_HID, EisaId ("PNP0C0A"))
                        Name (_UID, 0x01)
                        Name (_PCL, Package (0x01)
                        {
                            \_SB
                        })
                        Name (B1ST, 0x00)
                        Name (XB1S, 0x01)
                        Name (BT1I, Package (0x0D)
                        {
                            0x00, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0x01, 
                            0x2A30, 
                            0x00, 
                            0x00, 
                            0x01, 
                            0x01, 
                            "", 
                            "", 
                            "", 
                            ""
                        })
                        Name (BT1P, Package (0x04) {})
                        Method (_STA, 0, NotSerialized)
                        {
                            If (\H8DR)
                            {
                                Store (HB1A, B1ST)
                            }
                            Else
                            {
                                If (And (\RBEC (0x39), 0x80))
                                {
                                    Store (0x01, B1ST)
                                }
                                Else
                                {
                                    Store (0x00, B1ST)
                                }
                            }

                            If (B1ST)
                            {
                                If (XB1S)
                                {
                                    Return (0x1F)
                                }
                                Else
                                {
                                    If (\WNTF)
                                    {
                                        Return (0x00)
                                    }
                                    Else
                                    {
                                        Return (0x1F)
                                    }
                                }
                            }
                            Else
                            {
                                If (\WNTF)
                                {
                                    Return (0x00)
                                }
                                Else
                                {
                                    Return (0x0F)
                                }
                            }
                        }

                        Method (_BIF, 0, NotSerialized)
                        {
                            Store (0x00, Local7)
                            Store (0x0A, Local6)
                            While (LAnd (LNot (Local7), Local6))
                            {
                                If (HB1A)
                                {
                                    If (LEqual (And (HB1S, 0x0F), 0x0F))
                                    {
                                        Sleep (0x03E8)
                                        Decrement (Local6)
                                    }
                                    Else
                                    {
                                        Store (0x01, Local7)
                                    }
                                }
                                Else
                                {
                                    Store (0x00, Local6)
                                }
                            }

                            Return (GBIF (0x10, BT1I, Local7))
                        }

                        Method (_BST, 0, NotSerialized)
                        {
                            XOr (DerefOf (Index (BT1I, 0x00)), 0x01, Local0)
                            Return (GBST (0x10, HB1S, Local0, BT1P))
                        }

                        Method (_BTP, 1, NotSerialized)
                        {
                            And (HAM4, 0xDF, HAM4)
                            If (Arg0)
                            {
                                Store (Arg0, Local1)
                                If (LNot (DerefOf (Index (BT1I, 0x00))))
                                {
                                    Divide (Local1, 0x0A, Local0, Local1)
                                }

                                And (Local1, 0xFF, HT1L)
                                And (ShiftRight (Local1, 0x08), 0xFF, HT1H)
                                Or (HAM4, 0x20, HAM4)
                            }
                        }
                    }

                    Device (AC)
                    {
                        Name (_HID, "ACPI0003")
                        Name (_UID, 0x00)
                        Name (_PCL, Package (0x01)
                        {
                            \_SB
                        })
                        Method (_PSR, 0, NotSerialized)
                        {
                            If (\H8DR)
                            {
                                If (HPAC)
                                {
                                    If (DOCD)
                                    {
                                        If (\_SB.PCI0.LPC.EPWG)
                                        {
                                            Return (0x01)
                                        }
                                        Else
                                        {
                                            Return (0x00)
                                        }
                                    }
                                    Else
                                    {
                                        Return (0x01)
                                    }
                                }
                                Else
                                {
                                    Return (0x00)
                                }
                            }
                            Else
                            {
                                If (And (\RBEC (0x46), 0x10))
                                {
                                    Return (0x01)
                                }
                                Else
                                {
                                    Return (0x00)
                                }
                            }
                        }

                        Method (_STA, 0, NotSerialized)
                        {
                            Return (0x0F)
                        }
                    }

                    Device (HKEY)
                    {
                        Name (_HID, EisaId ("IBM0068"))
                        Method (_STA, 0, NotSerialized)
                        {
                            Return (0x0F)
                        }

                        Method (MHKV, 0, NotSerialized)
                        {
                            Return (0x0100)
                        }

                        Name (DHKC, 0x00)
                        Name (DHKB, 0x01)
                        Mutex (XDHK, 0x07)
                        Name (DHKH, 0x00)
                        Name (DHKW, 0x00)
                        Name (DHKS, 0x00)
                        Name (DHKD, 0x00)
                        Name (DHKN, 0x080C)
                        Name (DHKT, 0x00)
                        Name (DHWW, 0x00)
                        Method (MHKA, 0, NotSerialized)
                        {
                            Return (0x07FFFFFF)
                        }

                        Method (MHKN, 0, NotSerialized)
                        {
                            Return (DHKN)
                        }

                        Method (MHKK, 1, NotSerialized)
                        {
                            If (DHKC)
                            {
                                Return (And (DHKN, Arg0))
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }

                        Method (MHKM, 2, NotSerialized)
                        {
                            Acquire (XDHK, 0xFFFF)
                            If (LGreater (Arg0, 0x20))
                            {
                                Noop
                            }
                            Else
                            {
                                ShiftLeft (One, Decrement (Arg0), Local0)
                                If (And (Local0, 0x07FFFFFF))
                                {
                                    If (Arg1)
                                    {
                                        Or (Local0, DHKN, DHKN)
                                    }
                                    Else
                                    {
                                        And (DHKN, XOr (Local0, 0xFFFFFFFF), DHKN)
                                    }
                                }
                                Else
                                {
                                    Noop
                                }
                            }

                            Release (XDHK)
                        }

                        Method (MHKS, 0, NotSerialized)
                        {
                            Notify (\_SB.SLPB, 0x80)
                        }

                        Method (MHKC, 1, NotSerialized)
                        {
                            Store (Arg0, DHKC)
                        }

                        Method (MHKP, 0, NotSerialized)
                        {
                            Acquire (XDHK, 0xFFFF)
                            If (DHWW)
                            {
                                Store (DHWW, Local1)
                                Store (Zero, DHWW)
                            }
                            Else
                            {
                                If (DHKW)
                                {
                                    Store (DHKW, Local1)
                                    Store (Zero, DHKW)
                                }
                                Else
                                {
                                    If (DHKD)
                                    {
                                        Store (DHKD, Local1)
                                        Store (Zero, DHKD)
                                    }
                                    Else
                                    {
                                        If (DHKS)
                                        {
                                            Store (DHKS, Local1)
                                            Store (Zero, DHKS)
                                        }
                                        Else
                                        {
                                            If (DHKT)
                                            {
                                                Store (DHKT, Local1)
                                                Store (Zero, DHKT)
                                            }
                                            Else
                                            {
                                                Store (DHKH, Local1)
                                                Store (Zero, DHKH)
                                            }
                                        }
                                    }
                                }
                            }

                            Release (XDHK)
                            Return (Local1)
                        }

                        Method (MHKE, 1, NotSerialized)
                        {
                            Store (Arg0, DHKB)
                            Acquire (XDHK, 0xFFFF)
                            Store (Zero, DHKH)
                            Store (Zero, DHKW)
                            Store (Zero, DHKS)
                            Store (Zero, DHKD)
                            Store (Zero, DHKT)
                            Store (Zero, DHWW)
                            Release (XDHK)
                        }

                        Method (MHKQ, 1, NotSerialized)
                        {
                            If (DHKB)
                            {
                                If (DHKC)
                                {
                                    Acquire (XDHK, 0xFFFF)
                                    If (LLess (Arg0, 0x1000)) {}
                                    Else
                                    {
                                        If (LLess (Arg0, 0x2000))
                                        {
                                            Store (Arg0, DHKH)
                                        }
                                        Else
                                        {
                                            If (LLess (Arg0, 0x3000))
                                            {
                                                Store (Arg0, DHKW)
                                            }
                                            Else
                                            {
                                                If (LLess (Arg0, 0x4000))
                                                {
                                                    Store (Arg0, DHKS)
                                                }
                                                Else
                                                {
                                                    If (LLess (Arg0, 0x5000))
                                                    {
                                                        Store (Arg0, DHKD)
                                                    }
                                                    Else
                                                    {
                                                        If (LLess (Arg0, 0x6000))
                                                        {
                                                            Store (Arg0, DHKH)
                                                        }
                                                        Else
                                                        {
                                                            If (LLess (Arg0, 0x7000))
                                                            {
                                                                Store (Arg0, DHKT)
                                                            }
                                                            Else
                                                            {
                                                                If (LLess (Arg0, 0x8000))
                                                                {
                                                                    Store (Arg0, DHWW)
                                                                }
                                                                Else
                                                                {
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }

                                    Release (XDHK)
                                    Notify (HKEY, 0x80)
                                }
                                Else
                                {
                                    If (LEqual (Arg0, 0x1004))
                                    {
                                        Notify (\_SB.SLPB, 0x80)
                                    }
                                }
                            }
                        }

                        Method (MHKB, 1, NotSerialized)
                        {
                            If (LEqual (Arg0, 0x00))
                            {
                                \_SB.PCI0.LPC.EC.BEEP (0x11)
                                Store (0x00, \LIDB)
                            }
                            Else
                            {
                                If (LEqual (Arg0, 0x01))
                                {
                                    \_SB.PCI0.LPC.EC.BEEP (0x10)
                                    Store (0x01, \LIDB)
                                }
                                Else
                                {
                                }
                            }
                        }

                        Method (MHKD, 0, NotSerialized)
                        {
                            If (VIGD)
                            {
                                \_SB.PCI0.VID.VLOC (0x00)
                            }
                            Else
                            {
                                \_SB.PCI0.PEG.VID.VLOC (0x00)
                            }
                        }

                        Method (MHQC, 1, NotSerialized)
                        {
                            If (\WNTF)
                            {
                                If (LEqual (Arg0, 0x00))
                                {
                                    Return (\CWAC)
                                }
                                Else
                                {
                                    If (LEqual (Arg0, 0x01))
                                    {
                                        Return (\CWAP)
                                    }
                                    Else
                                    {
                                        If (LEqual (Arg0, 0x02))
                                        {
                                            Return (\CWAT)
                                        }
                                        Else
                                        {
                                            Noop
                                        }
                                    }
                                }
                            }
                            Else
                            {
                                Noop
                            }

                            Return (0x00)
                        }

                        Method (MHGC, 0, NotSerialized)
                        {
                            If (\WNTF)
                            {
                                Acquire (XDHK, 0xFFFF)
                                If (CKC4 (0x00))
                                {
                                    Store (0x03, Local0)
                                }
                                Else
                                {
                                    Store (0x04, Local0)
                                }

                                Release (XDHK)
                                Return (Local0)
                            }
                            Else
                            {
                                Noop
                            }

                            Return (0x00)
                        }

                        Method (MHSC, 1, NotSerialized)
                        {
                            If (LAnd (\CWAC, \WNTF))
                            {
                                Acquire (XDHK, 0xFFFF)
                                If (\OSC4)
                                {
                                    If (LEqual (Arg0, 0x03))
                                    {
                                        If (LNot (\CWAS))
                                        {
                                            \PNTF (0x81)
                                            Store (0x01, \CWAS)
                                        }
                                    }
                                    Else
                                    {
                                        If (LEqual (Arg0, 0x04))
                                        {
                                            If (\CWAS)
                                            {
                                                \PNTF (0x81)
                                                Store (0x00, \CWAS)
                                            }
                                        }
                                        Else
                                        {
                                            Noop
                                        }
                                    }
                                }

                                Release (XDHK)
                            }
                            Else
                            {
                                Noop
                            }
                        }

                        Method (CKC4, 1, NotSerialized)
                        {
                            Store (0x00, Local0)
                            If (\C4WR)
                            {
                                If (LNot (\C4AC))
                                {
                                    Or (Local0, 0x01, Local0)
                                }
                            }

                            If (\C4NA)
                            {
                                Or (Local0, 0x02, Local0)
                            }

                            If (LAnd (\CWAC, \CWAS))
                            {
                                Or (Local0, 0x04, Local0)
                            }

                            If (LAnd (\CWUE, \CWUS))
                            {
                                Or (Local0, 0x08, Local0)
                            }

                            And (Local0, Not (Arg0), Local0)
                            Return (Local0)
                        }

                        Method (MHQE, 0, NotSerialized)
                        {
                            Return (\C4WR)
                        }

                        Method (MHGE, 0, NotSerialized)
                        {
                            If (LAnd (\C4WR, \C4AC))
                            {
                                Return (0x04)
                            }

                            Return (0x03)
                        }

                        Method (MHSE, 1, NotSerialized)
                        {
                            If (\C4WR)
                            {
                                Store (\C4AC, Local0)
                                If (LEqual (Arg0, 0x03))
                                {
                                    Store (0x00, \C4AC)
                                    If (XOr (Local0, \C4AC))
                                    {
                                        If (\OSC4)
                                        {
                                            \PNTF (0x81)
                                        }
                                    }
                                }
                                Else
                                {
                                    If (LEqual (Arg0, 0x04))
                                    {
                                        Store (0x01, \C4AC)
                                        If (XOr (Local0, \C4AC))
                                        {
                                            If (\OSC4)
                                            {
                                                \PNTF (0x81)
                                            }
                                        }
                                    }
                                }
                            }
                        }

                        Method (UAWO, 1, NotSerialized)
                        {
                            Return (\UAWS (Arg0))
                        }
                    }

                    Scope (\_SB.PCI0.LPC.EC.HKEY)
                    {
                        Name (INDV, 0x00)
                        Method (MHQI, 0, NotSerialized)
                        {
                            If (And (\IPMS, 0x01))
                            {
                                Or (INDV, 0x01, INDV)
                            }

                            If (And (\IPMS, 0x02))
                            {
                                Or (INDV, 0x02, INDV)
                            }

                            If (And (\IPMS, 0x04))
                            {
                                Or (INDV, 0x0100, INDV)
                            }

                            If (And (\IPMS, 0x08))
                            {
                                Or (INDV, 0x0200, INDV)
                            }

                            If (And (\IPMS, 0x10))
                            {
                                Or (INDV, 0x04, INDV)
                            }

                            Return (INDV)
                        }

                        Method (MHGI, 1, NotSerialized)
                        {
                            Name (RETB, Buffer (0x10) {})
                            CreateByteField (RETB, 0x00, MHGS)
                            ShiftLeft (0x01, Arg0, Local0)
                            If (And (INDV, Local0))
                            {
                                If (LEqual (Arg0, 0x00))
                                {
                                    CreateField (RETB, 0x08, 0x78, BRBU)
                                    Store (\IPMB, BRBU)
                                    Store (0x10, MHGS)
                                }
                                Else
                                {
                                    If (LEqual (Arg0, 0x01))
                                    {
                                        CreateField (RETB, 0x08, 0x18, RRBU)
                                        Store (\IPMR, RRBU)
                                        Store (0x04, MHGS)
                                    }
                                    Else
                                    {
                                        If (LEqual (Arg0, 0x08))
                                        {
                                            CreateField (RETB, 0x10, 0x18, ODBU)
                                            CreateByteField (RETB, 0x01, MHGZ)
                                            Store (\IPMO, ODBU)
                                            If (LEqual (^^BDEV, 0x03))
                                            {
                                                If (\H8DR)
                                                {
                                                    Store (^^HPBU, Local1)
                                                }
                                                Else
                                                {
                                                    And (\RBEC (0x47), 0x01, Local1)
                                                }

                                                If (LNot (Local1))
                                                {
                                                    Or (0x04, MHGZ, MHGZ)
                                                }

                                                If (LEqual (^^BSTS, 0x00))
                                                {
                                                    Or (0x01, MHGZ, MHGZ)
                                                    Or (0x02, MHGZ, MHGZ)
                                                }
                                            }

                                            Store (0x05, MHGS)
                                        }
                                        Else
                                        {
                                            If (LEqual (Arg0, 0x09))
                                            {
                                                CreateField (RETB, 0x10, 0x08, AUBU)
                                                Store (\IPMA, AUBU)
                                                Store (0x01, Index (RETB, 0x01))
                                                Store (0x03, MHGS)
                                            }
                                            Else
                                            {
                                                If (LEqual (Arg0, 0x02))
                                                {
                                                    Store (\VDYN (0x00, 0x00), Local1)
                                                    And (Local1, 0x0F, Index (RETB, 0x02))
                                                    ShiftRight (Local1, 0x04, Local1)
                                                    And (Local1, 0x0F, Index (RETB, 0x01))
                                                    Store (0x03, MHGS)
                                                }
                                            }
                                        }
                                    }
                                }
                            }

                            Return (RETB)
                        }

                        Method (MHSI, 2, NotSerialized)
                        {
                            ShiftLeft (0x01, Arg0, Local0)
                            If (And (INDV, Local0))
                            {
                                If (LEqual (Arg0, 0x08))
                                {
                                    If (Arg1)
                                    {
                                        If (\H8DR)
                                        {
                                            Store (^^HPBU, Local1)
                                        }
                                        Else
                                        {
                                            And (\RBEC (0x47), 0x01, Local1)
                                        }

                                        If (LNot (Local1))
                                        {
                                            Store (^^BGID (0x00), ^^BDEV)
                                            ^^NBIN (Local1)
                                        }
                                    }
                                }
                                Else
                                {
                                    If (LEqual (Arg0, 0x02))
                                    {
                                        \VDYN (0x01, Arg1)
                                    }
                                }
                            }
                        }
                    }

                    Scope (\_SB.PCI0.LPC.EC)
                    {
                        Method (_Q6A, 0, NotSerialized)
                        {
                            If (HDMC)
                            {
                                Noop
                            }
                            Else
                            {
                                If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x04000000))
                                {
                                    \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x101B)
                                }
                            }
                        }
                    }

                    Scope (\_SB.PCI0.LPC.EC.HKEY)
                    {
                        Method (MMTG, 0, NotSerialized)
                        {
                            Store (0x0101, Local0)
                            If (HDMC)
                            {
                                Or (Local0, 0x00010000, Local0)
                            }

                            Return (Local0)
                        }

                        Method (MMTS, 1, NotSerialized)
                        {
                            If (HDMC)
                            {
                                Noop
                            }
                            Else
                            {
                                If (LEqual (Arg0, 0x02))
                                {
                                    \_SB.PCI0.LPC.EC.LED (0x0E, 0x80)
                                }
                                Else
                                {
                                    If (LEqual (Arg0, 0x03))
                                    {
                                        \_SB.PCI0.LPC.EC.LED (0x0E, 0xC0)
                                    }
                                    Else
                                    {
                                        \_SB.PCI0.LPC.EC.LED (0x0E, 0x00)
                                    }
                                }
                            }
                        }
                    }

                    Scope (\_SB.PCI0.LPC.EC.HKEY)
                    {
                        Method (PWMC, 0, NotSerialized)
                        {
                            Return (0x01)
                        }

                        Method (PWMG, 0, NotSerialized)
                        {
                            Store (\_SB.PCI0.LPC.EC.PWMH, Local0)
                            ShiftLeft (Local0, 0x08, Local0)
                            Or (Local0, \_SB.PCI0.LPC.EC.PWML, Local0)
                            Return (Local0)
                        }
                    }

                    Scope (\_SB.PCI0.LPC.EC)
                    {
                        Method (_Q45, 0, NotSerialized)
                        {
                            If (DOCD)
                            {
                                Sleep (0x64)
                                If (\_SB.PCI0.LPC.EPWG)
                                {
                                    Noop
                                }
                                Else
                                {
                                    If (HPAC)
                                    {
                                        _Q27 ()
                                    }
                                }

                                \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x4010)
                            }
                            Else
                            {
                                Sleep (0x64)
                                If (HPAC)
                                {
                                    _Q26 ()
                                }

                                \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x4011)
                            }
                        }

                        Method (DKID, 0, NotSerialized)
                        {
                            Store (\_SB.PCI0.LPC.DOI0, Local0)
                            Store (\_SB.PCI0.LPC.DOI1, Local1)
                            Store (\_SB.PCI0.LPC.DOI2, Local2)
                            Or (Local0, ShiftLeft (Local1, 0x01), Local0)
                            Or (Local0, ShiftLeft (Local2, 0x02), Local0)
                            Return (Local0)
                        }
                    }

                    Scope (\_SB.PCI0.LPC.EC.HKEY)
                    {
                        Method (GDKS, 0, NotSerialized)
                        {
                            Store (0x00, Local0)
                            If (LEqual (\_SB.PCI0.LPC.EC.DOCD, 0x01))
                            {
                                Or (Local0, 0x01, Local0)
                                Store (\_SB.PCI0.LPC.EC.DKID (), Local1)
                                ShiftLeft (Local1, 0x08, Local1)
                                Or (Local0, Local1, Local0)
                            }

                            Return (Local0)
                        }
                    }

                    Scope (\_SB.PCI0.LPC.EC)
                    {
                        Method (_Q3F, 0, NotSerialized)
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x6000)
                        }
                    }

                    Scope (\_SB.PCI0.LPC.EC.HKEY)
                    {
                        Method (NUMG, 0, NotSerialized)
                        {
                            Store (0x01, Local0)
                            If (\_SB.PCI0.LPC.EC.SNLK)
                            {
                                And (Local0, Not (0x02), Local0)
                            }
                            Else
                            {
                                Or (Local0, 0x02, Local0)
                            }

                            If (\_SB.PCI0.LPC.EC.NULS)
                            {
                                Or (Local0, 0x0100, Local0)
                            }
                            Else
                            {
                                And (Local0, Not (0x0100), Local0)
                            }

                            Return (Local0)
                        }
                    }
                }
            }

            Device (PEG)
            {
                Name (_ADR, 0x00010000)
                Name (_S3D, 0x03)
                Name (RID, 0x00)
                Name (LART, Package (0x02)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        0x00, 
                        \_SB.LNKA, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x01, 
                        \_SB.LNKB, 
                        0x00
                    }
                })
                Name (AART, Package (0x02)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        0x00, 
                        0x00, 
                        0x10
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x01, 
                        0x00, 
                        0x11
                    }
                })
                Method (_PRT, 0, NotSerialized)
                {
                    If (\GPIC)
                    {
                        Return (AART)
                    }
                    Else
                    {
                        Return (LART)
                    }
                }

                Mutex (MDGS, 0x07)
                Name (VDEE, 0x01)
                Name (VDDA, Buffer (0x04) {})
                CreateBitField (VDDA, 0x00, VUPC)
                CreateBitField (VDDA, 0x01, VQDL)
                CreateBitField (VDDA, 0x02, VQDC)
                CreateBitField (VDDA, 0x03, VQD0)
                CreateBitField (VDDA, 0x04, VQD1)
                CreateBitField (VDDA, 0x05, VQD2)
                CreateBitField (VDDA, 0x06, VQD3)
                CreateBitField (VDDA, 0x07, VQD4)
                CreateBitField (VDDA, 0x08, VQD5)
                CreateBitField (VDDA, 0x09, VSDL)
                CreateBitField (VDDA, 0x0A, VSDC)
                CreateBitField (VDDA, 0x0B, VSD0)
                CreateBitField (VDDA, 0x0C, VSD1)
                CreateBitField (VDDA, 0x0D, VSD2)
                CreateBitField (VDDA, 0x0E, VSD3)
                CreateBitField (VDDA, 0x0F, VSD4)
                CreateBitField (VDDA, 0x10, VSD5)
                CreateBitField (VDDA, 0x11, MSWT)
                CreateBitField (VDDA, 0x12, VWST)
                Device (VID)
                {
                    Name (_ADR, 0x00)
                    OperationRegion (VPCG, PCI_Config, 0x00, 0x0100)
                    Field (VPCG, DWordAcc, NoLock, Preserve)
                    {
                                Offset (0x64), 
                        VPWR,   8
                    }

                    Name (_S3D, 0x03)
                    Method (_INI, 0, NotSerialized)
                    {
                        \VUPS (0x02)
                        Store (\VCDL, VQDL)
                        Store (\VCDC, VQDC)
                        Store (\VCDT, VQD0)
                        Store (\VCDD, VQD1)
                    }

                    Name (DGOS, 0x00)
                    Method (_PS0, 0, NotSerialized)
                    {
                        If (\_SB.PCI0.VID.ISOP ())
                        {
                            If (DGOS)
                            {
                                _ON ()
                                \VHYB (0x09, 0x00)
                                Store (Zero, \_SB.PCI0.PEG.VID.HDAS)
                                \SWTT (0x01)
                                Store (Zero, DGOS)
                            }
                        }
                    }

                    Method (_PS1, 0, NotSerialized)
                    {
                        Noop
                    }

                    Method (_PS2, 0, NotSerialized)
                    {
                        Noop
                    }

                    Method (_PS3, 0, NotSerialized)
                    {
                        If (\_SB.PCI0.VID.ISOP ())
                        {
                            If (LEqual (\_SB.PCI0.PEG.VID.OMPR, 0x03))
                            {
                                \SWTT (0x00)
                                _OFF ()
                                Store (One, DGOS)
                                Store (0x02, \_SB.PCI0.PEG.VID.OMPR)
                            }
                        }
                    }

                    Method (_ON, 0, NotSerialized)
                    {
                        \VHYB (0x02, 0x00)
                        \VHYB (0x00, 0x01)
                        Sleep (0x32)
                        \VHYB (0x02, 0x01)
                        \VHYB (0x08, 0x01)
                        Sleep (0xC8)
                        \VHYB (0x04, 0x00)
                        If (\_SB.PCI0.VID.ISOP ())
                        {
                            \MISA (0x11BA, 0xDF, 0x00)
                        }
                    }

                    Method (_OFF, 0, NotSerialized)
                    {
                        If (\_SB.PCI0.VID.ISOP ())
                        {
                            \MISA (0x11BA, 0xDF, 0x20)
                        }

                        \VHYB (0x08, 0x00)
                        \VHYB (0x02, 0x00)
                        \VHYB (0x00, 0x00)
                    }

                    Method (_STA, 0, NotSerialized)
                    {
                        If (\_SB.PCI0.VID.ISOP ())
                        {
                            Return (0x0F)
                        }

                        If (And (RISA (0x118E), 0x02))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (0x00)
                        }
                    }

                    Method (_DSM, 4, NotSerialized)
                    {
                        If (\CMPB (Arg0, Buffer (0x10)
                                {
                                    /* 0000 */    0xF8, 0xD8, 0x86, 0xA4, 0xDA, 0x0B, 0x1B, 0x47, 
                                    /* 0008 */    0xA7, 0x2B, 0x60, 0x42, 0xA6, 0xB5, 0xBE, 0xE0
                                }))
                        {
                            Return (NVOP (Arg0, Arg1, Arg2, Arg3))
                        }

                        Return (\_SB.PCI0.VID._DSM (Arg0, Arg1, Arg2, Arg3))
                    }

                    Name (_IRC, 0x00)
                    OperationRegion (ATRP, SystemMemory, \ATRB, 0x00010000)
                    Field (ATRP, AnyAcc, Lock, Preserve)
                    {
                        IDX0,   262144, 
                        IDX1,   262144
                    }

                    Method (_ROM, 2, Serialized)
                    {
                        If (LGreaterEqual (Arg0, 0x8000))
                        {
                            Return (GETB (Subtract (Arg0, 0x8000), Arg1, IDX1))
                        }

                        If (LGreater (Add (Arg0, Arg1), 0x8000))
                        {
                            Subtract (0x8000, Arg0, Local0)
                            Subtract (Arg1, Local0, Local1)
                            Store (GETB (Arg0, Local0, IDX0), Local3)
                            Store (GETB (0x00, Local1, IDX1), Local4)
                            Concatenate (Local3, Local4, Local5)
                            Return (Local5)
                        }

                        Return (GETB (Arg0, Arg1, IDX0))
                    }

                    Method (GETB, 3, Serialized)
                    {
                        Multiply (Arg0, 0x08, Local0)
                        Multiply (Arg1, 0x08, Local1)
                        CreateField (Arg2, Local0, Local1, TBF3)
                        Return (TBF3)
                    }

                    Method (VSWT, 0, NotSerialized)
                    {
                        If (\WVIS)
                        {
                            Store (\VEVT (0x07), Local0)
                        }
                        Else
                        {
                            Store (\VEVT (0x05), Local0)
                        }

                        And (0xFF, Local0, Local1)
                        If (Local1)
                        {
                            ASWT (Local1, 0x01)
                        }
                    }

                    Method (VLOC, 1, NotSerialized)
                    {
                        If (LEqual (Arg0, \_SB.LID._LID ()))
                        {
                            \VSLD (Arg0)
                            If (LEqual (And (VPWR, 0x03), 0x00))
                            {
                                If (Arg0)
                                {
                                    Store (\VEVT (0x01), Local0)
                                }
                                Else
                                {
                                    Store (\VEVT (0x02), Local0)
                                }

                                And (0x0F, Local0, Local1)
                                If (Local1)
                                {
                                    ASWT (Local1, 0x00)
                                }
                            }
                        }
                    }

                    Method (_DOS, 1, NotSerialized)
                    {
                        If (LEqual (Arg0, 0x02))
                        {
                            Store (0x14, Local0)
                            While (Local0)
                            {
                                Decrement (Local0)
                                Acquire (MDGS, 0xFFFF)
                                If (LEqual (0x00, MSWT))
                                {
                                    Store (0x01, MSWT)
                                    Store (0x00, Local0)
                                    Store (Arg0, VDEE)
                                }

                                Release (MDGS)
                                Sleep (0xC8)
                            }
                        }
                        Else
                        {
                            Acquire (MDGS, 0xFFFF)
                            If (LEqual (VDEE, 0x02))
                            {
                                Store (0x00, MSWT)
                            }

                            If (LGreater (Arg0, 0x02))
                            {
                                Store (0x01, VDEE)
                            }
                            Else
                            {
                                Store (Arg0, VDEE)
                            }

                            Release (MDGS)
                        }
                    }

                    Method (_DOD, 0, NotSerialized)
                    {
                        If (\_SB.PCI0.VID.ISOP ())
                        {
                            Return (Package (0x04)
                            {
                                0x80086342, 
                                0x80087343, 
                                0x80086354, 
                                0x80087355
                            })
                        }

                        If (\WVIS)
                        {
                            Return (Package (0x08)
                            {
                                0x80000100, 
                                0x80006330, 
                                0x80007331, 
                                0x80086342, 
                                0x80087343, 
                                0x80086354, 
                                0x80087355, 
                                0x80000410
                            })
                        }
                        Else
                        {
                            Return (Package (0x08)
                            {
                                0x0100, 
                                0x0114, 
                                0x0111, 
                                0x0115, 
                                0x0112, 
                                0x0116, 
                                0x0113, 
                                0x0110
                            })
                        }
                    }

                    Method (MXDS, 1, NotSerialized)
                    {
                        If (LNot (Arg0))
                        {
                            Return (LNot (LNot (And (\RISA (0x11BA), 0x10))))
                        }
                        Else
                        {
                            \SWTT (0x01)
                            \MISA (0x11BA, 0xAB, 0x10)
                        }
                    }

                    Method (MXMX, 1, NotSerialized)
                    {
                        While (One)
                        {
                            Name (_T_0, 0x00)
                            Store (ToInteger (Arg0), _T_0)
                            If (LEqual (_T_0, 0x00))
                            {
                                \MISA (0x11BA, 0x9F, 0x00)
                            }
                            Else
                            {
                                If (LEqual (_T_0, 0x02))
                                {
                                    Return (LEqual (And (\RISA (0x11BA), 0x40), 0x00))
                                }
                            }

                            Break
                        }

                        Return (0x01)
                    }

                    Method (ASWT, 2, NotSerialized)
                    {
                        If (LEqual (0x01, VDEE))
                        {
                            And (0x01, Arg1, Local1)
                            \VSDS (Arg0, Local1)
                        }
                        Else
                        {
                            Store (0x14, Local0)
                            While (Local0)
                            {
                                Decrement (Local0)
                                Acquire (MDGS, 0xFFFF)
                                If (LEqual (0x00, MSWT))
                                {
                                    Store (0x00, Local0)
                                    If (And (0x01, Arg1))
                                    {
                                        Store (0x01, VUPC)
                                    }
                                    Else
                                    {
                                        Store (0x00, VUPC)
                                    }

                                    If (And (0x01, Arg0))
                                    {
                                        Store (0x01, VQDL)
                                    }
                                    Else
                                    {
                                        Store (0x00, VQDL)
                                    }

                                    If (And (0x02, Arg0))
                                    {
                                        Store (0x01, VQDC)
                                    }
                                    Else
                                    {
                                        Store (0x00, VQDC)
                                    }

                                    If (And (0x04, Arg0))
                                    {
                                        Store (0x01, VQD0)
                                    }
                                    Else
                                    {
                                        Store (0x00, VQD0)
                                    }

                                    If (And (0x08, Arg0))
                                    {
                                        Store (0x01, VQD1)
                                    }
                                    Else
                                    {
                                        Store (0x00, VQD1)
                                    }

                                    If (And (0x10, Arg0))
                                    {
                                        Store (0x01, VQD2)
                                    }
                                    Else
                                    {
                                        Store (0x00, VQD2)
                                    }

                                    If (And (0x20, Arg0))
                                    {
                                        Store (0x01, VQD3)
                                    }
                                    Else
                                    {
                                        Store (0x00, VQD3)
                                    }

                                    If (And (0x40, Arg0))
                                    {
                                        Store (0x01, VQD4)
                                    }
                                    Else
                                    {
                                        Store (0x00, VQD4)
                                    }

                                    If (And (0x80, Arg0))
                                    {
                                        Store (0x01, VQD5)
                                    }
                                    Else
                                    {
                                        Store (0x00, VQD5)
                                    }
                                }

                                Release (MDGS)
                                Sleep (0xC8)
                            }

                            If (And (0x02, Arg1))
                            {
                                Notify (VID, 0x81)
                            }
                            Else
                            {
                                Notify (VID, 0x80)
                            }
                        }
                    }

                    Method (VDSW, 1, NotSerialized)
                    {
                        If (LEqual (VPWR, 0x00))
                        {
                            If (Arg0)
                            {
                                Store (\VEVT (0x03), Local0)
                            }
                            Else
                            {
                                Store (\VEVT (0x04), Local0)
                            }

                            And (0x0F, Local0, Local1)
                            If (Local1)
                            {
                                ASWT (Local1, 0x00)
                            }
                        }
                    }

                    Device (LCD0)
                    {
                        Method (_ADR, 0, NotSerialized)
                        {
                            If (\WVIS)
                            {
                                If (\_SB.PCI0.VID.ISHV ())
                                {
                                    Return (0x0410)
                                }
                                Else
                                {
                                    Return (0x80000410)
                                }
                            }
                            Else
                            {
                                Return (0x0110)
                            }
                        }

                        Method (_DCS, 0, NotSerialized)
                        {
                            \VUPS (0x00)
                            If (\VCDL)
                            {
                                Return (0x1F)
                            }
                            Else
                            {
                                Return (0x1D)
                            }
                        }

                        Method (_DGS, 0, NotSerialized)
                        {
                            Return (VQDL)
                        }

                        Method (_DSS, 1, NotSerialized)
                        {
                            And (Arg0, 0x01, VSDL)
                            If (And (Arg0, 0x80000000))
                            {
                                If (And (Arg0, 0x40000000))
                                {
                                    DSWT (0x02)
                                }
                                Else
                                {
                                    DSWT (0x01)
                                }
                            }
                        }
                    }

                    Device (CRT0)
                    {
                        Method (_ADR, 0, NotSerialized)
                        {
                            If (\WVIS)
                            {
                                Return (0x80000100)
                            }
                            Else
                            {
                                Return (0x0100)
                            }
                        }

                        Method (_DCS, 0, NotSerialized)
                        {
                            \VUPS (0x01)
                            If (\VCSS)
                            {
                                If (\VCDC)
                                {
                                    Return (0x1F)
                                }
                                Else
                                {
                                    Return (0x1D)
                                }
                            }
                            Else
                            {
                                If (\VCDC)
                                {
                                    Return (0x0F)
                                }
                                Else
                                {
                                    Return (0x0D)
                                }
                            }
                        }

                        Method (_DGS, 0, NotSerialized)
                        {
                            Return (VQDC)
                        }

                        Method (_DSS, 1, NotSerialized)
                        {
                            And (Arg0, 0x01, VSDC)
                            If (And (Arg0, 0x80000000))
                            {
                                If (And (Arg0, 0x40000000))
                                {
                                    DSWT (0x02)
                                }
                                Else
                                {
                                    DSWT (0x01)
                                }
                            }
                        }
                    }

                    Device (DVI0)
                    {
                        Method (_ADR, 0, NotSerialized)
                        {
                            If (\WVIS)
                            {
                                Return (0x80007331)
                            }
                            Else
                            {
                                Return (0x0111)
                            }
                        }

                        Method (_DCS, 0, NotSerialized)
                        {
                            \VUPS (0x00)
                            If (\VCDD)
                            {
                                Return (0x1F)
                            }
                            Else
                            {
                                Return (0x1D)
                            }
                        }

                        Method (_DGS, 0, NotSerialized)
                        {
                            Return (VQD1)
                        }

                        Method (_DSS, 1, NotSerialized)
                        {
                            And (Arg0, 0x01, VSD1)
                            If (And (Arg0, 0x80000000))
                            {
                                If (And (Arg0, 0x40000000))
                                {
                                    DSWT (0x02)
                                }
                                Else
                                {
                                    DSWT (0x01)
                                }
                            }
                        }
                    }

                    Device (DP0)
                    {
                        Method (_ADR, 0, NotSerialized)
                        {
                            If (\WVIS)
                            {
                                Return (0x80006330)
                            }
                            Else
                            {
                                Return (0x0114)
                            }
                        }

                        Method (_DCS, 0, NotSerialized)
                        {
                            \VUPS (0x00)
                            If (\VCDT)
                            {
                                Return (0x1F)
                            }
                            Else
                            {
                                Return (0x1D)
                            }
                        }

                        Method (_DGS, 0, NotSerialized)
                        {
                            Return (VQD0)
                        }

                        Method (_DSS, 1, NotSerialized)
                        {
                            And (Arg0, 0x01, VSD0)
                            If (And (Arg0, 0x80000000))
                            {
                                If (And (Arg0, 0x40000000))
                                {
                                    DSWT (0x02)
                                }
                                Else
                                {
                                    DSWT (0x01)
                                }
                            }
                        }
                    }

                    Device (DVI1)
                    {
                        Method (_ADR, 0, NotSerialized)
                        {
                            If (\WVIS)
                            {
                                Return (0x80087355)
                            }
                            Else
                            {
                                Return (0x0112)
                            }
                        }

                        Method (_DCS, 0, NotSerialized)
                        {
                            \VUPS (0x00)
                            If (\VCDD)
                            {
                                Return (0x1F)
                            }
                            Else
                            {
                                Return (0x1D)
                            }
                        }

                        Method (_DGS, 0, NotSerialized)
                        {
                            Return (VQD3)
                        }

                        Method (_DSS, 1, NotSerialized)
                        {
                            And (Arg0, 0x01, VSD3)
                            If (And (Arg0, 0x80000000))
                            {
                                If (And (Arg0, 0x40000000))
                                {
                                    DSWT (0x02)
                                }
                                Else
                                {
                                    DSWT (0x01)
                                }
                            }
                        }
                    }

                    Device (DP1)
                    {
                        Method (_ADR, 0, NotSerialized)
                        {
                            If (\WVIS)
                            {
                                Return (0x80086342)
                            }
                            Else
                            {
                                Return (0x0115)
                            }
                        }

                        Method (_DCS, 0, NotSerialized)
                        {
                            \VUPS (0x00)
                            If (\VCDT)
                            {
                                Return (0x1F)
                            }
                            Else
                            {
                                Return (0x1D)
                            }
                        }

                        Method (_DGS, 0, NotSerialized)
                        {
                            Return (VQD2)
                        }

                        Method (_DSS, 1, NotSerialized)
                        {
                            And (Arg0, 0x01, VSD2)
                            If (And (Arg0, 0x80000000))
                            {
                                If (And (Arg0, 0x40000000))
                                {
                                    DSWT (0x02)
                                }
                                Else
                                {
                                    DSWT (0x01)
                                }
                            }
                        }
                    }

                    Device (DVI2)
                    {
                        Method (_ADR, 0, NotSerialized)
                        {
                            If (\WVIS)
                            {
                                Return (0x80087343)
                            }
                            Else
                            {
                                Return (0x0113)
                            }
                        }

                        Method (_DCS, 0, NotSerialized)
                        {
                            \VUPS (0x00)
                            If (\VCDD)
                            {
                                Return (0x1F)
                            }
                            Else
                            {
                                Return (0x1D)
                            }
                        }

                        Method (_DGS, 0, NotSerialized)
                        {
                            Return (VQD5)
                        }

                        Method (_DSS, 1, NotSerialized)
                        {
                            And (Arg0, 0x01, VSD5)
                            If (And (Arg0, 0x80000000))
                            {
                                If (And (Arg0, 0x40000000))
                                {
                                    DSWT (0x02)
                                }
                                Else
                                {
                                    DSWT (0x01)
                                }
                            }
                        }
                    }

                    Device (DP2)
                    {
                        Method (_ADR, 0, NotSerialized)
                        {
                            If (\WVIS)
                            {
                                Return (0x80086354)
                            }
                            Else
                            {
                                Return (0x0116)
                            }
                        }

                        Method (_DCS, 0, NotSerialized)
                        {
                            \VUPS (0x00)
                            If (\VCDT)
                            {
                                Return (0x1F)
                            }
                            Else
                            {
                                Return (0x1D)
                            }
                        }

                        Method (_DGS, 0, NotSerialized)
                        {
                            Return (VQD4)
                        }

                        Method (_DSS, 1, NotSerialized)
                        {
                            And (Arg0, 0x01, VSD4)
                            If (And (Arg0, 0x80000000))
                            {
                                If (And (Arg0, 0x40000000))
                                {
                                    DSWT (0x02)
                                }
                                Else
                                {
                                    DSWT (0x01)
                                }
                            }
                        }
                    }

                    Method (DSWT, 1, NotSerialized)
                    {
                        If (VSDL)
                        {
                            Store (0x01, Local0)
                        }
                        Else
                        {
                            Store (0x00, Local0)
                        }

                        If (VSDC)
                        {
                            Or (0x02, Local0, Local0)
                        }

                        If (VSD0)
                        {
                            Or (0x08, Local0, Local0)
                        }

                        If (Local0)
                        {
                            If (VUPC)
                            {
                                \VSDS (Local0, Arg0)
                            }
                        }
                        Else
                        {
                            Noop
                        }
                    }
                }

                Scope (\_SB.PCI0)
                {
                    Device (WMI1)
                    {
                        Name (_HID, "*pnp0c14")
                        Name (_UID, "MXM2")
                        Name (_WDG, Buffer (0x0190)
                        {
                            /* 0000 */    0x3C, 0x5C, 0xCB, 0xF6, 0xAE, 0x9C, 0xBD, 0x4E, 
                            /* 0008 */    0xB5, 0x77, 0x93, 0x1E, 0xA3, 0x2A, 0x2C, 0xC0, 
                            /* 0010 */    0x4D, 0x58, 0x01, 0x02, 0x40, 0x2F, 0x1A, 0x92, 
                            /* 0018 */    0xC4, 0x0D, 0x2D, 0x40, 0xAC, 0x18, 0xB4, 0x84, 
                            /* 0020 */    0x44, 0xEF, 0x9E, 0xD2, 0xD0, 0x00, 0x01, 0x08, 
                            /* 0028 */    0x61, 0xD3, 0x2A, 0xC1, 0xA9, 0x9F, 0x74, 0x4C, 
                            /* 0030 */    0x90, 0x1F, 0x95, 0xCB, 0x09, 0x45, 0xCF, 0x3E, 
                            /* 0038 */    0xD9, 0x00, 0x01, 0x08, 0x64, 0x35, 0x4F, 0xEF, 
                            /* 0040 */    0xC8, 0x48, 0x94, 0x48, 0x85, 0xC8, 0xB4, 0x6C, 
                            /* 0048 */    0x26, 0xB8, 0x42, 0xC0, 0xDA, 0x00, 0x01, 0x08, 
                            /* 0050 */    0x06, 0x80, 0x84, 0x42, 0x86, 0x88, 0x0E, 0x49, 
                            /* 0058 */    0x8C, 0x72, 0x2B, 0xDC, 0xA9, 0x3A, 0x8A, 0x09, 
                            /* 0060 */    0xDB, 0x00, 0x01, 0x08, 0x62, 0xDE, 0x6B, 0xE0, 
                            /* 0068 */    0x75, 0xEE, 0xF4, 0x48, 0xA5, 0x83, 0xB2, 0x3E, 
                            /* 0070 */    0x69, 0xAB, 0xF8, 0x91, 0x80, 0x00, 0x01, 0x08, 
                            /* 0078 */    0x0F, 0xBD, 0xDE, 0x3A, 0x5F, 0x0C, 0xED, 0x46, 
                            /* 0080 */    0xAB, 0x2E, 0x04, 0x96, 0x2B, 0x4F, 0xDC, 0xBC, 
                            /* 0088 */    0x81, 0x00, 0x01, 0x08, 0x54, 0x59, 0x06, 0x85, 
                            /* 0090 */    0x14, 0x83, 0x06, 0x4A, 0x8B, 0xB4, 0xCC, 0xAB, 
                            /* 0098 */    0x45, 0x03, 0x2E, 0x88, 0xE0, 0x00, 0x01, 0x08, 
                            /* 00A0 */    0x3F, 0x5E, 0x8F, 0x02, 0x53, 0x88, 0xA5, 0x45, 
                            /* 00A8 */    0x80, 0x47, 0x3D, 0x24, 0x62, 0xF5, 0xA7, 0x34, 
                            /* 00B0 */    0xE1, 0x00, 0x01, 0x08, 0xEE, 0x63, 0x9E, 0x30, 
                            /* 00B8 */    0xB0, 0xED, 0xB6, 0x4F, 0x91, 0x73, 0xF6, 0x80, 
                            /* 00C0 */    0x01, 0x3E, 0x73, 0x11, 0xE2, 0x00, 0x01, 0x08, 
                            /* 00C8 */    0xAA, 0x56, 0x52, 0x4A, 0x2C, 0x43, 0xAE, 0x4C, 
                            /* 00D0 */    0xB4, 0x9F, 0xDC, 0xA7, 0x07, 0x62, 0x2B, 0xAD, 
                            /* 00D8 */    0xE3, 0x00, 0x01, 0x08, 0xCC, 0x1D, 0x96, 0x67, 
                            /* 00E0 */    0x83, 0x16, 0x21, 0x44, 0xA1, 0x54, 0x68, 0xED, 
                            /* 00E8 */    0xE0, 0xFF, 0x90, 0xD2, 0xE4, 0x00, 0x01, 0x08, 
                            /* 00F0 */    0x5A, 0x7C, 0xAD, 0xB9, 0xEF, 0x6F, 0x4C, 0x48, 
                            /* 00F8 */    0x80, 0xD3, 0x59, 0xA9, 0x21, 0x73, 0x67, 0x50, 
                            /* 0100 */    0xE5, 0x00, 0x01, 0x08, 0xE9, 0xB5, 0xD5, 0xF7, 
                            /* 0108 */    0x93, 0xCD, 0x43, 0x46, 0x98, 0x98, 0xA4, 0x5B, 
                            /* 0110 */    0x2F, 0x2A, 0xE3, 0xE5, 0xE6, 0x00, 0x01, 0x08, 
                            /* 0118 */    0xC2, 0xE2, 0xA8, 0x69, 0x22, 0xF5, 0x3A, 0x46, 
                            /* 0120 */    0x89, 0x08, 0xC7, 0xE4, 0x65, 0x39, 0xC8, 0xB1, 
                            /* 0128 */    0xE7, 0x00, 0x01, 0x08, 0x1B, 0xA5, 0x46, 0xAF, 
                            /* 0130 */    0x23, 0x5C, 0x43, 0x4C, 0x96, 0x09, 0x3C, 0xBB, 
                            /* 0138 */    0x95, 0x53, 0xD5, 0xA5, 0xE8, 0x00, 0x01, 0x08, 
                            /* 0140 */    0xF2, 0x22, 0xD8, 0xA6, 0x67, 0x3A, 0xC7, 0x4D, 
                            /* 0148 */    0xAA, 0xD1, 0x55, 0x50, 0x2A, 0x61, 0x62, 0xE8, 
                            /* 0150 */    0xE9, 0x00, 0x01, 0x08, 0x29, 0x0A, 0xD2, 0x99, 
                            /* 0158 */    0x50, 0x93, 0x14, 0x41, 0xAA, 0x90, 0x28, 0xF0, 
                            /* 0160 */    0xEB, 0x83, 0xD3, 0x08, 0xEA, 0x00, 0x01, 0x08, 
                            /* 0168 */    0x66, 0x02, 0x22, 0x53, 0x55, 0x2F, 0x18, 0x4E, 
                            /* 0170 */    0x9E, 0x9C, 0xD0, 0x8C, 0x67, 0x43, 0xD6, 0xFD, 
                            /* 0178 */    0xEB, 0x00, 0x01, 0x08, 0x21, 0x12, 0x90, 0x05, 
                            /* 0180 */    0x66, 0xD5, 0xD1, 0x11, 0xB2, 0xF0, 0x00, 0xA0, 
                            /* 0188 */    0xC9, 0x06, 0x29, 0x10, 0x58, 0x4D, 0x01, 0x00
                        })
                        Method (WMMX, 3, NotSerialized)
                        {
                            CreateDWordField (Arg2, 0x00, FUNC)
                            CreateDWordField (Arg2, 0x04, ARGS)
                            CreateDWordField (Arg2, 0x08, XARG)
                            If (LEqual (FUNC, 0x444F445F))
                            {
                                If (LEqual (Arg1, 0x10))
                                {
                                    Return (\_SB.PCI0.VID._DOD ())
                                }
                                Else
                                {
                                    Return (\_SB.PCI0.PEG.VID._DOD ())
                                }
                            }
                            Else
                            {
                                If (LEqual (FUNC, 0x5343445F))
                                {
                                    If (LGreaterEqual (SizeOf (Arg2), 0x08))
                                    {
                                        If (LEqual (ARGS, 0x80000100))
                                        {
                                            If (LEqual (Arg1, 0x10))
                                            {
                                                Return (\_SB.PCI0.VID.CRT0._DCS ())
                                            }
                                            Else
                                            {
                                                Return (\_SB.PCI0.PEG.VID.CRT0._DCS ())
                                            }
                                        }
                                        Else
                                        {
                                            If (LEqual (ARGS, 0x80007331))
                                            {
                                                If (LNotEqual (Arg1, 0x10))
                                                {
                                                    Return (\_SB.PCI0.PEG.VID.DVI0._DCS ())
                                                }
                                            }
                                        }
                                    }
                                }
                                Else
                                {
                                    If (LGreaterEqual (SizeOf (Arg2), 0x04))
                                    {
                                        If (LEqual (FUNC, 0x534F525F))
                                        {
                                            If (LGreaterEqual (SizeOf (Arg2), 0x08))
                                            {
                                                If (LEqual (Arg1, 0x10)) {}
                                                Else
                                                {
                                                    Return (\_SB.PCI0.PEG.VID._ROM (ARGS, XARG))
                                                }
                                            }
                                        }
                                        Else
                                        {
                                            If (LEqual (FUNC, 0x4D53445F))
                                            {
                                                If (LGreaterEqual (SizeOf (Arg2), 0x18))
                                                {
                                                    CreateField (Arg2, 0x00, 0x80, MUID)
                                                    CreateDWordField (Arg2, 0x10, REVI)
                                                    CreateDWordField (Arg2, 0x14, SFNC)
                                                    CreateDWordField (Arg2, 0x18, YARG)
                                                    If (LNotEqual (Arg1, 0x10))
                                                    {
                                                        Return (\_SB.PCI0.VID._DSM (MUID, REVI, SFNC, YARG))
                                                    }
                                                }
                                            }
                                            Else
                                            {
                                                If (LEqual (FUNC, 0x584D584D))
                                                {
                                                    If (LGreaterEqual (SizeOf (Arg2), 0x08))
                                                    {
                                                        Return (0x01)
                                                    }
                                                }
                                                Else
                                                {
                                                    If (LEqual (FUNC, 0x5344584D))
                                                    {
                                                        If (LGreaterEqual (SizeOf (Arg2), 0x08))
                                                        {
                                                            If (LEqual (Arg1, 0x10))
                                                            {
                                                                Return (\_SB.PCI0.VID.MXDS (XARG))
                                                            }
                                                            Else
                                                            {
                                                                Return (\_SB.PCI0.PEG.VID.MXDS (XARG))
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }

                            Return (0x00)
                        }

                        Name (WQXM, Buffer (0x029C)
                        {
                            /* 0000 */    0x46, 0x4F, 0x4D, 0x42, 0x01, 0x00, 0x00, 0x00, 
                            /* 0008 */    0x8B, 0x02, 0x00, 0x00, 0x0C, 0x08, 0x00, 0x00, 
                            /* 0010 */    0x44, 0x53, 0x00, 0x01, 0x1A, 0x7D, 0xDA, 0x54, 
                            /* 0018 */    0x18, 0xD2, 0x83, 0x00, 0x01, 0x06, 0x18, 0x42, 
                            /* 0020 */    0x10, 0x05, 0x10, 0x8A, 0xE6, 0x80, 0x42, 0x04, 
                            /* 0028 */    0x92, 0x43, 0xA4, 0x30, 0x30, 0x28, 0x0B, 0x20, 
                            /* 0030 */    0x86, 0x90, 0x0B, 0x26, 0x26, 0x40, 0x04, 0x84, 
                            /* 0038 */    0xBC, 0x0A, 0xB0, 0x29, 0xC0, 0x24, 0x88, 0xFA, 
                            /* 0040 */    0xF7, 0x87, 0x28, 0x09, 0x0E, 0x25, 0x04, 0x42, 
                            /* 0048 */    0x12, 0x05, 0x98, 0x17, 0xA0, 0x5B, 0x80, 0x61, 
                            /* 0050 */    0x01, 0xB6, 0x05, 0x98, 0x16, 0xE0, 0x18, 0x92, 
                            /* 0058 */    0x4A, 0x03, 0xA7, 0x04, 0x96, 0x02, 0x21, 0xA1, 
                            /* 0060 */    0x02, 0x94, 0x0B, 0xF0, 0x2D, 0x40, 0x3B, 0xA2, 
                            /* 0068 */    0x24, 0x0B, 0xB0, 0x0C, 0x23, 0x02, 0x8F, 0x82, 
                            /* 0070 */    0xA1, 0x71, 0x68, 0xEC, 0x30, 0x2C, 0x13, 0x4C, 
                            /* 0078 */    0x83, 0x38, 0x8C, 0xB2, 0x91, 0x45, 0x60, 0xDC, 
                            /* 0080 */    0x4E, 0x05, 0xC8, 0x15, 0x20, 0x4C, 0x80, 0x78, 
                            /* 0088 */    0x54, 0x61, 0x34, 0x07, 0x45, 0xE0, 0x42, 0x63, 
                            /* 0090 */    0x64, 0x40, 0xC8, 0xA3, 0x00, 0xAB, 0xA3, 0xD0, 
                            /* 0098 */    0xA4, 0x12, 0xD8, 0xBD, 0x00, 0x8D, 0x02, 0xB4, 
                            /* 00A0 */    0x09, 0x70, 0x28, 0x40, 0xA1, 0x00, 0x6B, 0x18, 
                            /* 00A8 */    0x72, 0x06, 0x21, 0x5B, 0xD8, 0xC2, 0x68, 0x50, 
                            /* 00B0 */    0x80, 0x45, 0x14, 0x8D, 0xE0, 0x2C, 0x2A, 0x9E, 
                            /* 00B8 */    0x93, 0x50, 0x02, 0xDA, 0x1B, 0x82, 0xF0, 0x8C, 
                            /* 00C0 */    0xD9, 0x18, 0x9E, 0x10, 0x83, 0x54, 0x86, 0x21, 
                            /* 00C8 */    0x88, 0xB8, 0x11, 0x8E, 0xA5, 0xFD, 0x41, 0x10, 
                            /* 00D0 */    0xF9, 0xAB, 0xD7, 0xB8, 0x1D, 0x69, 0x34, 0xA8, 
                            /* 00D8 */    0xB1, 0x26, 0x38, 0x76, 0x8F, 0xE6, 0x84, 0x3B, 
                            /* 00E0 */    0x17, 0x20, 0x7D, 0x6E, 0x02, 0x39, 0xBA, 0xD3, 
                            /* 00E8 */    0xA8, 0x73, 0xD0, 0x64, 0x78, 0x0C, 0x2B, 0xC1, 
                            /* 00F0 */    0x7F, 0x80, 0x4F, 0x01, 0x78, 0xD7, 0x80, 0x9A, 
                            /* 00F8 */    0xFE, 0xC1, 0x33, 0x41, 0x70, 0xA8, 0x21, 0x7A, 
                            /* 0100 */    0xD4, 0xE1, 0x4E, 0xE0, 0xBC, 0x8E, 0x84, 0x41, 
                            /* 0108 */    0x1C, 0xD1, 0x71, 0x63, 0x67, 0x75, 0x32, 0x07, 
                            /* 0110 */    0x5D, 0xAA, 0x00, 0xB3, 0x07, 0x00, 0x0D, 0x2E, 
                            /* 0118 */    0xC1, 0x69, 0x9F, 0x49, 0xE8, 0xF7, 0x80, 0xF3, 
                            /* 0120 */    0xE9, 0x79, 0x6C, 0x6C, 0x10, 0xA8, 0x91, 0xF9, 
                            /* 0128 */    0xFF, 0x0F, 0xED, 0x41, 0x9E, 0x56, 0xCC, 0x90, 
                            /* 0130 */    0xCF, 0x02, 0x87, 0xC5, 0xC4, 0x1E, 0x19, 0xE8, 
                            /* 0138 */    0x78, 0xC0, 0x7F, 0x00, 0x78, 0x34, 0x88, 0xF0, 
                            /* 0140 */    0x66, 0xE0, 0xF9, 0x9A, 0x60, 0x50, 0x08, 0x39, 
                            /* 0148 */    0x19, 0x0F, 0x4A, 0xCC, 0xF9, 0x80, 0xCC, 0x25, 
                            /* 0150 */    0xC4, 0x43, 0xC0, 0x31, 0xC4, 0x08, 0x7A, 0x46, 
                            /* 0158 */    0x45, 0x23, 0x6B, 0x22, 0x3E, 0x03, 0x78, 0xDC, 
                            /* 0160 */    0x96, 0x05, 0x42, 0x09, 0x0C, 0xEC, 0x73, 0xC3, 
                            /* 0168 */    0x3B, 0x84, 0x61, 0x71, 0xA3, 0x09, 0xEC, 0xF3, 
                            /* 0170 */    0x85, 0x05, 0x0E, 0x0A, 0x05, 0xEB, 0xBB, 0x42, 
                            /* 0178 */    0xCC, 0xE7, 0x81, 0xE3, 0x3C, 0x60, 0x0B, 0x9F, 
                            /* 0180 */    0x28, 0x01, 0x3E, 0x24, 0x8F, 0x06, 0xDE, 0x20, 
                            /* 0188 */    0xE1, 0x5B, 0x3F, 0x02, 0x10, 0xE0, 0x27, 0x06, 
                            /* 0190 */    0x13, 0x58, 0x1E, 0x30, 0x7A, 0x94, 0xF6, 0x2B, 
                            /* 0198 */    0x00, 0x21, 0xF8, 0x8B, 0xC5, 0x53, 0xC0, 0xEB, 
                            /* 01A0 */    0x40, 0x84, 0x63, 0x81, 0x29, 0x72, 0x6C, 0x68, 
                            /* 01A8 */    0x78, 0x7E, 0x70, 0x88, 0x1E, 0xF5, 0x5C, 0xC2, 
                            /* 01B0 */    0x1F, 0x4D, 0x94, 0x53, 0x38, 0x1C, 0x1F, 0x39, 
                            /* 01B8 */    0x8C, 0x10, 0xFE, 0x49, 0xE3, 0xC9, 0xC3, 0x9A, 
                            /* 01C0 */    0xEF, 0x00, 0x9A, 0xD2, 0x5B, 0xC0, 0xFB, 0x83, 
                            /* 01C8 */    0x47, 0x80, 0x11, 0x20, 0xE1, 0x68, 0x82, 0x89, 
                            /* 01D0 */    0x7C, 0x3A, 0x01, 0xD5, 0xFF, 0xFF, 0x74, 0x02, 
                            /* 01D8 */    0xB8, 0xBA, 0x01, 0x14, 0x37, 0x6A, 0x9D, 0x49, 
                            /* 01E0 */    0x7C, 0x2C, 0xF1, 0xAD, 0xE4, 0xBC, 0x43, 0xC5, 
                            /* 01E8 */    0x7F, 0x93, 0x78, 0x3A, 0xF1, 0x34, 0x1E, 0x4C, 
                            /* 01F0 */    0x42, 0x44, 0x89, 0x18, 0x21, 0xA2, 0xEF, 0x27, 
                            /* 01F8 */    0x46, 0x08, 0x15, 0x31, 0x6C, 0xA4, 0x37, 0x80, 
                            /* 0200 */    0xE7, 0x13, 0xE3, 0x84, 0x08, 0xF4, 0x74, 0xC2, 
                            /* 0208 */    0x42, 0x3E, 0x34, 0xA4, 0xE1, 0x74, 0x02, 0x50, 
                            /* 0210 */    0xE0, 0xFF, 0x7F, 0x3A, 0x81, 0x1F, 0xF5, 0x74, 
                            /* 0218 */    0x82, 0x1E, 0xAE, 0x4F, 0x19, 0x18, 0xE4, 0x03, 
                            /* 0220 */    0xF2, 0xA9, 0xC3, 0xF7, 0x1F, 0x13, 0xF8, 0x78, 
                            /* 0228 */    0xC2, 0x45, 0x1D, 0x4F, 0x50, 0xA7, 0x07, 0x1F, 
                            /* 0230 */    0x4F, 0xD8, 0x19, 0xE1, 0x2C, 0x1E, 0x03, 0x7C, 
                            /* 0238 */    0x3A, 0xC1, 0xDC, 0x13, 0x7C, 0x3A, 0x01, 0xDB, 
                            /* 0240 */    0x68, 0x60, 0x1C, 0x4F, 0xC0, 0x77, 0x74, 0xC1, 
                            /* 0248 */    0x1D, 0x4F, 0xC0, 0x30, 0x18, 0x18, 0xE7, 0x13, 
                            /* 0250 */    0xE0, 0x31, 0x5E, 0xDC, 0x31, 0xC0, 0x43, 0xE0, 
                            /* 0258 */    0x03, 0x78, 0xDC, 0x38, 0x3D, 0x2B, 0x9D, 0x14, 
                            /* 0260 */    0xF2, 0x24, 0xC2, 0x07, 0x85, 0x39, 0xB0, 0xE0, 
                            /* 0268 */    0x14, 0xDA, 0xF4, 0xA9, 0xD1, 0xA8, 0x55, 0x83, 
                            /* 0270 */    0x32, 0x35, 0xCA, 0x34, 0xA8, 0xD5, 0xA7, 0x52, 
                            /* 0278 */    0x63, 0xC6, 0xCE, 0x19, 0x0E, 0xF8, 0x10, 0xD0, 
                            /* 0280 */    0x89, 0xC0, 0xF2, 0x9E, 0x0D, 0x02, 0xB1, 0x0C, 
                            /* 0288 */    0x0A, 0x81, 0x58, 0xFA, 0xAB, 0x45, 0x20, 0x0E, 
                            /* 0290 */    0x0E, 0xA2, 0xFF, 0x3F, 0x88, 0x23, 0xD2, 0x0A, 
                            /* 0298 */    0xC4, 0xFF, 0x7F, 0x7F
                        })
                    }
                }

                OperationRegion (PEGC, PCI_Config, 0x00, 0x0100)
                Field (PEGC, DWordAcc, NoLock, Preserve)
                {
                            Offset (0xEC), 
                    GMGP,   1, 
                    HPGP,   1, 
                    PMGP,   1
                }
            }

            Device (IIO1)
            {
                Name (_ADR, 0x00080000)
                Name (RID, 0x00)
                OperationRegion (IIOC, PCI_Config, 0x00, 0x0100)
                Field (IIOC, DWordAcc, NoLock, Preserve)
                {
                            Offset (0xD0), 
                        ,   26, 
                    TOUD,   6
                }
            }

            Device (IGBE)
            {
                Name (_ADR, 0x00190000)
                Name (_S3D, 0x03)
                Name (RID, 0x00)
                Name (_PRW, Package (0x02)
                {
                    0x0D, 
                    0x04
                })
            }

            Device (EXP1)
            {
                Name (_ADR, 0x001C0000)
                Name (RID, 0x00)
                OperationRegion (PECS, PCI_Config, 0x00, 0x0100)
                Field (PECS, DWordAcc, NoLock, Preserve)
                {
                            Offset (0x62), 
                    PS,     1, 
                    PP,     1, 
                            Offset (0xDB), 
                        ,   7, 
                    PMCE,   1, 
                            Offset (0xDF), 
                        ,   7, 
                    PMCS,   1
                }

                Name (_PRW, Package (0x02)
                {
                    0x09, 
                    0x04
                })
                Name (LPRT, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        0x00, 
                        \_SB.LNKA, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x01, 
                        \_SB.LNKB, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        \_SB.LNKC, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        \_SB.LNKD, 
                        0x00
                    }
                })
                Name (APRT, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        0x00, 
                        0x00, 
                        0x10
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x01, 
                        0x00, 
                        0x11
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        0x00, 
                        0x12
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        0x00, 
                        0x13
                    }
                })
                Method (_PRT, 0, NotSerialized)
                {
                    If (\GPIC)
                    {
                        Return (APRT)
                    }
                    Else
                    {
                        Return (LPRT)
                    }
                }
            }

            Device (EXP2)
            {
                Name (_ADR, 0x001C0001)
                Name (RID, 0x00)
                OperationRegion (PECS, PCI_Config, 0x00, 0x0100)
                Field (PECS, DWordAcc, NoLock, Preserve)
                {
                            Offset (0x62), 
                    PS,     1, 
                    PP,     1, 
                            Offset (0xDB), 
                        ,   7, 
                    PMCE,   1, 
                            Offset (0xDF), 
                        ,   7, 
                    PMCS,   1
                }

                Name (_PRW, Package (0x02)
                {
                    0x09, 
                    0x04
                })
                Name (LPRT, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        0x00, 
                        \_SB.LNKB, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x01, 
                        \_SB.LNKC, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        \_SB.LNKD, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        \_SB.LNKA, 
                        0x00
                    }
                })
                Name (APRT, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        0x00, 
                        0x00, 
                        0x11
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x01, 
                        0x00, 
                        0x12
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        0x00, 
                        0x13
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        0x00, 
                        0x10
                    }
                })
                Method (_PRT, 0, NotSerialized)
                {
                    If (\GPIC)
                    {
                        Return (APRT)
                    }
                    Else
                    {
                        Return (LPRT)
                    }
                }
            }

            Device (EXP3)
            {
                Name (_ADR, 0x001C0002)
                Name (RID, 0x00)
                OperationRegion (PECS, PCI_Config, 0x00, 0x0100)
                Field (PECS, DWordAcc, NoLock, Preserve)
                {
                            Offset (0x62), 
                    PS,     1, 
                    PP,     1, 
                            Offset (0xDB), 
                        ,   7, 
                    PMCE,   1, 
                            Offset (0xDF), 
                        ,   7, 
                    PMCS,   1
                }

                Name (_PRW, Package (0x02)
                {
                    0x09, 
                    0x04
                })
                Name (LPRT, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        0x00, 
                        \_SB.LNKC, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x01, 
                        \_SB.LNKD, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        \_SB.LNKA, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        \_SB.LNKB, 
                        0x00
                    }
                })
                Name (APRT, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        0x00, 
                        0x00, 
                        0x12
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x01, 
                        0x00, 
                        0x13
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        0x00, 
                        0x10
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        0x00, 
                        0x11
                    }
                })
                Method (_PRT, 0, NotSerialized)
                {
                    If (\GPIC)
                    {
                        Return (APRT)
                    }
                    Else
                    {
                        Return (LPRT)
                    }
                }
            }

            Device (EXP4)
            {
                Name (_ADR, 0x001C0003)
                Name (RID, 0x00)
                OperationRegion (PECS, PCI_Config, 0x00, 0x0100)
                Field (PECS, DWordAcc, NoLock, Preserve)
                {
                            Offset (0x5A), 
                        ,   3, 
                    PDC,    1, 
                        ,   2, 
                    PDS,    1, 
                            Offset (0x5B), 
                            Offset (0x62), 
                    PS,     1, 
                    PP,     1, 
                            Offset (0xDB), 
                        ,   6, 
                    HPCE,   1, 
                    PMCE,   1, 
                            Offset (0xDF), 
                        ,   6, 
                    HPCS,   1, 
                    PMCS,   1
                }

                Method (_INI, 0, NotSerialized)
                {
                    Store (PDS, PDSF)
                }

                Name (_PRW, Package (0x02)
                {
                    0x09, 
                    0x04
                })
                Name (LPRT, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        0x00, 
                        \_SB.LNKD, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x01, 
                        \_SB.LNKA, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        \_SB.LNKB, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        \_SB.LNKC, 
                        0x00
                    }
                })
                Name (APRT, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        0x00, 
                        0x00, 
                        0x13
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x01, 
                        0x00, 
                        0x10
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        0x00, 
                        0x11
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        0x00, 
                        0x12
                    }
                })
                Method (_PRT, 0, NotSerialized)
                {
                    If (\GPIC)
                    {
                        Return (APRT)
                    }
                    Else
                    {
                        Return (LPRT)
                    }
                }

                Name (PDSF, 0x00)
                Device (SLOT)
                {
                    Name (_ADR, 0x00)
                    Method (_RMV, 0, NotSerialized)
                    {
                        Store (\RPCI (0x80050000), Local0)
                        ShiftLeft (\RPCI (0x80050001), 0x08, Local1)
                        ShiftLeft (\RPCI (0x80050002), 0x10, Local2)
                        ShiftLeft (\RPCI (0x80050003), 0x18, Local3)
                        Or (Local0, Local1, Local0)
                        Or (Local0, Local2, Local0)
                        Or (Local0, Local3, Local0)
                        If (LEqual (Local0, 0xE8221180))
                        {
                            Return (0x00)
                        }
                        Else
                        {
                            Return (0x01)
                        }
                    }
                }
            }

            Device (EXP5)
            {
                Name (_ADR, 0x001C0004)
                Name (RID, 0x00)
                OperationRegion (PECS, PCI_Config, 0x00, 0x0100)
                Field (PECS, DWordAcc, NoLock, Preserve)
                {
                            Offset (0x62), 
                    PS,     1, 
                    PP,     1, 
                            Offset (0xDB), 
                        ,   7, 
                    PMCE,   1, 
                            Offset (0xDF), 
                        ,   7, 
                    PMCS,   1
                }

                Name (_PRW, Package (0x02)
                {
                    0x09, 
                    0x04
                })
                Name (LPRT, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        0x00, 
                        \_SB.LNKA, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x01, 
                        \_SB.LNKB, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        \_SB.LNKC, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        \_SB.LNKD, 
                        0x00
                    }
                })
                Name (APRT, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        0x00, 
                        0x00, 
                        0x10
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x01, 
                        0x00, 
                        0x11
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        0x00, 
                        0x12
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        0x00, 
                        0x13
                    }
                })
                Method (_PRT, 0, NotSerialized)
                {
                    If (\GPIC)
                    {
                        Return (APRT)
                    }
                    Else
                    {
                        Return (LPRT)
                    }
                }
            }

            Device (PCI1)
            {
                Name (_ADR, 0x001E0000)
                Name (RID, 0x00)
            }

            Device (SAT1)
            {
                Name (_ADR, 0x001F0002)
                Name (_S3D, 0x03)
                Name (RID, 0x00)
            }

            Device (SAT2)
            {
                Name (_ADR, 0x001F0005)
                Name (_S3D, 0x03)
                Name (RID, 0x00)
            }

            Device (SMBU)
            {
                Name (_ADR, 0x001F0003)
                Name (_S3D, 0x03)
                Name (RID, 0x00)
            }

            Device (EHC1)
            {
                Name (_ADR, 0x001D0000)
                Name (_S3D, 0x03)
                Name (RID, 0x00)
                OperationRegion (EHCS, PCI_Config, 0x00, 0x0100)
                Field (EHCS, DWordAcc, NoLock, Preserve)
                {
                            Offset (0x62), 
                    PWKI,   1, 
                    PWUC,   8, 
                            Offset (0x64)
                }

                Name (_PR0, Package (0x01)
                {
                    \_SB.PCI0.LPC.EC.PUBS
                })
                Name (_PR1, Package (0x01)
                {
                    \_SB.PCI0.LPC.EC.PUBS
                })
                Name (_PR2, Package (0x01)
                {
                    \_SB.PCI0.LPC.EC.PUBS
                })
                Method (_INI, 0, NotSerialized)
                {
                    Store (0x01, PWKI)
                    Store (0x23, PWUC)
                }

                Name (_PRW, Package (0x03)
                {
                    0x0D, 
                    0x03, 
                    \_SB.PCI0.LPC.EC.PUBS
                })
                Device (URTH)
                {
                    Name (_ADR, 0x00)
                    Device (URMH)
                    {
                        Name (_ADR, 0x01)
                        Name (_UPC, Package (0x04)
                        {
                            0xFF, 
                            0xFF, 
                            0x00, 
                            0x00
                        })
                        Name (_PLD, Buffer (0x10)
                        {
                            /* 0000 */    0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
                            /* 0008 */    0x30, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                        })
                        Device (PRT0)
                        {
                            Name (_ADR, 0x01)
                            Name (_UPC, Package (0x04)
                            {
                                0xFF, 
                                0x00, 
                                0x00, 
                                0x00
                            })
                            Name (_PLD, Buffer (0x10)
                            {
                                /* 0000 */    0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
                                /* 0008 */    0x59, 0x0E, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
                            })
                        }

                        Device (PRT1)
                        {
                            Name (_ADR, 0x02)
                            Name (_UPC, Package (0x04)
                            {
                                0xFF, 
                                0x00, 
                                0x00, 
                                0x00
                            })
                            Name (_PLD, Buffer (0x10)
                            {
                                /* 0000 */    0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
                                /* 0008 */    0x11, 0x12, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
                            })
                        }

                        Device (PRT2)
                        {
                            Name (_ADR, 0x03)
                            Name (_UPC, Package (0x04)
                            {
                                0xFF, 
                                0xFF, 
                                0x00, 
                                0x00
                            })
                            Name (_PLD, Buffer (0x10)
                            {
                                /* 0000 */    0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
                                /* 0008 */    0x30, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                            })
                        }

                        Device (PRT3)
                        {
                            Name (_ADR, 0x04)
                            Name (_UPC, Package (0x04)
                            {
                                0xFF, 
                                0xFF, 
                                0x00, 
                                0x00
                            })
                            Name (_PLD, Buffer (0x10)
                            {
                                /* 0000 */    0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
                                /* 0008 */    0x30, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                            })
                        }

                        Device (PRT4)
                        {
                            Name (_ADR, 0x05)
                            Name (_UPC, Package (0x04)
                            {
                                0xFF, 
                                0xFF, 
                                0x00, 
                                0x00
                            })
                            Name (_PLD, Buffer (0x10)
                            {
                                /* 0000 */    0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
                                /* 0008 */    0x30, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                            })
                        }

                        Device (PRT5)
                        {
                            Name (_ADR, 0x06)
                            Name (_UPC, Package (0x04)
                            {
                                0xFF, 
                                0x02, 
                                0x00, 
                                0x00
                            })
                            Name (_PLD, Buffer (0x10)
                            {
                                /* 0000 */    0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
                                /* 0008 */    0x19, 0x10, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
                            })
                        }

                        Device (PRT6)
                        {
                            Name (_ADR, 0x07)
                            Name (_UPC, Package (0x04)
                            {
                                0xFF, 
                                0xFF, 
                                0x00, 
                                0x00
                            })
                            Name (_PLD, Buffer (0x10)
                            {
                                /* 0000 */    0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
                                /* 0008 */    0x30, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                            })
                        }

                        Device (PRT7)
                        {
                            Name (_ADR, 0x08)
                            Name (_UPC, Package (0x04)
                            {
                                0xFF, 
                                0xFF, 
                                0x00, 
                                0x00
                            })
                            Name (_PLD, Buffer (0x10)
                            {
                                /* 0000 */    0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
                                /* 0008 */    0x30, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                            })
                        }
                    }
                }
            }

            Device (EHC2)
            {
                Name (_ADR, 0x001A0000)
                Name (_S3D, 0x03)
                Name (RID, 0x00)
                OperationRegion (EHCS, PCI_Config, 0x00, 0x0100)
                Field (EHCS, DWordAcc, NoLock, Preserve)
                {
                            Offset (0x62), 
                    PWKI,   1, 
                    PWUC,   6, 
                            Offset (0x64)
                }

                Name (_PR0, Package (0x01)
                {
                    \_SB.PCI0.LPC.EC.PUBS
                })
                Name (_PR1, Package (0x01)
                {
                    \_SB.PCI0.LPC.EC.PUBS
                })
                Name (_PR2, Package (0x01)
                {
                    \_SB.PCI0.LPC.EC.PUBS
                })
                Method (_INI, 0, NotSerialized)
                {
                    Store (0x01, PWKI)
                    Store (0x13, PWUC)
                }

                Name (_PRW, Package (0x03)
                {
                    0x0D, 
                    0x03, 
                    \_SB.PCI0.LPC.EC.PUBS
                })
                Device (URTH)
                {
                    Name (_ADR, 0x00)
                    Device (URMH)
                    {
                        Name (_ADR, 0x01)
                        Name (_UPC, Package (0x04)
                        {
                            0xFF, 
                            0xFF, 
                            0x00, 
                            0x00
                        })
                        Name (_PLD, Buffer (0x10)
                        {
                            /* 0000 */    0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
                            /* 0008 */    0x30, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                        })
                        Device (PRT8)
                        {
                            Name (_ADR, 0x01)
                            Name (_UPC, Package (0x04)
                            {
                                0xFF, 
                                0x00, 
                                0x00, 
                                0x00
                            })
                            Name (_PLD, Buffer (0x10)
                            {
                                /* 0000 */    0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
                                /* 0008 */    0x91, 0x11, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
                            })
                        }

                        Device (PRT9)
                        {
                            Name (_ADR, 0x02)
                            Name (_UPC, Package (0x04)
                            {
                                0xFF, 
                                0x00, 
                                0x00, 
                                0x00
                            })
                            Name (_PLD, Buffer (0x10)
                            {
                                /* 0000 */    0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
                                /* 0008 */    0x91, 0x12, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
                            })
                        }

                        Device (PRTA)
                        {
                            Name (_ADR, 0x03)
                            Name (_UPC, Package (0x04)
                            {
                                0xFF, 
                                0xFF, 
                                0x00, 
                                0x00
                            })
                            Name (_PLD, Buffer (0x10)
                            {
                                /* 0000 */    0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
                                /* 0008 */    0x30, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                            })
                        }

                        Device (PRTB)
                        {
                            Name (_ADR, 0x04)
                            Name (_UPC, Package (0x04)
                            {
                                0xFF, 
                                0xFF, 
                                0x00, 
                                0x00
                            })
                            Name (_PLD, Buffer (0x10)
                            {
                                /* 0000 */    0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
                                /* 0008 */    0x30, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                            })
                        }

                        Device (PRTC)
                        {
                            Name (_ADR, 0x05)
                            Name (_UPC, Package (0x04)
                            {
                                0xFF, 
                                0x00, 
                                0x00, 
                                0x00
                            })
                            Name (_PLD, Buffer (0x10)
                            {
                                /* 0000 */    0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
                                /* 0008 */    0x69, 0x11, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
                            })
                        }

                        Device (PRTD)
                        {
                            Name (_ADR, 0x06)
                            Name (_UPC, Package (0x04)
                            {
                                0xFF, 
                                0xFF, 
                                0x00, 
                                0x00
                            })
                            Name (_PLD, Buffer (0x10)
                            {
                                /* 0000 */    0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
                                /* 0008 */    0x30, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                            })
                        }
                    }
                }
            }

            Device (HDEF)
            {
                Name (_ADR, 0x001B0000)
                Name (_S3D, 0x03)
                Name (RID, 0x00)
                Name (_PRW, Package (0x02)
                {
                    0x0D, 
                    0x04
                })
                Method (_PSW, 1, NotSerialized)
                {
                    Noop
                }
            }
        }

        Scope (\_SB.PCI0.LPC.EC)
        {
            Name (BDEV, 0xFF)
            Name (BSTS, 0x00)
            Name (BHKE, 0x00)
            Method (_Q2C, 0, NotSerialized)
            {
                If (LEqual (BSTS, 0x00))
                {
                    Store (BGID (0x00), BDEV)
                    NBRE (BDEV)
                }
            }

            Method (_Q2D, 0, NotSerialized)
            {
                Store (BGID (0x00), BDEV)
                NBIN (BDEV)
            }

            Method (_Q38, 0, NotSerialized)
            {
                Store (BGID (0x00), Local0)
                If (LEqual (Local0, 0x0F))
                {
                    BDIS ()
                    \BHDP (0x01, 0x00)
                    NBEJ (BDEV)
                    Store (Local0, BDEV)
                    If (LEqual (\BIDE, 0x03))
                    {
                        Store (0x00, \_SB.PCI0.SAT1.PRIM.GTME)
                        Store (0x00, \_SB.PCI0.SAT1.SCND.GTME)
                    }
                }
                Else
                {
                    If (HPBU) {}
                    Else
                    {
                        Store (Local0, BDEV)
                        NBIN (Local0)
                    }
                }
            }

            Name (ODEJ, 0x00)
            Method (_Q44, 0, NotSerialized)
            {
                If (\_SB.PCI0.LPC.CSON)
                {
                    Store (0x01, ODEJ)
                    Store (BGID (0x00), BDEV)
                    NBIN (BDEV)
                    Store (0x00, ODEJ)
                    \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x3006)
                }
            }

            Method (NBRE, 1, NotSerialized)
            {
                If (LLess (Arg0, 0x0C))
                {
                    If (LEqual (\BIDE, 0x03))
                    {
                        Notify (\_SB.PCI0.SAT1.SCND.MSTR, 0x03)
                    }
                    Else
                    {
                        Notify (\_SB.PCI0.SAT1.PRT1, 0x03)
                    }
                }

                If (LEqual (Arg0, 0x10))
                {
                    If (LOr (HPAC, HB0A))
                    {
                        If (\WNTF)
                        {
                            Notify (\_SB.PCI0.LPC.EC.BAT1, 0x03)
                        }
                    }
                    Else
                    {
                        BEEP (0x0F)
                        Store (0x02, BSTS)
                    }
                }
            }

            Method (NBEJ, 1, NotSerialized)
            {
                If (LEqual (BSTS, 0x00))
                {
                    If (LLess (Arg0, 0x0C))
                    {
                        If (LEqual (\BIDE, 0x03))
                        {
                            Notify (\_SB.PCI0.SAT1.SCND.MSTR, 0x01)
                        }
                        Else
                        {
                            Notify (\_SB.PCI0.SAT1.PRT1, 0x01)
                        }
                    }

                    If (LEqual (Arg0, 0x10))
                    {
                        If (\WNTF)
                        {
                            Notify (\_SB.PCI0.LPC.EC.BAT1, 0x01)
                        }
                        Else
                        {
                            Notify (\_SB.PCI0.LPC.EC.BAT1, 0x81)
                        }
                    }
                }

                BEEP (0x00)
                Store (0x00, BSTS)
            }

            Method (NBIN, 1, NotSerialized)
            {
                If (LLess (Arg0, 0x0C))
                {
                    BEN (0x01)
                    If (LEqual (\BIDE, 0x03))
                    {
                        Notify (\_SB.PCI0.SAT1.SCND.MSTR, 0x01)
                    }
                    Else
                    {
                        Notify (\_SB.PCI0.SAT1.PRT1, 0x01)
                    }
                }

                If (LEqual (Arg0, 0x10))
                {
                    If (\WNTF)
                    {
                        Store (0x01, \_SB.PCI0.LPC.EC.BAT1.XB1S)
                        Notify (\_SB.PCI0.LPC.EC.BAT1, 0x01)
                    }
                    Else
                    {
                        Notify (\_SB.PCI0.LPC.EC.BAT1, 0x81)
                    }
                }

                BEEP (0x00)
                Store (0x00, BSTS)
            }

            Method (BEJ0, 1, NotSerialized)
            {
                If (Arg0)
                {
                    BDIS ()
                    \BHDP (0x01, 0x00)
                    Store (0x01, BSTS)
                    If (BHKE)
                    {
                        Store (0x00, BHKE)
                        \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x3003)
                    }
                }
                Else
                {
                    Store (0x00, BSTS)
                }
            }

            Method (BEJ3, 1, NotSerialized)
            {
                If (Arg0)
                {
                    BDIS ()
                    Store (0x01, BSTS)
                }
                Else
                {
                    Store (0x00, BSTS)
                }
            }

            Method (BPTS, 1, NotSerialized)
            {
                Store (0x01, HDBM)
                If (LNotEqual (BSTS, 0x00))
                {
                    Store (0x0F, BDEV)
                    Store (0x00, BSTS)
                }

                Store (0x00, BHKE)
                BUWK (0x00)
            }

            Method (BWAK, 1, NotSerialized)
            {
                BUWK (0x00)
                Store (BGID (0x00), Local0)
                If (LEqual (BSTS, 0x00))
                {
                    If (LNotEqual (Local0, BDEV))
                    {
                        NBEJ (BDEV)
                        Store (Local0, BDEV)
                        NBIN (Local0)
                    }
                    Else
                    {
                        If (LOr (\LFDC, LNotEqual (BDEV, 0x0D)))
                        {
                            If (LNotEqual (Local0, 0x0F))
                            {
                                If (HPBU)
                                {
                                    If (LLessEqual (Arg0, 0x02)) {}
                                    Else
                                    {
                                        NBRE (Local0)
                                    }
                                }
                            }
                        }
                    }
                }

                If (LLess (BDEV, 0x0C))
                {
                    Store (0x00, \_SB.PCI0.LPC.GLIS)
                }
                Else
                {
                    Store (0x01, \_SB.PCI0.LPC.GLIS)
                }
            }

            Method (BDIS, 0, NotSerialized)
            {
                If (LNot (\_SB.PCI0.LPC.CSON))
                {
                    If (LNot (\_SB.PCI0.LPC.GLIS))
                    {
                        Store (0x01, \_SB.PCI0.LPC.GLIS)
                    }

                    Store (0x01, \_SB.PCI0.LPC.CSON)
                    Store (0x0F, \IDET)
                }
            }

            Method (BPON, 1, NotSerialized)
            {
                If (\_SB.PCI0.LPC.CSON)
                {
                    Store (0x00, \_SB.PCI0.LPC.CSON)
                    If (\_SB.PCI0.LPC.GLIS)
                    {
                        Store (0x00, \_SB.PCI0.LPC.GLIS)
                    }
                }
            }

            Method (BEN, 1, NotSerialized)
            {
                If (\_SB.PCI0.LPC.CSON)
                {
                    BPON (Arg0)
                    If (LAnd (Arg0, LEqual (ODEJ, 0x01)))
                    {
                        Store (0x09, \_SB.PCI0.LPC.EC.HANT)
                    }

                    If (Arg0)
                    {
                        IRDY ()
                    }
                }
            }

            Method (BSTA, 1, NotSerialized)
            {
                If (\_SB.PCI0.LPC.CSON)
                {
                    Return (0x00)
                }

                BINI ()
                If (LEqual (Arg0, 0x01))
                {
                    Return (LLess (BDEV, 0x0C))
                }

                Return (0x00)
            }

            Method (BUWK, 1, NotSerialized)
            {
                If (\H8DR)
                {
                    If (Arg0)
                    {
                        Store (0x01, \_SB.PCI0.LPC.EC.HWBU)
                    }
                    Else
                    {
                        Store (0x00, \_SB.PCI0.LPC.EC.HWBU)
                    }
                }
                Else
                {
                    If (Arg0)
                    {
                        \MBEC (0x32, 0xFF, 0x80)
                    }
                    Else
                    {
                        \MBEC (0x32, 0x7F, 0x00)
                    }
                }
            }

            Method (BINI, 0, NotSerialized)
            {
                If (LEqual (BDEV, 0xFF))
                {
                    Store (BGID (0x00), BDEV)
                }
            }

            Method (BGID, 1, NotSerialized)
            {
                If (Arg0)
                {
                    Store (0xFF, Local0)
                }
                Else
                {
                    If (\H8DR)
                    {
                        Store (HPBU, Local1)
                        Store (HBID, Local2)
                    }
                    Else
                    {
                        Store (RBEC (0x47), Local2)
                        And (Local2, 0x01, Local1)
                        ShiftRight (Local2, 0x02, Local2)
                    }

                    If (Local2)
                    {
                        Store (0x0F, Local0)
                    }
                    Else
                    {
                        If (HDUB)
                        {
                            Store (0x0F, Local0)
                        }
                        Else
                        {
                            If (LOr (LEqual (\IDET, 0x03), LEqual (\IDET, 0x06)))
                            {
                                Store (\IDET, Local0)
                            }
                            Else
                            {
                                Store (0x07, Local0)
                            }
                        }
                    }

                    If (LEqual (Local0, 0x0F))
                    {
                        If (\H8DR)
                        {
                            If (HB1A)
                            {
                                Store (0x10, Local0)
                            }
                        }
                        Else
                        {
                            If (And (\RBEC (0x39), 0x80))
                            {
                                Store (0x10, Local0)
                            }
                        }
                    }

                    If (LEqual (Local0, 0x0F)) {}
                }

                If (LAnd (\HDUB, LLess (Local0, 0x0C)))
                {
                    Store (0x0F, Local0)
                }

                Return (Local0)
            }

            Method (IRDY, 0, NotSerialized)
            {
                Store (0x01F4, Local0)
                Store (0x3C, Local1)
                Store (Zero, Local2)
                While (Local1)
                {
                    Sleep (Local0)
                    Store (\BCHK (), Local3)
                    If (LNot (Local3))
                    {
                        Break
                    }

                    If (LEqual (Local3, 0x02))
                    {
                        Store (One, Local2)
                        Break
                    }

                    Decrement (Local1)
                }

                Return (Local2)
            }
        }

        Scope (\_SB.PCI0.LPC.EC.BAT1)
        {
            Method (_EJ0, 1, NotSerialized)
            {
                Store (0x00, B1ST)
                Store (0x00, XB1S)
                \_SB.PCI0.LPC.EC.BEJ0 (Arg0)
            }
        }

        Scope (\_SB.PCI0.LPC.EC)
        {
            Method (RPTS, 1, NotSerialized)
            {
                Noop
            }

            Method (RWAK, 1, NotSerialized)
            {
            }
        }

        Scope (\_SB.PCI0.LPC.EC)
        {
            Method (_Q43, 0, NotSerialized)
            {
                \UCMS (0x18)
            }

            Method (SAUM, 1, NotSerialized)
            {
                If (LGreater (Arg0, 0x03))
                {
                    Noop
                }
                Else
                {
                    If (\H8DR)
                    {
                        Store (Arg0, HAUM)
                    }
                    Else
                    {
                        \MBEC (0x03, 0x9F, ShiftLeft (Arg0, 0x05))
                    }
                }
            }
        }

        Scope (\_SB.PCI0.LPC.EC)
        {
            Name (BRTW, Package (0x12)
            {
                0x64, 
                0x64, 
                0x01, 
                0x03, 
                0x04, 
                0x05, 
                0x06, 
                0x08, 
                0x0A, 
                0x0D, 
                0x11, 
                0x16, 
                0x1D, 
                0x26, 
                0x31, 
                0x3F, 
                0x50, 
                0x64
            })
            Name (BRTB, Package (0x03)
            {
                Package (0x10)
                {
                    0x03, 
                    0x07, 
                    0x09, 
                    0x0C, 
                    0x0F, 
                    0x14, 
                    0x19, 
                    0x21, 
                    0x2B, 
                    0x38, 
                    0x4A, 
                    0x61, 
                    0x7E, 
                    0xA0, 
                    0xCC, 
                    0xFF
                }, 

                Package (0x10)
                {
                    0x03, 
                    0x07, 
                    0x09, 
                    0x0C, 
                    0x0F, 
                    0x14, 
                    0x19, 
                    0x21, 
                    0x2B, 
                    0x38, 
                    0x4A, 
                    0x61, 
                    0x7E, 
                    0xA0, 
                    0xCC, 
                    0xFF
                }, 

                Package (0x05)
                {
                    0x00DC, 
                    0x00DC, 
                    0x03, 
                    0x03, 
                    0x03
                }
            })
            Method (_Q14, 0, NotSerialized)
            {
                If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x8000))
                {
                    \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x1010)
                }

                If (\NBCF)
                {
                    If (LAnd (\WVIS, LEqual (\VHYB (0x03, 0x00), 0x03)))
                    {
                        If (LEqual (And (\RISA (0x11BA), 0x10), 0x10))
                        {
                            Notify (\_SB.PCI0.PEG.VID.LCD0, 0x86)
                        }
                        Else
                        {
                            Notify (\_SB.PCI0.VID.LCD0, 0x86)
                        }
                    }
                    Else
                    {
                        If (\VIGD)
                        {
                            Notify (\_SB.PCI0.VID.LCD0, 0x86)
                        }
                        Else
                        {
                            Notify (\_SB.PCI0.PEG.VID.LCD0, 0x86)
                        }
                    }
                }
                Else
                {
                    If (\VIGD)
                    {
                        Store (\UCMS (0x15), \BRLV)
                        Store (\BRLV, Local0)
                        If (LNotEqual (Local0, 0x0F))
                        {
                            Increment (Local0)
                            Store (Local0, \BRLV)
                        }

                        \UCMS (0x16)
                        \_SB.PCI0.LPC.EC.BRNS ()
                    }
                    Else
                    {
                        \UCMS (0x04)
                    }
                }
            }

            Method (_Q15, 0, NotSerialized)
            {
                If (\VCDB)
                {
                    Store (0x00, \VCDB)
                    Store (\UCMS (0x15), \BRLV)
                    \UCMS (0x16)
                    \_SB.PCI0.LPC.EC.BRNS ()
                    Return (0x00)
                }

                If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x00010000))
                {
                    \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x1011)
                }

                If (\NBCF)
                {
                    If (LAnd (\WVIS, LEqual (\VHYB (0x03, 0x00), 0x03)))
                    {
                        If (LEqual (And (\RISA (0x11BA), 0x10), 0x10))
                        {
                            Notify (\_SB.PCI0.PEG.VID.LCD0, 0x87)
                        }
                        Else
                        {
                            Notify (\_SB.PCI0.VID.LCD0, 0x87)
                        }
                    }
                    Else
                    {
                        If (\VIGD)
                        {
                            Notify (\_SB.PCI0.VID.LCD0, 0x87)
                        }
                        Else
                        {
                            Notify (\_SB.PCI0.PEG.VID.LCD0, 0x87)
                        }
                    }
                }
                Else
                {
                    If (\VIGD)
                    {
                        Store (\UCMS (0x15), \BRLV)
                        Store (\BRLV, Local0)
                        If (Local0)
                        {
                            Decrement (Local0)
                            Store (Local0, \BRLV)
                        }

                        \UCMS (0x16)
                        \_SB.PCI0.LPC.EC.BRNS ()
                    }
                    Else
                    {
                        \UCMS (0x05)
                    }
                }
            }

            Method (BRNS, 0, NotSerialized)
            {
                Store (\BRLV, Local0)
                If (\_SB.PCI0.VID.DRDY)
                {
                    If (LEqual (0x00, Local0))
                    {
                        Store (DerefOf (Index (DerefOf (Index (BRTB, 0x02)), 0x03)), 
                            Local1)
                        Store (DerefOf (Index (DerefOf (Index (BRTB, 0x02)), 0x00)), 
                            Local2)
                    }
                    Else
                    {
                        Store (DerefOf (Index (DerefOf (Index (BRTB, 0x02)), 0x04)), 
                            Local1)
                        Store (DerefOf (Index (DerefOf (Index (BRTB, 0x02)), 0x01)), 
                            Local2)
                    }

                    Or (Local1, ShiftLeft (Local2, 0x09), Local2)
                    \_SB.PCI0.VID.AINT (0x03, Local2)
                    Store (0x00, Local1)
                    If (\BRHB)
                    {
                        Store (0x01, Local1)
                    }

                    Store (DerefOf (Index (DerefOf (Index (BRTB, Local1)), Local0)), 
                        Local2)
                    \_SB.PCI0.VID.AINT (0x01, Local2)
                }
                Else
                {
                    \UCMS (0x12)
                }
            }
        }

        Scope (\_SB.PCI0.LPC.EC)
        {
            Method (_Q19, 0, NotSerialized)
            {
                If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x00800000))
                {
                    \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x1018)
                }

                \UCMS (0x03)
            }
        }

        Scope (\_SB.PCI0.LPC.EC)
        {
            Method (_Q63, 0, NotSerialized)
            {
                If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x00080000))
                {
                    \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x1014)
                }

                \UCMS (0x0B)
            }
        }

        Scope (\_SB.PCI0.LPC.EC)
        {
            Method (_Q70, 0, NotSerialized)
            {
                FNST ()
            }

            Method (_Q72, 0, NotSerialized)
            {
                FNST ()
            }

            Method (_Q73, 0, NotSerialized)
            {
                FNST ()
            }

            Method (FNST, 0, NotSerialized)
            {
                If (\H8DR)
                {
                    Store (HFNS, Local0)
                    Store (HFNE, Local1)
                }
                Else
                {
                    And (\RBEC (0x0E), 0x03, Local0)
                    And (\RBEC (0x00), 0x08, Local1)
                }

                If (Local1)
                {
                    If (LEqual (Local0, 0x00))
                    {
                        \UCMS (0x11)
                    }

                    If (LEqual (Local0, 0x01))
                    {
                        \UCMS (0x0F)
                    }

                    If (LEqual (Local0, 0x02))
                    {
                        \UCMS (0x10)
                    }
                }
            }
        }

        Scope (\_SB.PCI0.LPC.EC.HKEY)
        {
            Name (WGFL, 0x00)
            Method (WLSW, 0, NotSerialized)
            {
                Return (\_SB.PCI0.LPC.EC.GSTS)
            }

            Method (GWAN, 0, NotSerialized)
            {
                Store (0x00, Local0)
                If (And (WGFL, 0x01))
                {
                    Or (Local0, 0x01, Local0)
                }

                If (And (WGFL, 0x08))
                {
                    Return (Local0)
                }

                If (WPWS ())
                {
                    Or (Local0, 0x02, Local0)
                }

                If (And (WGFL, 0x04))
                {
                    Or (Local0, 0x04, Local0)
                }

                Return (Local0)
            }

            Method (SWAN, 1, NotSerialized)
            {
                If (And (Arg0, 0x02))
                {
                    WPWC (0x01)
                }
                Else
                {
                    WPWC (0x00)
                }

                If (And (Arg0, 0x04))
                {
                    Or (WGFL, 0x04, WGFL)
                    \WGSV (0x02)
                }
                Else
                {
                    And (WGFL, Not (0x04), WGFL)
                    \WGSV (0x03)
                }
            }

            Method (GBDC, 0, NotSerialized)
            {
                Store (0x00, Local0)
                If (And (WGFL, 0x10))
                {
                    Or (Local0, 0x01, Local0)
                }

                If (And (WGFL, 0x80))
                {
                    Return (Local0)
                }

                If (BPWS ())
                {
                    Or (Local0, 0x02, Local0)
                }

                If (And (WGFL, 0x40))
                {
                    Or (Local0, 0x04, Local0)
                }

                Return (Local0)
            }

            Method (SBDC, 1, NotSerialized)
            {
                If (And (Arg0, 0x02))
                {
                    BPWC (0x01)
                }
                Else
                {
                    BPWC (0x00)
                }

                If (And (Arg0, 0x04))
                {
                    Or (WGFL, 0x40, WGFL)
                    \BLTH (0x02)
                }
                Else
                {
                    And (WGFL, Not (0x40), WGFL)
                    \BLTH (0x03)
                }
            }

            Method (GUWB, 0, NotSerialized)
            {
                Store (0x00, Local0)
                If (And (WGFL, 0x0100))
                {
                    Or (Local0, 0x01, Local0)
                }

                If (UPWS ())
                {
                    Or (Local0, 0x02, Local0)
                }

                Return (Local0)
            }

            Method (SUWB, 1, NotSerialized)
            {
                If (And (Arg0, 0x02))
                {
                    UPWC (0x01)
                }
                Else
                {
                    UPWC (0x00)
                }
            }

            Method (WPWS, 0, NotSerialized)
            {
                If (\H8DR)
                {
                    Store (\_SB.PCI0.LPC.EC.DCWW, Local0)
                }
                Else
                {
                    Store (ShiftRight (And (\RBEC (0x3A), 0x40), 0x06), Local0)
                }

                Return (Local0)
            }

            Method (WTGL, 0, NotSerialized)
            {
                If (And (WGFL, 0x01))
                {
                    WPWC (LNot (WPWS ()))
                }
            }

            Method (WPWC, 1, NotSerialized)
            {
                If (LAnd (Arg0, LAnd (And (WGFL, 0x01), LNot (And (
                    WGFL, 0x08)))))
                {
                    If (\H8DR)
                    {
                        Store (One, \_SB.PCI0.LPC.EC.DCWW)
                    }
                    Else
                    {
                        \MBEC (0x3A, 0xFF, 0x40)
                    }

                    Or (WGFL, 0x02, WGFL)
                }
                Else
                {
                    If (\H8DR)
                    {
                        Store (Zero, \_SB.PCI0.LPC.EC.DCWW)
                    }
                    Else
                    {
                        \MBEC (0x3A, 0xBF, 0x00)
                    }

                    And (WGFL, Not (0x02), WGFL)
                }
            }

            Method (BPWS, 0, NotSerialized)
            {
                If (\H8DR)
                {
                    Store (\_SB.PCI0.LPC.EC.DCBD, Local0)
                }
                Else
                {
                    Store (ShiftRight (And (\RBEC (0x3A), 0x10), 0x04), Local0)
                }

                Return (Local0)
            }

            Method (BTGL, 0, NotSerialized)
            {
                If (And (WGFL, 0x10))
                {
                    BPWC (LNot (BPWS ()))
                }
            }

            Method (BPWC, 1, NotSerialized)
            {
                If (LAnd (Arg0, LAnd (And (WGFL, 0x10), LNot (And (
                    WGFL, 0x80)))))
                {
                    If (\H8DR)
                    {
                        Store (One, \_SB.PCI0.LPC.EC.DCBD)
                    }
                    Else
                    {
                        \MBEC (0x3A, 0xFF, 0x10)
                    }

                    Or (WGFL, 0x20, WGFL)
                }
                Else
                {
                    If (\H8DR)
                    {
                        Store (Zero, \_SB.PCI0.LPC.EC.DCBD)
                    }
                    Else
                    {
                        \MBEC (0x3A, 0xEF, 0x00)
                    }

                    And (WGFL, Not (0x20), WGFL)
                }
            }

            Method (UPWS, 0, NotSerialized)
            {
                If (\H8DR)
                {
                    Store (\_SB.PCI0.LPC.EC.HUWB, Local0)
                }
                Else
                {
                    Store (ShiftRight (And (\RBEC (0x31), 0x04), 0x02), Local0)
                }

                Return (Local0)
            }

            Method (UPWC, 1, NotSerialized)
            {
                If (LAnd (Arg0, And (WGFL, 0x0100)))
                {
                    If (\H8DR)
                    {
                        Store (One, \_SB.PCI0.LPC.EC.HUWB)
                    }
                    Else
                    {
                        \MBEC (0x31, 0xFF, 0x04)
                    }

                    Or (WGFL, 0x0200, WGFL)
                }
                Else
                {
                    If (\H8DR)
                    {
                        Store (Zero, \_SB.PCI0.LPC.EC.HUWB)
                    }
                    Else
                    {
                        \MBEC (0x31, 0xFB, 0x00)
                    }

                    And (WGFL, Not (0x0200), WGFL)
                }

                \UCMS (0x1B)
            }

            Method (WGIN, 0, NotSerialized)
            {
                Store (0x00, WGFL)
                Store (\WGSV (0x01), WGFL)
                If (WPWS ())
                {
                    Or (WGFL, 0x02, WGFL)
                }

                If (BPWS ())
                {
                    Or (WGFL, 0x20, WGFL)
                }

                If (UPWS ())
                {
                    Or (WGFL, 0x0200, WGFL)
                }
            }

            Method (WGPS, 1, NotSerialized)
            {
                If (LGreaterEqual (Arg0, 0x04))
                {
                    \BLTH (0x05)
                }

                If (LNot (And (WGFL, 0x04)))
                {
                    WPWC (0x00)
                }

                If (LNot (And (WGFL, 0x40)))
                {
                    BPWC (0x00)
                }
            }

            Method (WGWK, 1, NotSerialized)
            {
                If (And (WGFL, 0x20))
                {
                    BPWC (0x01)
                }

                If (And (WGFL, 0x02))
                {
                    WPWC (0x01)
                }
            }
        }

        Scope (\_SB.PCI0.LPC.EC)
        {
            Method (_Q41, 0, NotSerialized)
            {
                \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x7000)
            }
        }

        Device (WMI1)
        {
            Name (_HID, EisaId ("PNP0C14"))
            Name (_UID, 0x01)
            Name (_WDG, Buffer (0xA0)
            {
                /* 0000 */    0x0E, 0x23, 0xF5, 0x51, 0x77, 0x96, 0xCD, 0x46, 
                /* 0008 */    0xA1, 0xCF, 0xC0, 0xB2, 0x3E, 0xE3, 0x4D, 0xB7, 
                /* 0010 */    0x41, 0x30, 0x80, 0x05, 0x64, 0x9A, 0x47, 0x98, 
                /* 0018 */    0xF5, 0x33, 0x33, 0x4E, 0xA7, 0x07, 0x8E, 0x25, 
                /* 0020 */    0x1E, 0xBB, 0xC3, 0xA1, 0x41, 0x31, 0x01, 0x06, 
                /* 0028 */    0xEF, 0x54, 0x4B, 0x6A, 0xED, 0xA5, 0x33, 0x4D, 
                /* 0030 */    0x94, 0x55, 0xB0, 0xD9, 0xB4, 0x8D, 0xF4, 0xB3, 
                /* 0038 */    0x41, 0x32, 0x01, 0x06, 0xB6, 0xEB, 0xF1, 0x74, 
                /* 0040 */    0x7A, 0x92, 0x7D, 0x4C, 0x95, 0xDF, 0x69, 0x8E, 
                /* 0048 */    0x21, 0xE8, 0x0E, 0xB5, 0x41, 0x33, 0x01, 0x06, 
                /* 0050 */    0xFF, 0x04, 0xEF, 0x7E, 0x28, 0x43, 0x7C, 0x44, 
                /* 0058 */    0xB5, 0xBB, 0xD4, 0x49, 0x92, 0x5D, 0x53, 0x8D, 
                /* 0060 */    0x41, 0x34, 0x01, 0x06, 0x9E, 0x15, 0xDB, 0x8A, 
                /* 0068 */    0x32, 0x1E, 0x5C, 0x45, 0xBC, 0x93, 0x30, 0x8A, 
                /* 0070 */    0x7E, 0xD9, 0x82, 0x46, 0x41, 0x35, 0x01, 0x01, 
                /* 0078 */    0xFD, 0xD9, 0x51, 0x26, 0x1C, 0x91, 0x69, 0x4B, 
                /* 0080 */    0xB9, 0x4E, 0xD0, 0xDE, 0xD5, 0x96, 0x3B, 0xD7, 
                /* 0088 */    0x41, 0x36, 0x01, 0x06, 0x21, 0x12, 0x90, 0x05, 
                /* 0090 */    0x66, 0xD5, 0xD1, 0x11, 0xB2, 0xF0, 0x00, 0xA0, 
                /* 0098 */    0xC9, 0x06, 0x29, 0x10, 0x42, 0x41, 0x01, 0x00
            })
            Name (RETN, Package (0x05)
            {
                "Success", 
                "Not Supported", 
                "Invalid Parameter", 
                "Access Denied", 
                "System Busy"
            })
            Name (ITEM, Package (0x65)
            {
                Package (0x02)
                {
                    0x1E, 
                    "WakeOnLAN"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "FlashOverLAN"
                }, 

                Package (0x02)
                {
                    0x01, 
                    "EthernetLANOptionROM"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "HarddriveDMA"
                }, 

                Package (0x02)
                {
                    0x04, 
                    "WirelessLANandWiMAXRadios"
                }, 

                Package (0x02)
                {
                    0x18, 
                    "SerialPort"
                }, 

                Package (0x02)
                {
                    0x10, 
                    "SerialPortIO"
                }, 

                Package (0x02)
                {
                    0x06, 
                    "SerialPortIRQ"
                }, 

                Package (0x02)
                {
                    0x18, 
                    "ParallelPort"
                }, 

                Package (0x02)
                {
                    0x09, 
                    "ParallelPortMode"
                }, 

                Package (0x02)
                {
                    0x11, 
                    "ParallelPortIO"
                }, 

                Package (0x02)
                {
                    0x07, 
                    "ParallelPortIRQ"
                }, 

                Package (0x02)
                {
                    0x08, 
                    "ParallelPortDMA"
                }, 

                Package (0x02)
                {
                    0x12, 
                    "PCIINTA"
                }, 

                Package (0x02)
                {
                    0x12, 
                    "PCIINTB"
                }, 

                Package (0x02)
                {
                    0x12, 
                    "PCIINTC"
                }, 

                Package (0x02)
                {
                    0x12, 
                    "PCIINTD"
                }, 

                Package (0x02)
                {
                    0x12, 
                    "PCIINTE"
                }, 

                Package (0x02)
                {
                    0x12, 
                    "PCIINTF"
                }, 

                Package (0x02)
                {
                    0x12, 
                    "PCIINTG"
                }, 

                Package (0x02)
                {
                    0x12, 
                    "PCIINTH"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "USBBIOSSupport"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "AlwaysOnUSB"
                }, 

                Package (0x02)
                {
                    0x19, 
                    "TrackPoint"
                }, 

                Package (0x02)
                {
                    0x02, 
                    "TouchPad"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "FnKeyLock"
                }, 

                Package (0x02)
                {
                    0x0A, 
                    "ThinkPadNumLock"
                }, 

                Package (0x02)
                {
                    0x17, 
                    "PowerOnNumLock"
                }, 

                Package (0x02)
                {
                    0x0B, 
                    "PrimaryVideo"
                }, 

                Package (0x02)
                {
                    0x0C, 
                    "BootDisplayDevice"
                }, 

                Package (0x02)
                {
                    0x05, 
                    "LCDBrightness"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "TimerWakeWithBattery"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "SpeedStep"
                }, 

                Package (0x02)
                {
                    0x13, 
                    "SpeedStepModeAC"
                }, 

                Package (0x02)
                {
                    0x13, 
                    "SpeedStepModeBattery"
                }, 

                Package (0x02)
                {
                    0x14, 
                    "AdaptiveThermalManagementAC"
                }, 

                Package (0x02)
                {
                    0x14, 
                    "AdaptiveThermalManagementBattery"
                }, 

                Package (0x02)
                {
                    0x0D, 
                    "CDROMSpeed"
                }, 

                Package (0x02)
                {
                    0x02, 
                    "CPUPowerManagement"
                }, 

                Package (0x02)
                {
                    0x02, 
                    "PCIPowerManagement"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "PowerControlBeep"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "LowBatteryAlarm"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "PasswordBeep"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "KeyboardBeep"
                }, 

                Package (0x02)
                {
                    0x01, 
                    "ExtendedMemoryTest"
                }, 

                Package (0x02)
                {
                    0x0E, 
                    "SATAControllerMode"
                }, 

                Package (0x02)
                {
                    0x1D, 
                    "CoreMultiProcessing"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "VirtualizationTechnology"
                }, 

                Package (0x02)
                {
                    0x01, 
                    "LegacyDevicesOnMiniDock"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "Passphrase"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "LockBIOSSetting"
                }, 

                Package (0x02)
                {
                    0x16, 
                    "MinimumPasswordLength"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "BIOSPasswordAtUnattendedBoot"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "PasswordResetService"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "FingerprintPredesktopAuthentication"
                }, 

                Package (0x02)
                {
                    0x0F, 
                    "FingerprintReaderPriority"
                }, 

                Package (0x02)
                {
                    0x05, 
                    "FingerprintSecurityMode"
                }, 

                Package (0x02)
                {
                    0x03, 
                    "SecurityChip"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "BIOSUpdateByEndUsers"
                }, 

                Package (0x02)
                {
                    0x01, 
                    "DataExecutionPrevention"
                }, 

                Package (0x02)
                {
                    0x01, 
                    "EthernetLANAccess"
                }, 

                Package (0x02)
                {
                    0x01, 
                    "WirelessLANAccess"
                }, 

                Package (0x02)
                {
                    0x01, 
                    "WirelessWANAccess"
                }, 

                Package (0x02)
                {
                    0x01, 
                    "BluetoothAccess"
                }, 

                Package (0x02)
                {
                    0x01, 
                    "WirelessUSBAccess"
                }, 

                Package (0x02)
                {
                    0x01, 
                    "ModemAccess"
                }, 

                Package (0x02)
                {
                    0x01, 
                    "USBPortAccess"
                }, 

                Package (0x02)
                {
                    0x01, 
                    "IEEE1394Access"
                }, 

                Package (0x02)
                {
                    0x01, 
                    "SerialPortAccess"
                }, 

                Package (0x02)
                {
                    0x01, 
                    "ParallelPortAccess"
                }, 

                Package (0x02)
                {
                    0x01, 
                    "CardBusSlotAccess"
                }, 

                Package (0x02)
                {
                    0x01, 
                    "ExpressCardAccess"
                }, 

                Package (0x02)
                {
                    0x01, 
                    "PCIExpressSlotAccess"
                }, 

                Package (0x02)
                {
                    0x01, 
                    "UltrabayAccess"
                }, 

                Package (0x02)
                {
                    0x01, 
                    "MemoryCardSlotAccess"
                }, 

                Package (0x02)
                {
                    0x01, 
                    "SmartCardSlotAccess"
                }, 

                Package (0x02)
                {
                    0x01, 
                    "IntegratedCameraAccess"
                }, 

                Package (0x02)
                {
                    0x01, 
                    "MicrophoneAccess"
                }, 

                Package (0x02)
                {
                    0x15, 
                    "BootMode"
                }, 

                Package (0x02)
                {
                    0x01, 
                    "StartupOptionKeys"
                }, 

                Package (0x02)
                {
                    0x01, 
                    "BootDeviceListF12Option"
                }, 

                Package (0x02)
                {
                    0x64, 
                    "BootOrder"
                }, 

                Package (0x02)
                {
                    0x64, 
                    "NetworkBootOrder"
                }, 

                Package (0x02)
                {
                    0x01, 
                    "WiMAXAccess"
                }, 

                Package (0x02)
                {
                    0x1A, 
                    "GraphicsDevice"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "TXTFeature"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "VTdFeature"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "AMTControl"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "FingerprintPasswordAuthentication"
                }, 

                Package (0x02)
                {
                    0x01, 
                    "FingerprintReaderAccess"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "OsDetectionForSwitchableGraphics"
                }, 

                Package (0x02)
                {
                    0x01, 
                    "ComputraceModuleActivation"
                }, 

                Package (0x02)
                {
                    0x1B, 
                    "PCIExpressPowerManagement"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "ATpModuleActivation"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "FullTheftProtectionModuleActivation"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "RemoteDisableModuleActivation"
                }, 

                Package (0x02)
                {
                    0x01, 
                    "eSATAPortAccess"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "HardwarePasswordManager"
                }, 

                Package (0x02)
                {
                    0x1C, 
                    "AlwaysOnUSBMode"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "HyperThreadingTechnology"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "FnCtrlKeySwap"
                }
            })
            Name (VSEL, Package (0x1F)
            {
                Package (0x02)
                {
                    "Disable", 
                    "Enable"
                }, 

                Package (0x02)
                {
                    "Enable", 
                    "Disable"
                }, 

                Package (0x02)
                {
                    "Disable", 
                    "Automatic"
                }, 

                Package (0x04)
                {
                    "Inactive", 
                    "Disable", 
                    "Active", 
                    ""
                }, 

                Package (0x04)
                {
                    "On", 
                    "", 
                    "Off", 
                    ""
                }, 

                Package (0x02)
                {
                    "Normal", 
                    "High"
                }, 

                Package (0x04)
                {
                    "3", 
                    "4", 
                    "5", 
                    "7"
                }, 

                Package (0x02)
                {
                    "5", 
                    "7"
                }, 

                Package (0x03)
                {
                    "0", 
                    "1", 
                    "3"
                }, 

                Package (0x03)
                {
                    "OutputOnly", 
                    "BiDirectional", 
                    "ECP"
                }, 

                Package (0x02)
                {
                    "Independent", 
                    "Synchronized"
                }, 

                Package (0x02)
                {
                    "PCIExpress", 
                    "Internal"
                }, 

                Package (0x10)
                {
                    "LCD", 
                    "VGA", 
                    "Digital", 
                    "Digital1onDock", 
                    "Digital2onDock", 
                    "", 
                    "", 
                    "", 
                    "", 
                    "", 
                    "", 
                    "", 
                    "", 
                    "", 
                    "", 
                    ""
                }, 

                Package (0x04)
                {
                    "", 
                    "High", 
                    "Normal", 
                    "Silent"
                }, 

                Package (0x02)
                {
                    "Compatibility", 
                    "AHCI"
                }, 

                Package (0x02)
                {
                    "External", 
                    "InternalOnly"
                }, 

                Package (0x04)
                {
                    "3F8", 
                    "2F8", 
                    "3E8", 
                    "2E8"
                }, 

                Package (0x03)
                {
                    "378", 
                    "278", 
                    "3BC"
                }, 

                Package (0x10)
                {
                    "Disable", 
                    "AutoSelect", 
                    "", 
                    "3", 
                    "4", 
                    "5", 
                    "6", 
                    "7", 
                    "", 
                    "9", 
                    "10", 
                    "11", 
                    "", 
                    "", 
                    "", 
                    ""
                }, 

                Package (0x04)
                {
                    "MaximumPerformance", 
                    "BatteryOptimized", 
                    "MaximumBattery", 
                    "Automatic"
                }, 

                Package (0x04)
                {
                    "", 
                    "", 
                    "MaximizePerformance", 
                    "Balanced"
                }, 

                Package (0x02)
                {
                    "Quick", 
                    "Diagnostics"
                }, 

                Package (0x0D)
                {
                    "Disable", 
                    "", 
                    "", 
                    "", 
                    "4", 
                    "5", 
                    "6", 
                    "7", 
                    "8", 
                    "9", 
                    "10", 
                    "11", 
                    "12"
                }, 

                Package (0x04)
                {
                    "Auto", 
                    "On", 
                    "Off", 
                    ""
                }, 

                Package (0x04)
                {
                    "", 
                    "Enable", 
                    "Disable", 
                    ""
                }, 

                Package (0x04)
                {
                    "Disable", 
                    "", 
                    "Automatic", 
                    ""
                }, 

                Package (0x04)
                {
                    "", 
                    "IntegratedGfx", 
                    "DiscreteGfx", 
                    "SwitchableGfx"
                }, 

                Package (0x02)
                {
                    "Automatic", 
                    "Disable"
                }, 

                Package (0x04)
                {
                    "Automatic", 
                    "BlackBerry", 
                    "iPodiPhone", 
                    "OtherUSBDevices"
                }, 

                Package (0x04)
                {
                    "Disable", 
                    "", 
                    "", 
                    "Enable"
                }, 

                Package (0x04)
                {
                    "Disable", 
                    "Enable", 
                    "ACOnly", 
                    "ACandBattery"
                }
            })
            Name (VLST, Package (0x0F)
            {
                "HDD0", 
                "HDD1", 
                "HDD2", 
                "HDD3", 
                "PCILAN", 
                "ATAPICD0", 
                "ATAPICD1", 
                "", 
                "USBFDD", 
                "USBCD", 
                "USBHDD", 
                "", 
                "", 
                "", 
                "NODEV"
            })
            Name (PENC, Package (0x02)
            {
                "ascii", 
                "scancode"
            })
            Name (PKBD, Package (0x03)
            {
                "us", 
                "fr", 
                "gr"
            })
            Name (PTYP, Package (0x08)
            {
                "pap", 
                "pop", 
                "uhdp1", 
                "mhdp1", 
                "uhdp2", 
                "mhdp2", 
                "uhdp3", 
                "mhdp3"
            })
            Mutex (MWMI, 0x07)
            Name (PCFG, Buffer (0x18) {})
            Name (IBUF, Buffer (0x0100) {})
            Name (ILEN, 0x00)
            Name (PSTR, Buffer (0x81) {})
            Method (WQA0, 1, NotSerialized)
            {
                Acquire (MWMI, 0xFFFF)
                If (LNotEqual (\WMIS (0x00, Arg0), 0x00))
                {
                    Release (MWMI)
                    Return ("")
                }

                Store (DerefOf (Index (ITEM, \WITM)), Local0)
                Store (DerefOf (Index (Local0, 0x00)), Local1)
                Store (DerefOf (Index (Local0, 0x01)), Local2)
                If (LLess (Local1, 0x64))
                {
                    Concatenate (Local2, ",", Local6)
                    Store (DerefOf (Index (VSEL, Local1)), Local3)
                    Concatenate (Local6, DerefOf (Index (Local3, \WSEL)), Local7)
                }
                Else
                {
                    Store (SizeOf (VLST), Local3)
                    If (LLessEqual (\WLS0, Local3))
                    {
                        Concatenate (Local2, ",", Local7)
                        Concatenate (Local7, DerefOf (Index (VLST, \WLS0)), Local2)
                    }

                    If (LLessEqual (\WLS1, Local3))
                    {
                        Concatenate (Local2, ":", Local7)
                        Concatenate (Local7, DerefOf (Index (VLST, \WLS1)), Local2)
                    }

                    If (LLessEqual (\WLS2, Local3))
                    {
                        Concatenate (Local2, ":", Local7)
                        Concatenate (Local7, DerefOf (Index (VLST, \WLS2)), Local2)
                    }

                    If (LLessEqual (\WLS3, Local3))
                    {
                        Concatenate (Local2, ":", Local7)
                        Concatenate (Local7, DerefOf (Index (VLST, \WLS3)), Local2)
                    }

                    If (LLessEqual (\WLS4, Local3))
                    {
                        Concatenate (Local2, ":", Local7)
                        Concatenate (Local7, DerefOf (Index (VLST, \WLS4)), Local2)
                    }

                    If (LLessEqual (\WLS5, Local3))
                    {
                        Concatenate (Local2, ":", Local7)
                        Concatenate (Local7, DerefOf (Index (VLST, \WLS5)), Local2)
                    }

                    If (LLessEqual (\WLS6, Local3))
                    {
                        Concatenate (Local2, ":", Local7)
                        Concatenate (Local7, DerefOf (Index (VLST, \WLS6)), Local2)
                    }

                    If (LLessEqual (\WLS7, Local3))
                    {
                        Concatenate (Local2, ":", Local7)
                        Concatenate (Local7, DerefOf (Index (VLST, \WLS7)), Local2)
                    }

                    Store (Local2, Local7)
                }

                Release (MWMI)
                Return (Local7)
            }

            Method (WMA1, 3, NotSerialized)
            {
                Acquire (MWMI, 0xFFFF)
                If (LEqual (SizeOf (Arg2), 0x00))
                {
                    Store (0x02, Local0)
                }
                Else
                {
                    Store (CARG (Arg2), Local0)
                    If (LEqual (Local0, 0x00))
                    {
                        Store (WSET (), Local0)
                    }
                }

                Release (MWMI)
                Return (DerefOf (Index (RETN, Local0)))
            }

            Method (WMA2, 3, NotSerialized)
            {
                Acquire (MWMI, 0xFFFF)
                Store (CARG (Arg2), Local0)
                If (LEqual (Local0, 0x00))
                {
                    If (LNotEqual (ILEN, 0x00))
                    {
                        Store (CPAS (IBUF, 0x00), Local0)
                    }

                    If (LEqual (Local0, 0x00))
                    {
                        Store (\WMIS (0x02, 0x00), Local0)
                    }
                }

                Release (MWMI)
                Return (DerefOf (Index (RETN, Local0)))
            }

            Method (WMA3, 3, NotSerialized)
            {
                Acquire (MWMI, 0xFFFF)
                Store (CARG (Arg2), Local0)
                If (LEqual (Local0, 0x00))
                {
                    If (LNotEqual (ILEN, 0x00))
                    {
                        Store (CPAS (IBUF, 0x00), Local0)
                    }

                    If (LEqual (Local0, 0x00))
                    {
                        Store (\WMIS (0x03, 0x00), Local0)
                    }
                }

                Release (MWMI)
                Return (DerefOf (Index (RETN, Local0)))
            }

            Method (WMA4, 3, NotSerialized)
            {
                Acquire (MWMI, 0xFFFF)
                Store (CARG (Arg2), Local0)
                If (LEqual (Local0, 0x00))
                {
                    If (LNotEqual (ILEN, 0x00))
                    {
                        Store (CPAS (IBUF, 0x00), Local0)
                    }

                    If (LEqual (Local0, 0x00))
                    {
                        Store (\WMIS (0x04, 0x00), Local0)
                    }
                }

                Release (MWMI)
                Return (DerefOf (Index (RETN, Local0)))
            }

            Method (WQA5, 1, NotSerialized)
            {
                Acquire (MWMI, 0xFFFF)
                Store (\WMIS (0x05, 0x00), Local0)
                Store (\WSPM, Index (PCFG, 0x00))
                Store (\WSPS, Index (PCFG, 0x04))
                Store (\WSMN, Index (PCFG, 0x08))
                Store (\WSMX, Index (PCFG, 0x0C))
                Store (\WSEN, Index (PCFG, 0x10))
                Store (\WSKB, Index (PCFG, 0x14))
                Release (MWMI)
                Return (PCFG)
            }

            Method (WMA6, 3, NotSerialized)
            {
                Acquire (MWMI, 0xFFFF)
                If (LEqual (SizeOf (Arg2), 0x00))
                {
                    Store (0x02, Local0)
                }
                Else
                {
                    Store (CARG (Arg2), Local0)
                    If (LEqual (Local0, 0x00))
                    {
                        If (LNotEqual (ILEN, 0x00))
                        {
                            Store (SPAS (IBUF), Local0)
                        }

                        If (LEqual (Local0, 0x00))
                        {
                            Store (\WMIS (0x06, 0x00), Local0)
                        }
                    }
                }

                Release (MWMI)
                Return (DerefOf (Index (RETN, Local0)))
            }

            Method (CARG, 1, NotSerialized)
            {
                Store (SizeOf (Arg0), Local0)
                If (LEqual (Local0, 0x00))
                {
                    Store (0x00, IBUF)
                    Store (0x00, ILEN)
                    Return (0x00)
                }

                If (LNotEqual (ObjectType (Arg0), 0x02))
                {
                    Return (0x02)
                }

                If (LGreaterEqual (Local0, 0xFF))
                {
                    Return (0x02)
                }

                Store (Arg0, IBUF)
                Decrement (Local0)
                Store (DerefOf (Index (IBUF, Local0)), Local1)
                If (LOr (LEqual (Local1, 0x3B), LEqual (Local1, 0x2A)))
                {
                    Store (0x00, Index (IBUF, Local0))
                    Store (Local0, ILEN)
                }
                Else
                {
                    Store (SizeOf (Arg0), ILEN)
                }

                Return (0x00)
            }

            Method (SCMP, 3, NotSerialized)
            {
                Store (SizeOf (Arg0), Local0)
                If (LEqual (Local0, 0x00))
                {
                    Return (0x00)
                }

                Increment (Local0)
                Name (STR1, Buffer (Local0) {})
                Store (Arg0, STR1)
                Decrement (Local0)
                Store (0x00, Local1)
                Store (Arg2, Local2)
                While (LLess (Local1, Local0))
                {
                    Store (DerefOf (Index (STR1, Local1)), Local3)
                    Store (DerefOf (Index (Arg1, Local2)), Local4)
                    If (LNotEqual (Local3, Local4))
                    {
                        Return (0x00)
                    }

                    Increment (Local1)
                    Increment (Local2)
                }

                Store (DerefOf (Index (Arg1, Local2)), Local4)
                If (LEqual (Local4, 0x00))
                {
                    Return (0x01)
                }

                If (LOr (LEqual (Local4, 0x2C), LEqual (Local4, 0x3A)))
                {
                    Return (0x01)
                }

                Return (0x00)
            }

            Method (GITM, 1, NotSerialized)
            {
                Store (0x00, Local0)
                Store (SizeOf (ITEM), Local1)
                While (LLess (Local0, Local1))
                {
                    Store (DerefOf (Index (DerefOf (Index (ITEM, Local0)), 0x01)), 
                        Local3)
                    If (SCMP (Local3, Arg0, 0x00))
                    {
                        Return (Local0)
                    }

                    Increment (Local0)
                }

                Return (Ones)
            }

            Method (GSEL, 3, NotSerialized)
            {
                Store (0x00, Local0)
                Store (SizeOf (Arg0), Local1)
                While (LLess (Local0, Local1))
                {
                    Store (DerefOf (Index (Arg0, Local0)), Local2)
                    If (SCMP (Local2, Arg1, Arg2))
                    {
                        Return (Local0)
                    }

                    Increment (Local0)
                }

                Return (Ones)
            }

            Method (SLEN, 2, NotSerialized)
            {
                Store (DerefOf (Index (Arg0, Arg1)), Local0)
                Return (SizeOf (Local0))
            }

            Method (CLRP, 0, NotSerialized)
            {
                Store (0x00, \WPAS)
                Store (0x00, \WPNW)
            }

            Method (GPAS, 2, NotSerialized)
            {
                Store (Arg1, Local0)
                Store (0x00, Local1)
                While (LLessEqual (Local1, 0x80))
                {
                    Store (DerefOf (Index (Arg0, Local0)), Local2)
                    If (LOr (LEqual (Local2, 0x2C), LEqual (Local2, 0x00)))
                    {
                        Store (0x00, Index (PSTR, Local1))
                        Return (Local1)
                    }

                    Store (Local2, Index (PSTR, Local1))
                    Increment (Local0)
                    Increment (Local1)
                }

                Store (0x00, Index (PSTR, Local1))
                Return (Ones)
            }

            Method (CPAS, 2, NotSerialized)
            {
                CLRP ()
                Store (Arg1, Local0)
                Store (GPAS (Arg0, Local0), Local1)
                If (LEqual (Local1, Ones))
                {
                    Return (0x02)
                }

                If (LEqual (Local1, 0x00))
                {
                    Return (0x02)
                }

                Store (PSTR, \WPAS)
                Add (Local0, Local1, Local0)
                Increment (Local0)
                Store (GSEL (PENC, Arg0, Local0), Local6)
                If (LEqual (Local6, Ones))
                {
                    Return (0x02)
                }

                Store (Local6, \WENC)
                If (LEqual (Local6, 0x00))
                {
                    Add (Local0, SLEN (PENC, 0x00), Local0)
                    If (LNotEqual (DerefOf (Index (Arg0, Local0)), 0x2C))
                    {
                        Return (0x02)
                    }

                    Increment (Local0)
                    Store (GSEL (PKBD, Arg0, Local0), Local6)
                    If (LEqual (Local6, Ones))
                    {
                        Return (0x02)
                    }

                    Store (Local6, \WKBD)
                }

                Return (0x00)
            }

            Method (SPAS, 1, NotSerialized)
            {
                CLRP ()
                Store (GSEL (PTYP, Arg0, 0x00), Local6)
                If (LEqual (Local6, Ones))
                {
                    Return (0x02)
                }

                Store (Local6, \WPTY)
                Store (SLEN (PTYP, Local6), Local0)
                If (LNotEqual (DerefOf (Index (Arg0, Local0)), 0x2C))
                {
                    Return (0x02)
                }

                Increment (Local0)
                Store (GPAS (Arg0, Local0), Local1)
                If (LOr (LEqual (Local1, Ones), LEqual (Local1, 0x00)))
                {
                    Return (0x02)
                }

                Store (PSTR, \WPAS)
                Add (Local0, Local1, Local0)
                If (LNotEqual (DerefOf (Index (Arg0, Local0)), 0x2C))
                {
                    Return (0x02)
                }

                Increment (Local0)
                Store (GPAS (Arg0, Local0), Local1)
                If (LEqual (Local1, Ones))
                {
                    Return (0x02)
                }

                If (LEqual (Local1, 0x00))
                {
                    Store (0x00, PSTR)
                }

                Store (PSTR, \WPNW)
                Add (Local0, Local1, Local0)
                Increment (Local0)
                Store (GSEL (PENC, Arg0, Local0), Local6)
                If (LEqual (Local6, Ones))
                {
                    Return (0x02)
                }

                Store (Local6, \WENC)
                If (LEqual (Local6, 0x00))
                {
                    Add (Local0, SLEN (PENC, 0x00), Local0)
                    If (LNotEqual (DerefOf (Index (Arg0, Local0)), 0x2C))
                    {
                        Return (0x02)
                    }

                    Increment (Local0)
                    Store (GSEL (PKBD, Arg0, Local0), Local6)
                    If (LEqual (Local6, Ones))
                    {
                        Return (0x02)
                    }

                    Store (Local6, \WKBD)
                }

                Return (0x00)
            }

            Method (WSET, 0, NotSerialized)
            {
                Store (ILEN, Local0)
                Increment (Local0)
                Store (GITM (IBUF), Local1)
                If (LEqual (Local1, Ones))
                {
                    Return (0x02)
                }

                Store (Local1, \WITM)
                Store (DerefOf (Index (ITEM, Local1)), Local3)
                Store (DerefOf (Index (Local3, 0x01)), Local4)
                Store (SizeOf (Local4), Local2)
                Increment (Local2)
                Store (DerefOf (Index (Local3, 0x00)), Local4)
                If (LLess (Local4, 0x64))
                {
                    Store (DerefOf (Index (VSEL, Local4)), Local5)
                    Store (GSEL (Local5, IBUF, Local2), Local6)
                    If (LEqual (Local6, Ones))
                    {
                        Return (0x02)
                    }

                    Store (Local6, \WSEL)
                    Add (Local2, SLEN (Local5, Local6), Local2)
                    Store (DerefOf (Index (IBUF, Local2)), Local4)
                }
                Else
                {
                    Store (0x3F, \WLS0)
                    Store (0x3F, \WLS1)
                    Store (0x3F, \WLS2)
                    Store (0x3F, \WLS3)
                    Store (0x3F, \WLS4)
                    Store (0x3F, \WLS5)
                    Store (0x3F, \WLS6)
                    Store (0x3F, \WLS7)
                    Store (GSEL (VLST, IBUF, Local2), Local6)
                    If (LEqual (Local6, Ones))
                    {
                        Return (0x02)
                    }

                    Store (Local6, \WLS0)
                    Add (Local2, SLEN (VLST, Local6), Local2)
                    Store (DerefOf (Index (IBUF, Local2)), Local4)
                    If (LAnd (LLess (Local2, Local0), LEqual (Local4, 0x3A)))
                    {
                        Increment (Local2)
                        Store (GSEL (VLST, IBUF, Local2), Local6)
                        If (LEqual (Local6, Ones))
                        {
                            Return (0x02)
                        }

                        Store (Local6, \WLS1)
                        Add (Local2, SLEN (VLST, Local6), Local2)
                        Store (DerefOf (Index (IBUF, Local2)), Local4)
                    }

                    If (LAnd (LLess (Local2, Local0), LEqual (Local4, 0x3A)))
                    {
                        Increment (Local2)
                        Store (GSEL (VLST, IBUF, Local2), Local6)
                        If (LEqual (Local6, Ones))
                        {
                            Return (0x02)
                        }

                        Store (Local6, \WLS2)
                        Add (Local2, SLEN (VLST, Local6), Local2)
                        Store (DerefOf (Index (IBUF, Local2)), Local4)
                    }

                    If (LAnd (LLess (Local2, Local0), LEqual (Local4, 0x3A)))
                    {
                        Increment (Local2)
                        Store (GSEL (VLST, IBUF, Local2), Local6)
                        If (LEqual (Local6, Ones))
                        {
                            Return (0x02)
                        }

                        Store (Local6, \WLS3)
                        Add (Local2, SLEN (VLST, Local6), Local2)
                        Store (DerefOf (Index (IBUF, Local2)), Local4)
                    }

                    If (LAnd (LLess (Local2, Local0), LEqual (Local4, 0x3A)))
                    {
                        Increment (Local2)
                        Store (GSEL (VLST, IBUF, Local2), Local6)
                        If (LEqual (Local6, Ones))
                        {
                            Return (0x02)
                        }

                        Store (Local6, \WLS4)
                        Add (Local2, SLEN (VLST, Local6), Local2)
                        Store (DerefOf (Index (IBUF, Local2)), Local4)
                    }

                    If (LAnd (LLess (Local2, Local0), LEqual (Local4, 0x3A)))
                    {
                        Increment (Local2)
                        Store (GSEL (VLST, IBUF, Local2), Local6)
                        If (LEqual (Local6, Ones))
                        {
                            Return (0x02)
                        }

                        Store (Local6, \WLS5)
                        Add (Local2, SLEN (VLST, Local6), Local2)
                        Store (DerefOf (Index (IBUF, Local2)), Local4)
                    }

                    If (LAnd (LLess (Local2, Local0), LEqual (Local4, 0x3A)))
                    {
                        Increment (Local2)
                        Store (GSEL (VLST, IBUF, Local2), Local6)
                        If (LEqual (Local6, Ones))
                        {
                            Return (0x02)
                        }

                        Store (Local6, \WLS6)
                        Add (Local2, SLEN (VLST, Local6), Local2)
                        Store (DerefOf (Index (IBUF, Local2)), Local4)
                    }

                    If (LAnd (LLess (Local2, Local0), LEqual (Local4, 0x3A)))
                    {
                        Increment (Local2)
                        Store (GSEL (VLST, IBUF, Local2), Local6)
                        If (LEqual (Local6, Ones))
                        {
                            Return (0x02)
                        }

                        Store (Local6, \WLS7)
                        Add (Local2, SLEN (VLST, Local6), Local2)
                        Store (DerefOf (Index (IBUF, Local2)), Local4)
                    }
                }

                If (LAnd (LEqual (Local4, 0x2C), LLess (Local2, Local0)))
                {
                    Increment (Local2)
                    Store (CPAS (IBUF, Local2), Local0)
                    If (LNotEqual (Local0, 0x00))
                    {
                        Return (Local0)
                    }
                }

                Return (\WMIS (0x01, 0x00))
            }

            Name (WQBA, Buffer (0x07C1)
            {
                /* 0000 */    0x46, 0x4F, 0x4D, 0x42, 0x01, 0x00, 0x00, 0x00, 
                /* 0008 */    0xB1, 0x07, 0x00, 0x00, 0x5A, 0x30, 0x00, 0x00, 
                /* 0010 */    0x44, 0x53, 0x00, 0x01, 0x1A, 0x7D, 0xDA, 0x54, 
                /* 0018 */    0x98, 0x51, 0x97, 0x00, 0x01, 0x06, 0x18, 0x42, 
                /* 0020 */    0x10, 0x11, 0x10, 0x0A, 0x0D, 0x21, 0x02, 0x0B, 
                /* 0028 */    0x83, 0x50, 0x4C, 0x18, 0x14, 0xA0, 0x45, 0x41, 
                /* 0030 */    0xC8, 0x05, 0x14, 0x95, 0x02, 0x21, 0xC3, 0x02, 
                /* 0038 */    0x14, 0x0B, 0x70, 0x2E, 0x40, 0xBA, 0x00, 0xE5, 
                /* 0040 */    0x28, 0x72, 0x0C, 0x22, 0x02, 0xF7, 0xEF, 0x0F, 
                /* 0048 */    0x31, 0x0E, 0x88, 0x14, 0x40, 0x48, 0xE6, 0x28, 
                /* 0050 */    0x28, 0x81, 0x85, 0xC0, 0x11, 0x82, 0x7E, 0x05, 
                /* 0058 */    0x20, 0x74, 0x88, 0x26, 0x83, 0x02, 0x9C, 0x22, 
                /* 0060 */    0x08, 0xD2, 0x96, 0x05, 0xE8, 0x16, 0xE0, 0x5B, 
                /* 0068 */    0x80, 0x76, 0x08, 0xA1, 0x55, 0x28, 0xC0, 0xA4, 
                /* 0070 */    0x00, 0x9F, 0x60, 0xB2, 0x28, 0x40, 0x36, 0x98, 
                /* 0078 */    0x6C, 0xC3, 0x91, 0x61, 0x30, 0x91, 0x63, 0x40, 
                /* 0080 */    0x89, 0x19, 0x03, 0x4A, 0xE7, 0x14, 0x64, 0x13, 
                /* 0088 */    0x58, 0xD0, 0x85, 0xA2, 0x68, 0x1A, 0x51, 0x12, 
                /* 0090 */    0x1C, 0xD4, 0x31, 0x44, 0x08, 0x5E, 0xAE, 0x00, 
                /* 0098 */    0xC9, 0x13, 0x90, 0xE6, 0x79, 0xC9, 0xFA, 0x20, 
                /* 00A0 */    0x34, 0x04, 0x36, 0x02, 0x1E, 0x45, 0x02, 0x08, 
                /* 00A8 */    0x8B, 0xB1, 0x4C, 0x89, 0x87, 0x41, 0x79, 0x00, 
                /* 00B0 */    0x91, 0x9C, 0xA1, 0xA2, 0x80, 0xED, 0x75, 0x22, 
                /* 00B8 */    0x1A, 0xD6, 0x71, 0x32, 0x49, 0x70, 0xA8, 0x51, 
                /* 00C0 */    0x5A, 0xA2, 0x00, 0xF3, 0x23, 0xD3, 0x44, 0x8E, 
                /* 00C8 */    0xAD, 0xE9, 0x11, 0x0B, 0x92, 0x49, 0x1B, 0x0A, 
                /* 00D0 */    0x6A, 0xE8, 0x9E, 0xD6, 0x49, 0x79, 0xA2, 0x11, 
                /* 00D8 */    0x0F, 0xCA, 0x30, 0x09, 0x3C, 0x0A, 0x86, 0xC6, 
                /* 00E0 */    0x09, 0xCA, 0x82, 0x90, 0x83, 0x81, 0xA2, 0x00, 
                /* 00E8 */    0x4F, 0xC2, 0x73, 0x2C, 0x5E, 0x80, 0xF0, 0x19, 
                /* 00F0 */    0x93, 0xA3, 0x40, 0x8C, 0x04, 0x3E, 0x12, 0x78, 
                /* 00F8 */    0x34, 0xC7, 0x8C, 0x05, 0x0A, 0x17, 0xF0, 0x7C, 
                /* 0100 */    0x8E, 0x21, 0x72, 0xDC, 0x43, 0x8D, 0x71, 0x14, 
                /* 0108 */    0x91, 0x13, 0xBC, 0x03, 0x44, 0x31, 0x5A, 0x41, 
                /* 0110 */    0xF3, 0x16, 0x62, 0xB0, 0x68, 0x06, 0xEB, 0x19, 
                /* 0118 */    0x9C, 0x0C, 0x3A, 0xC1, 0xFF, 0xFF, 0x08, 0xB8, 
                /* 0120 */    0x0C, 0x08, 0x79, 0x14, 0x60, 0x75, 0x50, 0x9A, 
                /* 0128 */    0x86, 0x09, 0xBA, 0x17, 0x60, 0x4D, 0x80, 0x31, 
                /* 0130 */    0x01, 0x1A, 0x31, 0xA4, 0x4C, 0x80, 0xB3, 0xFB, 
                /* 0138 */    0x82, 0x66, 0xD4, 0x96, 0x00, 0x73, 0x02, 0xB4, 
                /* 0140 */    0x09, 0xF0, 0x86, 0x20, 0x94, 0xF3, 0x8C, 0x72, 
                /* 0148 */    0x2C, 0xA7, 0x18, 0xE5, 0x61, 0x20, 0xE6, 0xCB, 
                /* 0150 */    0x40, 0xD0, 0x28, 0x31, 0x62, 0x9E, 0x4B, 0x5C, 
                /* 0158 */    0xC3, 0x46, 0x88, 0x11, 0xF2, 0x14, 0x02, 0xC5, 
                /* 0160 */    0x6D, 0x7F, 0x10, 0x64, 0xD0, 0xB8, 0xD1, 0xFB, 
                /* 0168 */    0xB4, 0x70, 0x56, 0x27, 0x70, 0xF4, 0x4F, 0x0A, 
                /* 0170 */    0x26, 0xF0, 0x94, 0x0F, 0xEC, 0xD9, 0xE0, 0x04, 
                /* 0178 */    0x8E, 0x35, 0x6A, 0x8C, 0x53, 0x49, 0xE0, 0xD8, 
                /* 0180 */    0x0F, 0x08, 0x69, 0x00, 0x51, 0x24, 0x78, 0xD4, 
                /* 0188 */    0x69, 0xC1, 0xE7, 0x02, 0x0F, 0xED, 0xA0, 0x3D, 
                /* 0190 */    0xC7, 0x13, 0x08, 0x72, 0x08, 0x47, 0xF0, 0xC4, 
                /* 0198 */    0xF0, 0x40, 0xE0, 0x31, 0xB0, 0x9B, 0x82, 0x8F, 
                /* 01A0 */    0x00, 0x3E, 0x21, 0xE0, 0x5D, 0x03, 0xEA, 0x6A, 
                /* 01A8 */    0xF0, 0x60, 0xC0, 0x06, 0x1D, 0x0E, 0x33, 0x5E, 
                /* 01B0 */    0x0F, 0x3F, 0xDC, 0x09, 0x9C, 0xE4, 0x03, 0x06, 
                /* 01B8 */    0x3F, 0x6C, 0x78, 0x70, 0xB8, 0x79, 0x9E, 0xCC, 
                /* 01C0 */    0x91, 0x95, 0x2A, 0xC0, 0xEC, 0xE1, 0x40, 0x07, 
                /* 01C8 */    0x09, 0x9F, 0x36, 0xD8, 0x19, 0x00, 0x23, 0x7F, 
                /* 01D0 */    0x10, 0xA8, 0x91, 0x19, 0xDA, 0xE3, 0x7E, 0xE9, 
                /* 01D8 */    0x30, 0xE4, 0x73, 0xC2, 0x61, 0x31, 0xB1, 0xA7, 
                /* 01E0 */    0x0E, 0x3A, 0x1E, 0xF0, 0x5F, 0x46, 0x9E, 0x33, 
                /* 01E8 */    0x3C, 0x7D, 0xCF, 0xD7, 0x04, 0xC3, 0x0E, 0x1C, 
                /* 01F0 */    0x3D, 0x10, 0x43, 0x3F, 0x6C, 0x1C, 0xC6, 0x69, 
                /* 01F8 */    0xF8, 0xFE, 0xE1, 0xF3, 0x02, 0x8C, 0x53, 0x80, 
                /* 0200 */    0x47, 0xEE, 0xFF, 0xFF, 0x21, 0xC5, 0xA7, 0x09, 
                /* 0208 */    0x7E, 0xB4, 0xF0, 0x69, 0x82, 0x5D, 0x0F, 0x4E, 
                /* 0210 */    0xE3, 0x39, 0xC0, 0xC3, 0x39, 0x2B, 0x1F, 0x26, 
                /* 0218 */    0xC0, 0x76, 0x3F, 0x61, 0x23, 0x7A, 0xB7, 0xF0, 
                /* 0220 */    0x68, 0xB0, 0xA7, 0x00, 0xF0, 0x9D, 0x5F, 0xC0, 
                /* 0228 */    0x79, 0xD7, 0x60, 0x83, 0x85, 0x71, 0x7E, 0x01, 
                /* 0230 */    0x1E, 0x27, 0x04, 0x0F, 0x81, 0x1F, 0x24, 0x3C, 
                /* 0238 */    0x04, 0x3E, 0x80, 0xE7, 0x8F, 0x33, 0xB4, 0xD2, 
                /* 0240 */    0x79, 0x21, 0x07, 0x06, 0xEF, 0x9C, 0x03, 0x63, 
                /* 0248 */    0x14, 0x3C, 0xCF, 0x63, 0xC3, 0x04, 0x0A, 0xF2, 
                /* 0250 */    0x1A, 0x50, 0xA8, 0x67, 0x01, 0x85, 0xF1, 0xA9, 
                /* 0258 */    0x06, 0x78, 0xFD, 0xFF, 0x4F, 0x35, 0xC0, 0xE5, 
                /* 0260 */    0x70, 0x80, 0x3B, 0x39, 0xC0, 0xBD, 0x17, 0xB0, 
                /* 0268 */    0x8B, 0xC3, 0x73, 0x0D, 0x5C, 0xD1, 0xE7, 0x1A, 
                /* 0270 */    0xA8, 0xF7, 0x96, 0xE2, 0xC6, 0xA8, 0x6B, 0x4C, 
                /* 0278 */    0x90, 0x47, 0x81, 0x47, 0x9A, 0x28, 0xCF, 0x33, 
                /* 0280 */    0xEF, 0x32, 0x11, 0x9E, 0x6D, 0x7C, 0xAD, 0xF1, 
                /* 0288 */    0x14, 0xE2, 0xF8, 0x5A, 0x63, 0xC4, 0x97, 0x89, 
                /* 0290 */    0x77, 0x1B, 0xE3, 0x1E, 0xDC, 0x63, 0xCD, 0x43, 
                /* 0298 */    0x8E, 0x41, 0x8E, 0x26, 0xC2, 0x8B, 0x41, 0xC0, 
                /* 02A0 */    0xC7, 0x1B, 0x1F, 0x6B, 0xC0, 0x2B, 0xE6, 0x85, 
                /* 02A8 */    0x22, 0x0B, 0xC7, 0x1A, 0x40, 0xE3, 0xFF, 0xFF, 
                /* 02B0 */    0x58, 0x03, 0xDC, 0xB0, 0x1E, 0x50, 0xC0, 0x77, 
                /* 02B8 */    0x64, 0x60, 0x37, 0x14, 0x78, 0x27, 0x14, 0xC0, 
                /* 02C0 */    0x4F, 0xE2, 0x17, 0x80, 0x8E, 0x1C, 0x4E, 0x0B, 
                /* 02C8 */    0x22, 0x1B, 0x6F, 0x00, 0x9F, 0x02, 0xA8, 0x1A, 
                /* 02D0 */    0x20, 0x4D, 0x13, 0x36, 0xC1, 0xF4, 0xE4, 0x82, 
                /* 02D8 */    0xF7, 0x91, 0xC0, 0xB9, 0x49, 0x94, 0x7C, 0x58, 
                /* 02E0 */    0x14, 0xCE, 0x59, 0x0F, 0x22, 0x14, 0xC4, 0x80, 
                /* 02E8 */    0x0E, 0x72, 0x9C, 0x40, 0x9F, 0x51, 0x7C, 0x10, 
                /* 02F0 */    0x39, 0xD1, 0x27, 0x42, 0x0F, 0xCA, 0xC3, 0x78, 
                /* 02F8 */    0x47, 0x61, 0x27, 0x10, 0x1F, 0x26, 0x3C, 0x76, 
                /* 0300 */    0x1F, 0x13, 0xF8, 0x3F, 0xC6, 0xB3, 0x31, 0xBA, 
                /* 0308 */    0xD5, 0x60, 0xE8, 0xFF, 0x7F, 0x4E, 0xE1, 0x60, 
                /* 0310 */    0x3E, 0x88, 0x70, 0x82, 0x8F, 0x46, 0xDD, 0x24, 
                /* 0318 */    0x40, 0xA5, 0xEF, 0xA8, 0x00, 0x0A, 0x20, 0xDF, 
                /* 0320 */    0x0B, 0x7C, 0x0E, 0x78, 0x36, 0x60, 0x63, 0x78, 
                /* 0328 */    0x14, 0x30, 0x9A, 0xD1, 0x79, 0xF8, 0xC9, 0xA2, 
                /* 0330 */    0xE2, 0x4E, 0x96, 0x82, 0x78, 0xB2, 0x8E, 0x32, 
                /* 0338 */    0x59, 0xF4, 0x4C, 0x7C, 0xAF, 0xF0, 0x8C, 0xDE, 
                /* 0340 */    0xB4, 0x3C, 0x47, 0x4F, 0xD8, 0xF7, 0x10, 0x58, 
                /* 0348 */    0x87, 0x81, 0x90, 0x0F, 0x06, 0x9E, 0x86, 0xE1, 
                /* 0350 */    0x3C, 0x59, 0x0E, 0xE7, 0xC9, 0xF2, 0xB1, 0xF8, 
                /* 0358 */    0x1A, 0x02, 0x3E, 0x81, 0xB3, 0x05, 0x39, 0x3C, 
                /* 0360 */    0x26, 0xD6, 0xA8, 0xE8, 0x55, 0xC8, 0xC3, 0xE3, 
                /* 0368 */    0x97, 0x03, 0xCF, 0xE7, 0x19, 0xE1, 0x28, 0x9F, 
                /* 0370 */    0x24, 0x70, 0x18, 0xCF, 0x24, 0x1E, 0xA2, 0x6F, 
                /* 0378 */    0x45, 0xB0, 0x26, 0x72, 0xD2, 0xBE, 0x2D, 0x9C, 
                /* 0380 */    0x6C, 0xD0, 0xD7, 0x33, 0xCC, 0xAD, 0x08, 0xF6, 
                /* 0388 */    0xFF, 0xFF, 0x56, 0x04, 0xE7, 0x82, 0x06, 0x33, 
                /* 0390 */    0xD3, 0xBD, 0x0A, 0x15, 0xEB, 0x5E, 0x05, 0x88, 
                /* 0398 */    0x1D, 0xD6, 0x6B, 0x8F, 0x0F, 0x56, 0x70, 0xEF, 
                /* 03A0 */    0x55, 0x70, 0x2F, 0x55, 0xCF, 0x0A, 0xC7, 0x18, 
                /* 03A8 */    0xFE, 0x61, 0x2A, 0xC6, 0x29, 0xBD, 0x76, 0x1A, 
                /* 03B0 */    0x28, 0x4C, 0x94, 0x78, 0xEF, 0x55, 0x1E, 0xE3, 
                /* 03B8 */    0x7B, 0x15, 0xBB, 0x42, 0x85, 0x89, 0xF5, 0x72, 
                /* 03C0 */    0x65, 0xD4, 0xD7, 0x89, 0x70, 0x81, 0x82, 0x44, 
                /* 03C8 */    0x7A, 0xB5, 0x8A, 0x12, 0x39, 0xBE, 0x21, 0xDF, 
                /* 03D0 */    0xAB, 0xC0, 0x2B, 0xE7, 0x5E, 0x05, 0xB2, 0xFF, 
                /* 03D8 */    0xFF, 0xBD, 0x0A, 0x30, 0x8F, 0xF6, 0x5E, 0x05, 
                /* 03E0 */    0xC6, 0x6B, 0x03, 0xBB, 0x21, 0xC1, 0x02, 0x7A, 
                /* 03E8 */    0xB1, 0x02, 0x0C, 0x65, 0xBE, 0x58, 0xD1, 0xBC, 
                /* 03F0 */    0x17, 0x2B, 0xC4, 0xFF, 0xFF, 0x5C, 0xC2, 0xF4, 
                /* 03F8 */    0x5C, 0xAC, 0xC8, 0x3C, 0xE1, 0xDF, 0xAC, 0x00, 
                /* 0400 */    0x4E, 0xFF, 0xFF, 0x6F, 0x56, 0x80, 0xB1, 0x7B, 
                /* 0408 */    0x11, 0xE6, 0x68, 0x05, 0x2F, 0xE5, 0xCD, 0x8A, 
                /* 0410 */    0xC6, 0x59, 0x86, 0x02, 0x2E, 0x88, 0xC2, 0xF8, 
                /* 0418 */    0x66, 0x05, 0x38, 0xBA, 0xAE, 0xE0, 0x86, 0x0C, 
                /* 0420 */    0x17, 0x2C, 0x4A, 0x30, 0x1F, 0x42, 0x3C, 0x9D, 
                /* 0428 */    0x23, 0x7E, 0x48, 0x78, 0x09, 0x78, 0xCC, 0xF1, 
                /* 0430 */    0x80, 0x1F, 0x08, 0x7C, 0xB9, 0x02, 0xD3, 0xFF, 
                /* 0438 */    0x9F, 0xC0, 0x27, 0xDF, 0xB3, 0x7C, 0x9B, 0x7A, 
                /* 0440 */    0xEF, 0xE5, 0x07, 0xAC, 0xF7, 0x2A, 0x1F, 0x7E, 
                /* 0448 */    0x63, 0xBD, 0x33, 0xBC, 0x5C, 0x79, 0x24, 0x51, 
                /* 0450 */    0x4E, 0x22, 0x94, 0xEF, 0x56, 0xEF, 0x55, 0x46, 
                /* 0458 */    0x89, 0xF8, 0x42, 0xEC, 0x53, 0xB0, 0xA1, 0x8D, 
                /* 0460 */    0xF2, 0x54, 0x11, 0xDD, 0x78, 0x2F, 0x57, 0xE0, 
                /* 0468 */    0x95, 0x74, 0xB9, 0x02, 0x68, 0x32, 0xFC, 0x97, 
                /* 0470 */    0x2B, 0xF0, 0xDD, 0x1C, 0xB0, 0xD7, 0x24, 0x38, 
                /* 0478 */    0xFF, 0xFF, 0x6B, 0x12, 0xBF, 0x5E, 0x01, 0x7E, 
                /* 0480 */    0xB2, 0x5F, 0xAF, 0x68, 0xEE, 0xEB, 0x15, 0x4A, 
                /* 0488 */    0x14, 0x84, 0x14, 0x01, 0x69, 0xA6, 0xE0, 0xB9, 
                /* 0490 */    0x5F, 0x01, 0x9C, 0xF8, 0xFF, 0xDF, 0xAF, 0x00, 
                /* 0498 */    0xCB, 0xE1, 0xEE, 0x57, 0x40, 0xEF, 0x76, 0x04, 
                /* 04A0 */    0x5E, 0x94, 0xB7, 0x23, 0xEC, 0x15, 0x0B, 0x9F, 
                /* 04A8 */    0xF1, 0x8A, 0x45, 0xC3, 0xAC, 0x44, 0xF1, 0xD6, 
                /* 04B0 */    0x44, 0x61, 0x7C, 0xC5, 0x02, 0x26, 0xFF, 0xFF, 
                /* 04B8 */    0x2B, 0x16, 0x30, 0x3B, 0x88, 0xE2, 0x46, 0x0D, 
                /* 04C0 */    0xF7, 0xE2, 0xE4, 0x5B, 0x8F, 0xE7, 0x1B, 0xD1, 
                /* 04C8 */    0x77, 0x18, 0xCC, 0x09, 0x0B, 0xC6, 0x0D, 0x0B, 
                /* 04D0 */    0xFE, 0x90, 0x1E, 0x86, 0x7D, 0x92, 0x78, 0xC7, 
                /* 04D8 */    0xF2, 0xD1, 0xCA, 0x20, 0x6F, 0xC0, 0x4F, 0x56, 
                /* 04E0 */    0x0F, 0x56, 0x51, 0x8C, 0x10, 0xF0, 0x78, 0xDE, 
                /* 04E8 */    0x85, 0x7D, 0xB4, 0x7A, 0xD3, 0x32, 0x4A, 0xEC, 
                /* 04F0 */    0x58, 0xBE, 0x50, 0x3D, 0x6B, 0xF9, 0x9A, 0x65, 
                /* 04F8 */    0x88, 0xB8, 0x0F, 0xC4, 0xBE, 0x61, 0x01, 0xB6, 
                /* 0500 */    0xFF, 0xFF, 0x37, 0x2C, 0xC0, 0xD1, 0xC5, 0x81, 
                /* 0508 */    0x1F, 0x1C, 0xB0, 0x37, 0x2C, 0xC0, 0xE7, 0x4C, 
                /* 0510 */    0xC1, 0x73, 0xC3, 0x02, 0x36, 0xFF, 0xFF, 0x1B, 
                /* 0518 */    0x16, 0xC0, 0xFF, 0xFF, 0xFF, 0x0D, 0x0B, 0x38, 
                /* 0520 */    0xDC, 0xAE, 0xB0, 0xB7, 0x2C, 0xEC, 0xED, 0x85, 
                /* 0528 */    0xAC, 0x82, 0x86, 0x5A, 0x89, 0x82, 0x7F, 0xAF, 
                /* 0530 */    0x0C, 0x43, 0x6F, 0x58, 0x80, 0xA3, 0x71, 0x7B, 
                /* 0538 */    0xD4, 0xE0, 0x38, 0x1B, 0x3C, 0x49, 0x60, 0xCE, 
                /* 0540 */    0xD5, 0xB8, 0xD9, 0x1C, 0x5C, 0xE0, 0x08, 0xBD, 
                /* 0548 */    0x83, 0x6A, 0xEE, 0xEC, 0x92, 0x02, 0xE3, 0x96, 
                /* 0550 */    0x05, 0xF7, 0x52, 0xF5, 0xD0, 0x10, 0xE5, 0x20, 
                /* 0558 */    0x5E, 0x85, 0x1F, 0xAC, 0x1E, 0xA5, 0x8E, 0xEC, 
                /* 0560 */    0xF1, 0xEA, 0x69, 0xD8, 0xC7, 0x2C, 0xDF, 0xB2, 
                /* 0568 */    0x0C, 0x15, 0xE1, 0x2D, 0x8B, 0x9D, 0x21, 0xE2, 
                /* 0570 */    0xC5, 0x8A, 0x12, 0xE2, 0xBD, 0x22, 0xB4, 0xEF, 
                /* 0578 */    0x5C, 0x06, 0x7F, 0x34, 0x36, 0x6A, 0xD0, 0x97, 
                /* 0580 */    0xE3, 0xB7, 0x2C, 0x78, 0xFF, 0xFF, 0x5B, 0x16, 
                /* 0588 */    0x7C, 0x91, 0x7F, 0x15, 0x9D, 0x08, 0x7C, 0xCB, 
                /* 0590 */    0x02, 0xF8, 0x11, 0x0C, 0x42, 0x4E, 0x06, 0x8E, 
                /* 0598 */    0x3E, 0x2F, 0xE0, 0x07, 0xF0, 0x30, 0xE2, 0x21, 
                /* 05A0 */    0xB1, 0x00, 0x03, 0xA7, 0xF7, 0x25, 0x9F, 0x29, 
                /* 05A8 */    0xF8, 0x01, 0xC3, 0x67, 0x0A, 0x76, 0x3D, 0x88, 
                /* 05B0 */    0xFE, 0x18, 0xE0, 0x73, 0x09, 0x66, 0x70, 0xE0, 
                /* 05B8 */    0xBF, 0x56, 0x1C, 0xBA, 0x47, 0xF1, 0xFA, 0x60, 
                /* 05C0 */    0x02, 0x0F, 0x8E, 0xFF, 0xFF, 0x07, 0x07, 0xF7, 
                /* 05C8 */    0xCE, 0x70, 0x44, 0xBE, 0xC3, 0x78, 0x70, 0x60, 
                /* 05D0 */    0x3B, 0x08, 0x00, 0x87, 0xC1, 0xE1, 0x43, 0x0D, 
                /* 05D8 */    0x0E, 0x3D, 0x1E, 0x03, 0x87, 0xF4, 0x79, 0x8C, 
                /* 05E0 */    0x5D, 0x18, 0x1E, 0x72, 0x3C, 0x34, 0xB0, 0x01, 
                /* 05E8 */    0x7A, 0x68, 0xC0, 0x72, 0x12, 0x4F, 0x21, 0x87, 
                /* 05F0 */    0x06, 0x66, 0x09, 0x43, 0x03, 0x4A, 0xF1, 0x86, 
                /* 05F8 */    0x46, 0xFF, 0xFF, 0x43, 0xE3, 0x43, 0xF2, 0x61, 
                /* 0600 */    0x21, 0xE6, 0x53, 0x4E, 0x84, 0xF7, 0x05, 0x9F, 
                /* 0608 */    0xA0, 0x18, 0xFA, 0x6B, 0x8A, 0x6F, 0x17, 0xBE, 
                /* 0610 */    0x09, 0xE2, 0xC6, 0x07, 0xAE, 0x4B, 0xA7, 0xC7, 
                /* 0618 */    0x07, 0x7C, 0x8E, 0x5C, 0x1E, 0x1F, 0xEE, 0xE8, 
                /* 0620 */    0xE4, 0xF1, 0xC1, 0x70, 0x79, 0x95, 0x21, 0x47, 
                /* 0628 */    0x13, 0x1F, 0xAD, 0xD8, 0xF0, 0xC0, 0x76, 0xD3, 
                /* 0630 */    0xF3, 0xF0, 0x80, 0xCF, 0x75, 0x13, 0x8C, 0x57, 
                /* 0638 */    0x48, 0x7E, 0x2D, 0x81, 0x71, 0x82, 0xC2, 0x5F, 
                /* 0640 */    0x37, 0xC1, 0xFB, 0xFF, 0xBF, 0x6E, 0x02, 0xCF, 
                /* 0648 */    0x51, 0x70, 0xAD, 0x97, 0x6C, 0x1A, 0xE4, 0x95, 
                /* 0650 */    0xA3, 0x58, 0x2F, 0x02, 0x0A, 0xE3, 0x33, 0x1B, 
                /* 0658 */    0xE0, 0x68, 0xAC, 0xCF, 0x6C, 0x60, 0xB9, 0x17, 
                /* 0660 */    0xB0, 0x1B, 0x1B, 0xDC, 0xD3, 0x1A, 0xEC, 0xBB, 
                /* 0668 */    0xC3, 0xC3, 0xD9, 0x63, 0xDA, 0xA3, 0xDA, 0x03, 
                /* 0670 */    0x9A, 0x8F, 0xD8, 0x31, 0xDE, 0xD2, 0x82, 0xC4, 
                /* 0678 */    0x89, 0xF0, 0x3A, 0xF0, 0xB4, 0xE6, 0x4B, 0x46, 
                /* 0680 */    0xBC, 0x40, 0x4F, 0x6B, 0xC6, 0x88, 0xF3, 0xD2, 
                /* 0688 */    0x66, 0xC4, 0x57, 0x8A, 0x10, 0x0F, 0x6B, 0x3E, 
                /* 0690 */    0xB9, 0x19, 0xEF, 0x61, 0x22, 0x5C, 0x98, 0x17, 
                /* 0698 */    0xB6, 0xA7, 0x35, 0x70, 0xFC, 0xFF, 0x4F, 0x6B, 
                /* 06A0 */    0x70, 0xE4, 0x5C, 0xB1, 0x01, 0x9A, 0x5C, 0xF4, 
                /* 06A8 */    0x71, 0x87, 0x14, 0xB0, 0x5C, 0x1B, 0xD8, 0x2D, 
                /* 06B0 */    0x05, 0xDE, 0x05, 0x1B, 0x38, 0xFF, 0xFF, 0x8F, 
                /* 06B8 */    0x28, 0xE0, 0xCB, 0x72, 0xC1, 0xA6, 0x39, 0x2E, 
                /* 06C0 */    0xD8, 0x28, 0x0E, 0xAB, 0x01, 0xD2, 0x3C, 0xE1, 
                /* 06C8 */    0x5F, 0xAF, 0xC1, 0x3F, 0x09, 0x5F, 0xAF, 0x01, 
                /* 06D0 */    0xDB, 0xB7, 0x58, 0xDC, 0xF5, 0x1A, 0x58, 0xFD, 
                /* 06D8 */    0xFF, 0xAF, 0xD7, 0xC0, 0x52, 0xF0, 0x48, 0xE9, 
                /* 06E0 */    0x9D, 0x1A, 0x5C, 0x37, 0x6D, 0x3C, 0xE8, 0x9B, 
                /* 06E8 */    0x36, 0x4C, 0x85, 0x36, 0x7D, 0x6A, 0x34, 0x6A, 
                /* 06F0 */    0xD5, 0xA0, 0x4C, 0x8D, 0x32, 0x0D, 0x6A, 0xF5, 
                /* 06F8 */    0xA9, 0xD4, 0x98, 0xB1, 0xA1, 0x5A, 0xDA, 0x5D, 
                /* 0700 */    0x82, 0x8A, 0x59, 0x8C, 0x46, 0xE3, 0x28, 0x20, 
                /* 0708 */    0x54, 0xF6, 0x1F, 0x50, 0x20, 0x0E, 0xF9, 0xD1, 
                /* 0710 */    0x11, 0xA0, 0x83, 0x7D, 0xA7, 0x74, 0x0B, 0x27, 
                /* 0718 */    0x6B, 0x13, 0x88, 0xE3, 0x9B, 0x80, 0x68, 0x04, 
                /* 0720 */    0x44, 0x5A, 0x54, 0x00, 0xB1, 0xDC, 0x20, 0x02, 
                /* 0728 */    0xB2, 0x8A, 0x35, 0x09, 0xC8, 0x9A, 0xBF, 0x2F, 
                /* 0730 */    0x02, 0xB7, 0x4E, 0x1D, 0x40, 0x2C, 0x25, 0x08, 
                /* 0738 */    0x4D, 0xB4, 0x70, 0x81, 0x3A, 0x1E, 0x88, 0x06, 
                /* 0740 */    0x43, 0x68, 0x04, 0xE4, 0x60, 0x14, 0x02, 0xB2, 
                /* 0748 */    0x8C, 0xCF, 0x9D, 0xC0, 0x2D, 0xC0, 0x0A, 0x10, 
                /* 0750 */    0x93, 0x0F, 0x42, 0x05, 0x7B, 0x01, 0x65, 0xEA, 
                /* 0758 */    0x41, 0x04, 0x64, 0xA5, 0x6B, 0x15, 0x90, 0x75, 
                /* 0760 */    0x83, 0x08, 0xC8, 0x59, 0xCD, 0x80, 0xB3, 0x8C, 
                /* 0768 */    0x6E, 0x80, 0x98, 0xC2, 0x87, 0x82, 0x40, 0xAC, 
                /* 0770 */    0x49, 0x0F, 0x28, 0x13, 0x08, 0xA2, 0x0B, 0x07, 
                /* 0778 */    0xF1, 0x03, 0xC4, 0xA4, 0x81, 0x08, 0xC8, 0x71, 
                /* 0780 */    0x7E, 0x25, 0x02, 0x77, 0x1C, 0x45, 0x80, 0xD4, 
                /* 0788 */    0xD1, 0x70, 0x29, 0x08, 0x15, 0xFF, 0x09, 0x13, 
                /* 0790 */    0xC8, 0xFF, 0xFF, 0xFD, 0x44, 0x96, 0xC0, 0x28, 
                /* 0798 */    0x08, 0x8D, 0xA0, 0x09, 0x84, 0xC9, 0xF3, 0x04, 
                /* 07A0 */    0xC2, 0x42, 0xFD, 0xFD, 0x34, 0x04, 0x07, 0x51, 
                /* 07A8 */    0x35, 0x44, 0xEA, 0x0A, 0x84, 0x05, 0x7E, 0x18, 
                /* 07B0 */    0x68, 0x30, 0x4E, 0x0F, 0x22, 0x20, 0x27, 0x7D, 
                /* 07B8 */    0x52, 0x05, 0x22, 0xB9, 0x41, 0x04, 0xE4, 0xFF, 
                /* 07C0 */    0x3F
            })
        }

        Scope (\_SB.PCI0.LPC.EC.HKEY)
        {
            Mutex (BFWM, 0x07)
            Method (MHCF, 1, NotSerialized)
            {
                Store (\BFWC (Arg0), Local0)
                Return (Local0)
            }

            Method (MHPF, 1, NotSerialized)
            {
                Name (RETB, Buffer (0x25) {})
                Acquire (BFWM, 0xFFFF)
                If (LLessEqual (SizeOf (Arg0), 0x25))
                {
                    Store (Arg0, \BFWB)
                    If (\BFWP ())
                    {
                        \_SB.PCI0.LPC.EC.CHKS ()
                        \BFWL ()
                    }

                    Store (\BFWB, RETB)
                }

                Release (BFWM)
                Return (RETB)
            }

            Method (MHIF, 1, NotSerialized)
            {
                Name (RETB, Buffer (0x0A) {})
                Acquire (BFWM, 0xFFFF)
                \BFWG (Arg0)
                Store (\BFWB, RETB)
                Release (BFWM)
                Return (RETB)
            }

            Method (MHDM, 1, NotSerialized)
            {
                \BDMC (Arg0)
            }
        }

        Name (\VHCC, 0x00)
        Scope (\_SB.PCI0.VID)
        {
            Name (HVMD, 0x00)
            Method (ISHV, 0, NotSerialized)
            {
                If (LEqual (HVMD, 0x00))
                {
                    Store (\VHYB (0x03, 0x00), HVMD)
                }

                Return (LEqual (HVMD, 0x03))
            }

            Method (ISOP, 0, NotSerialized)
            {
                If (LEqual (HVMD, 0x00))
                {
                    Store (\VHYB (0x03, 0x00), HVMD)
                }

                Return (LEqual (HVMD, 0x04))
            }

            Method (_DSM, 4, NotSerialized)
            {
                Name (CTOI, 0x00)
                If (LEqual (Arg0, Buffer (0x10)
                        {
                            /* 0000 */    0xA0, 0xA0, 0x95, 0x9D, 0x60, 0x00, 0x48, 0x4D, 
                            /* 0008 */    0xB3, 0x4D, 0x7E, 0x5F, 0xEA, 0x12, 0x9F, 0xD4
                        }))
                {
                    If (LNotEqual (Arg1, 0x0102))
                    {
                        Return (Buffer (0x04)
                        {
                            0x02, 0x00, 0x00, 0x80
                        })
                    }

                    While (One)
                    {
                        Name (_T_0, 0x00)
                        Store (ToInteger (Arg2), _T_0)
                        If (LEqual (_T_0, 0x00))
                        {
                            Return (Buffer (0x04)
                            {
                                0x0B, 0x00, 0x00, 0x00
                            })
                        }
                        Else
                        {
                            If (LEqual (_T_0, 0x01))
                            {
                                Return (Buffer (0x04)
                                {
                                    0xE3, 0x40, 0x00, 0x03
                                })
                            }
                            Else
                            {
                                If (LEqual (_T_0, 0x03))
                                {
                                    CreateByteField (Arg3, 0x00, PWFC)
                                    If (LEqual (PWFC, 0x01))
                                    {
                                        \_SB.PCI0.PEG.VID._ON ()
                                    }
                                    Else
                                    {
                                        If (LEqual (PWFC, 0x02))
                                        {
                                            \_SB.PCI0.PEG.VID._OFF ()
                                            Return (0x00)
                                        }
                                    }

                                    Return (LEqual (\_SB.PCI0.PEG.VID._STA (), 0x0F))
                                }
                                Else
                                {
                                    If (LEqual (_T_0, 0x05))
                                    {
                                        Name (NFBU, Buffer (0x04)
                                        {
                                            0x00
                                        })
                                        CreateField (NFBU, 0x00, 0x04, DAVF)
                                        CreateField (NFBU, 0x04, 0x01, LIDF)
                                        CreateField (NFBU, 0x08, 0x06, DTOG)
                                        If (And (DerefOf (Index (Arg3, 0x03)), 0x80))
                                        {
                                            Store (DerefOf (Index (Arg3, 0x03)), Local0)
                                            And (Local0, 0x3E, Local0)
                                            ShiftRight (Local0, 0x01, Local0)
                                            Store (Local0, CTOI)
                                            Store (CTOI, DTOG)
                                        }
                                        Else
                                        {
                                            If (And (DerefOf (Index (Arg3, 0x03)), 0x01))
                                            {
                                                If (LNot (CTOI))
                                                {
                                                    Store (DerefOf (Index (Arg3, 0x01)), Local0)
                                                    ShiftRight (Local0, 0x04, Local0)
                                                    Store (DerefOf (Index (Arg3, 0x02)), Local1)
                                                    ShiftLeft (Local1, 0x04, Local1)
                                                    Or (Local0, Local1, Local0)
                                                    Store (GATD (Local0), CTOI)
                                                }

                                                Store (CTOI, Local2)
                                                Increment (Local2)
                                                If (\_SB.PCI0.VID.MXDS (0x00))
                                                {
                                                    If (LGreaterEqual (Local2, 0x10))
                                                    {
                                                        Store (0x01, Local2)
                                                    }
                                                }
                                                Else
                                                {
                                                    If (LGreaterEqual (Local2, 0x04))
                                                    {
                                                        Store (0x01, Local2)
                                                    }
                                                }

                                                Store (Local2, DTOG)
                                                Store (One, DAVF)
                                            }
                                            Else
                                            {
                                                If (LNot (CTOI))
                                                {
                                                    If (And (DerefOf (Index (Arg3, 0x03)), 0x01))
                                                    {
                                                        Store (DerefOf (Index (Arg3, 0x01)), Local0)
                                                        ShiftRight (Local0, 0x04, Local0)
                                                        Store (DerefOf (Index (Arg3, 0x02)), Local1)
                                                        ShiftLeft (Local1, 0x04, Local1)
                                                        Or (Local0, Local1, Local0)
                                                        Store (GATD (Local0), CTOI)
                                                    }
                                                }

                                                Store (CTOI, DTOG)
                                            }
                                        }

                                        Return (NFBU)
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_0, 0x06))
                                        {
                                            Return (Package (0x25)
                                            {
                                                0x0410, 
                                                0x2C, 
                                                0x80000100, 
                                                0x2C, 
                                                0x0410, 
                                                0x80000100, 
                                                0x2C, 
                                                0x80006330, 
                                                0x2C, 
                                                0x0410, 
                                                0x80006330, 
                                                0x2C, 
                                                0x80007331, 
                                                0x2C, 
                                                0x0410, 
                                                0x80007331, 
                                                0x2C, 
                                                0x80086342, 
                                                0x2C, 
                                                0x0410, 
                                                0x80086342, 
                                                0x2C, 
                                                0x80087355, 
                                                0x2C, 
                                                0x0410, 
                                                0x80087355, 
                                                0x2C, 
                                                0x80086354, 
                                                0x2C, 
                                                0x0410, 
                                                0x80086354, 
                                                0x2C, 
                                                0x80087343, 
                                                0x2C, 
                                                0x0410, 
                                                0x80087343, 
                                                0x2C
                                            })
                                        }
                                        Else
                                        {
                                            Return (Buffer (0x04)
                                            {
                                                0x02, 0x00, 0x00, 0x80
                                            })
                                        }
                                    }
                                }
                            }
                        }

                        Break
                    }
                }
                Else
                {
                    If (LEqual (Arg0, Buffer (0x10)
                            {
                                /* 0000 */    0xD3, 0x73, 0xD8, 0x7E, 0xD0, 0xC2, 0x4F, 0x4E, 
                                /* 0008 */    0xA8, 0x54, 0x0F, 0x13, 0x17, 0xB0, 0x1C, 0x2C
                            }))
                    {
                        If (LNot (ISHV ()))
                        {
                            Return (Buffer (0x04)
                            {
                                0x02, 0x00, 0x00, 0x80
                            })
                        }

                        If (LNotEqual (Arg1, 0x01))
                        {
                            Return (Buffer (0x04)
                            {
                                0x02, 0x00, 0x00, 0x80
                            })
                        }

                        While (One)
                        {
                            Name (_T_1, 0x00)
                            Store (ToInteger (Arg2), _T_1)
                            If (LEqual (_T_1, 0x00))
                            {
                                Return (Buffer (0x04)
                                {
                                    0x03, 0x00, 0x00, 0x00
                                })
                            }
                            Else
                            {
                                If (LEqual (_T_1, 0x01))
                                {
                                    If (ISOP ())
                                    {
                                        Return (Package (0x05)
                                        {
                                            0x04, 
                                            Package (0x02)
                                            {
                                                0x80000100, 
                                                Buffer (0x04)
                                                {
                                                    0x01, 0x03, 0x03, 0x00
                                                }
                                            }, 

                                            Package (0x02)
                                            {
                                                0x0410, 
                                                Buffer (0x04)
                                                {
                                                    0x02, 0x03, 0x03, 0x00
                                                }
                                            }, 

                                            Package (0x02)
                                            {
                                                0x80006330, 
                                                Buffer (0x04)
                                                {
                                                    0x08, 0x03, 0x03, 0x03
                                                }
                                            }, 

                                            Package (0x02)
                                            {
                                                0x80007331, 
                                                Buffer (0x04)
                                                {
                                                    0x04, 0x03, 0x03, 0x03
                                                }
                                            }
                                        })
                                    }

                                    Return (Package (0x05)
                                    {
                                        0x04, 
                                        Package (0x02)
                                        {
                                            0x80000100, 
                                            Buffer (0x04)
                                            {
                                                0x01, 0x03, 0x03, 0x00
                                            }
                                        }, 

                                        Package (0x02)
                                        {
                                            0x0410, 
                                            Buffer (0x04)
                                            {
                                                0x02, 0x03, 0x03, 0x00
                                            }
                                        }, 

                                        Package (0x02)
                                        {
                                            0x80006330, 
                                            Buffer (0x04)
                                            {
                                                0x08, 0x03, 0x03, 0x03
                                            }
                                        }, 

                                        Package (0x02)
                                        {
                                            0x80007331, 
                                            Buffer (0x04)
                                            {
                                                0x04, 0x03, 0x03, 0x03
                                            }
                                        }
                                    })
                                }
                                Else
                                {
                                    Return (Buffer (0x04)
                                    {
                                        0x02, 0x00, 0x00, 0x80
                                    })
                                }
                            }

                            Break
                        }
                    }
                }
            }

            Method (GATD, 1, NotSerialized)
            {
                While (One)
                {
                    Name (_T_0, 0x00)
                    Store (ToInteger (Arg0), _T_0)
                    If (LEqual (_T_0, 0x80))
                    {
                        Return (0x01)
                    }
                    Else
                    {
                        If (LEqual (_T_0, 0x01))
                        {
                            Return (0x02)
                        }
                        Else
                        {
                            If (LEqual (_T_0, 0x81))
                            {
                                Return (0x03)
                            }
                            Else
                            {
                                If (LEqual (_T_0, 0x02))
                                {
                                    Return (0x04)
                                }
                                Else
                                {
                                    If (LEqual (_T_0, 0x82))
                                    {
                                        Return (0x05)
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_0, 0x04))
                                        {
                                            Return (0x06)
                                        }
                                        Else
                                        {
                                            If (LEqual (_T_0, 0x84))
                                            {
                                                Return (0x07)
                                            }
                                            Else
                                            {
                                                If (LEqual (_T_0, 0x08))
                                                {
                                                    Return (0x08)
                                                }
                                                Else
                                                {
                                                    If (LEqual (_T_0, 0x88))
                                                    {
                                                        Return (0x09)
                                                    }
                                                    Else
                                                    {
                                                        If (LEqual (_T_0, 0x10))
                                                        {
                                                            Return (0x0A)
                                                        }
                                                        Else
                                                        {
                                                            If (LEqual (_T_0, 0x90))
                                                            {
                                                                Return (0x0B)
                                                            }
                                                            Else
                                                            {
                                                                If (LEqual (_T_0, 0x20))
                                                                {
                                                                    Return (0x0C)
                                                                }
                                                                Else
                                                                {
                                                                    If (LEqual (_T_0, 0xA0))
                                                                    {
                                                                        Return (0x0D)
                                                                    }
                                                                    Else
                                                                    {
                                                                        If (LEqual (_T_0, 0x40))
                                                                        {
                                                                            Return (0x0E)
                                                                        }
                                                                        Else
                                                                        {
                                                                            If (LEqual (_T_0, 0xC0))
                                                                            {
                                                                                Return (0x0F)
                                                                            }
                                                                            Else
                                                                            {
                                                                                Return (0x01)
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }

                    Break
                }
            }

            Method (MXDS, 1, NotSerialized)
            {
                If (LNot (Arg0))
                {
                    Return (LNot (LNot (And (\RISA (0x11BA), 0x10))))
                }
                Else
                {
                    \SWTT (0x00)
                    \MISA (0x11BA, 0xAB, 0x40)
                }
            }

            Method (MXMX, 1, NotSerialized)
            {
                While (One)
                {
                    Name (_T_0, 0x00)
                    Store (ToInteger (Arg0), _T_0)
                    If (LEqual (_T_0, 0x00))
                    {
                        Store (0x60, Local0)
                        If (ISOP ())
                        {
                            Store (0x40, Local0)
                        }

                        \MISA (0x11BA, 0x9F, Local0)
                    }
                    Else
                    {
                        If (LEqual (_T_0, 0x02))
                        {
                            Return (LEqual (And (\RISA (0x11BA), 0x40), 0x40))
                        }
                    }

                    Break
                }

                Return (0x01)
            }
        }

        Scope (\_SB.PCI0)
        {
            Name (OTM, "OTMACPI 2009-Nov-12 18:18:51")
        }

        Scope (\_SB.PCI0.PEG.VID)
        {
            Method (GOBT, 1, NotSerialized)
            {
                Name (OPVK, Buffer (0xE6)
                {
                    /* 0000 */    0xA2, 0xA1, 0x94, 0xE8, 0xFD, 0xA5, 0xEA, 0xB6, 
                    /* 0008 */    0x4B, 0x56, 0xE6, 0x00, 0x00, 0x00, 0x01, 0x00, 
                    /* 0010 */    0x31, 0x34, 0x38, 0x35, 0x39, 0x37, 0x34, 0x35, 
                    /* 0018 */    0x36, 0x39, 0x38, 0x35, 0x47, 0x65, 0x6E, 0x75, 
                    /* 0020 */    0x69, 0x6E, 0x65, 0x20, 0x4E, 0x56, 0x49, 0x44, 
                    /* 0028 */    0x49, 0x41, 0x20, 0x43, 0x65, 0x72, 0x74, 0x69, 
                    /* 0030 */    0x66, 0x69, 0x65, 0x64, 0x20, 0x4F, 0x70, 0x74, 
                    /* 0038 */    0x69, 0x6D, 0x75, 0x73, 0x20, 0x52, 0x65, 0x61, 
                    /* 0040 */    0x64, 0x79, 0x20, 0x4D, 0x6F, 0x74, 0x68, 0x65, 
                    /* 0048 */    0x72, 0x62, 0x6F, 0x61, 0x72, 0x64, 0x20, 0x66, 
                    /* 0050 */    0x6F, 0x72, 0x20, 0x36, 0x37, 0x39, 0x36, 0x33, 
                    /* 0058 */    0x35, 0x5F, 0x4C, 0x5F, 0x73, 0x68, 0x69, 0x6E, 
                    /* 0060 */    0x61, 0x69, 0x20, 0x20, 0x20, 0x20, 0x20, 0x20, 
                    /* 0068 */    0x2D, 0x20, 0x53, 0x40, 0x29, 0x38, 0x54, 0x29, 
                    /* 0070 */    0x59, 0x2A, 0x41, 0x52, 0x38, 0x33, 0x3F, 0x3F, 
                    /* 0078 */    0x4F, 0x37, 0x42, 0x28, 0x59, 0x21, 0x46, 0x35, 
                    /* 0080 */    0x4A, 0x5F, 0x33, 0x3A, 0x4D, 0x3A, 0x53, 0x48, 
                    /* 0088 */    0x49, 0x4D, 0x3F, 0x34, 0x31, 0x25, 0x39, 0x2D, 
                    /* 0090 */    0x26, 0x33, 0x22, 0x43, 0x5B, 0x40, 0x5F, 0x2C, 
                    /* 0098 */    0x56, 0x51, 0x29, 0x57, 0x32, 0x56, 0x20, 0x2D, 
                    /* 00A0 */    0x20, 0x43, 0x6F, 0x70, 0x79, 0x72, 0x69, 0x67, 
                    /* 00A8 */    0x68, 0x74, 0x20, 0x32, 0x30, 0x31, 0x30, 0x20, 
                    /* 00B0 */    0x4E, 0x56, 0x49, 0x44, 0x49, 0x41, 0x20, 0x43, 
                    /* 00B8 */    0x6F, 0x72, 0x70, 0x6F, 0x72, 0x61, 0x74, 0x69, 
                    /* 00C0 */    0x6F, 0x6E, 0x20, 0x41, 0x6C, 0x6C, 0x20, 0x52, 
                    /* 00C8 */    0x69, 0x67, 0x68, 0x74, 0x73, 0x20, 0x52, 0x65, 
                    /* 00D0 */    0x73, 0x65, 0x72, 0x76, 0x65, 0x64, 0x2D, 0x31, 
                    /* 00D8 */    0x34, 0x38, 0x35, 0x39, 0x37, 0x34, 0x35, 0x36, 
                    /* 00E0 */    0x39, 0x38, 0x35, 0x28, 0x52, 0x29
                })
                CreateWordField (Arg0, 0x02, USRG)
                If (LEqual (USRG, 0x564B))
                {
                    Return (OPVK)
                }

                Return (Zero)
            }
        }

        Scope (\_SB.PCI0.PEG.VID)
        {
            Name (OMPR, 0x02)
            Name (HDAS, 0x00)
            Method (NVOP, 4, NotSerialized)
            {
                Store ("------- NV OPTIMUS DSM --------", Debug)
                If (LNotEqual (Arg1, 0x0100))
                {
                    Return (0x80000001)
                }

                While (One)
                {
                    Name (_T_0, 0x00)
                    Store (ToInteger (Arg2), _T_0)
                    If (LEqual (_T_0, 0x00))
                    {
                        Store (Buffer (0x04)
                            {
                                0x00, 0x00, 0x00, 0x00
                            }, Local0)
                        Divide (0x00, 0x08, Local2, Local1)
                        ShiftLeft (0x01, Local2, Local2)
                        Or (DerefOf (Index (Local0, Local1)), Local2, Index (Local0, Local1
                            ))
                        Divide (0x1A, 0x08, Local2, Local1)
                        ShiftLeft (0x01, Local2, Local2)
                        Or (DerefOf (Index (Local0, Local1)), Local2, Index (Local0, Local1
                            ))
                        Divide (0x1B, 0x08, Local2, Local1)
                        ShiftLeft (0x01, Local2, Local2)
                        Or (DerefOf (Index (Local0, Local1)), Local2, Index (Local0, Local1
                            ))
                        Divide (0x10, 0x08, Local2, Local1)
                        ShiftLeft (0x01, Local2, Local2)
                        Or (DerefOf (Index (Local0, Local1)), Local2, Index (Local0, Local1
                            ))
                        Return (Local0)
                    }
                    Else
                    {
                        If (LEqual (_T_0, 0x1A))
                        {
                            CreateField (Arg3, 0x18, 0x02, OPCE)
                            CreateField (Arg3, 0x00, 0x01, FLCH)
                            If (ToInteger (FLCH))
                            {
                                Store (OPCE, OMPR)
                            }

                            Store (Buffer (0x04)
                                {
                                    0x00, 0x00, 0x00, 0x00
                                }, Local0)
                            CreateField (Local0, 0x00, 0x01, OPEN)
                            CreateField (Local0, 0x03, 0x02, CGCS)
                            CreateField (Local0, 0x06, 0x01, SHPC)
                            CreateField (Local0, 0x18, 0x03, DGPC)
                            CreateField (Local0, 0x1B, 0x02, HDAC)
                            Store (One, OPEN)
                            Store (One, SHPC)
                            Store (One, DGPC)
                            If (\_SB.PCI0.PEG.VID._STA ())
                            {
                                Store (0x03, CGCS)
                            }

                            Store (0x02, HDAC)
                            Return (Local0)
                        }
                        Else
                        {
                            If (LEqual (_T_0, 0x1B))
                            {
                                CreateField (Arg3, 0x00, 0x01, HDAU)
                                CreateField (Arg3, 0x01, 0x01, HDAR)
                                Store (Buffer (0x04)
                                    {
                                        0x00, 0x00, 0x00, 0x00
                                    }, Local0)
                                CreateField (Local0, 0x02, 0x02, RQGS)
                                CreateField (Local0, 0x04, 0x01, PWST)
                                Store (One, PWST)
                                If (LAnd (\_SB.PCI0.LPC.EC.DOCD, \_SB.PCI0.LPC.EC.AC._PSR ()))
                                {
                                    Store (One, RQGS)
                                }
                                Else
                                {
                                    Store (Zero, RQGS)
                                }

                                If (ToInteger (HDAR))
                                {
                                    Store (ToInteger (HDAU), HDAS)
                                }

                                Return (Local0)
                            }
                            Else
                            {
                                If (LEqual (_T_0, 0x10))
                                {
                                    Return (\_SB.PCI0.PEG.VID.GOBT (Arg3))
                                }
                            }
                        }
                    }

                    Break
                }

                Return (0x80000002)
            }
        }

        Scope (\)
        {
            Method (CMPB, 2, NotSerialized)
            {
                Store (SizeOf (Arg0), Local1)
                If (LNotEqual (Local1, SizeOf (Arg1)))
                {
                    Return (0x00)
                }

                Store (0x00, Local0)
                While (LLess (Local0, Local1))
                {
                    If (LNotEqual (DerefOf (Index (Arg0, Local0)), DerefOf (Index (
                        Arg1, Local0))))
                    {
                        Return (0x00)
                    }

                    Increment (Local0)
                }

                Return (0x01)
            }
        }
    }

    Scope (\_SB.PCI0.LPC.UART)
    {
        Name (_EJD, "_SB.GDCK")
    }

    Scope (\_SB.PCI0.LPC.LPT)
    {
        Name (_EJD, "_SB.GDCK")
    }

    Scope (\_SB.PCI0.LPC.ECP)
    {
        Name (_EJD, "_SB.GDCK")
    }

    Scope (\_SB.PCI0.EHC2.URTH.URMH.PRTC)
    {
        Name (_EJD, "_SB.GDCK")
    }

    Scope (\_SB.PCI0.EHC1.URTH.URMH.PRT5)
    {
        Name (_EJD, "_SB.PCI0.EXP4.SLOT")
    }

    Scope (\_SB.PCI0.EXP4.SLOT)
    {
        Name (_EJD, "_SB.PCI0.EHC1.URTH.URMH.PRT5")
    }

    Name (\_S0, Package (0x04)
    {
        0x00, 
        0x00, 
        0x00, 
        0x00
    })
    Name (\_S3, Package (0x04)
    {
        0x05, 
        0x05, 
        0x00, 
        0x00
    })
    Name (\_S4, Package (0x04)
    {
        0x06, 
        0x06, 
        0x00, 
        0x00
    })
    Name (\_S5, Package (0x04)
    {
        0x07, 
        0x07, 
        0x00, 
        0x00
    })
    Method (\_PTS, 1, NotSerialized)
    {
        Store (0x01, Local0)
        If (LEqual (Arg0, \SPS))
        {
            Store (0x00, Local0)
        }

        If (LOr (LEqual (Arg0, 0x00), LGreaterEqual (Arg0, 0x06)))
        {
            Store (0x00, Local0)
        }

        If (Local0)
        {
            Store (Arg0, \SPS)
            \_SB.PCI0.LPC.EC.HKEY.MHKE (0x00)
            If (\_SB.PCI0.LPC.EC.KBLT)
            {
                \UCMS (0x0D)
            }

            If (LEqual (Arg0, 0x01))
            {
                Store (\_SB.PCI0.LPC.EC.HFNI, \FNID)
                Store (0x00, \_SB.PCI0.LPC.EC.HFNI)
                Store (0x00, \_SB.PCI0.LPC.EC.HFSP)
            }

            If (LEqual (Arg0, 0x03))
            {
                \VVPD (0x03)
                Store (\VHYB (0x07, 0x00), \VHCC)
                \TRAP ()
                Store (\_SB.PCI0.LPC.EC.AC._PSR (), \ACST)
            }

            If (LEqual (Arg0, 0x04))
            {
                Store (\VHYB (0x07, 0x00), \VHCC)
                \_SB.SLPB._PSW (0x00)
                If (And (\PPMF, 0x01))
                {
                    \STEP (0x07)
                }

                \TRAP ()
                TPHY (0x02)
                \AWON (0x04)
            }

            If (LEqual (Arg0, 0x05))
            {
                \TRAP ()
                TPHY (0x02)
                \AWON (0x05)
            }

            \_SB.PCI0.LPC.EC.BPTS (Arg0)
            If (LGreaterEqual (Arg0, 0x04))
            {
                Store (0x00, \_SB.PCI0.LPC.EC.HWLB)
            }
            Else
            {
                Store (0x01, \_SB.PCI0.LPC.EC.HWLB)
            }

            If (LNotEqual (Arg0, 0x05))
            {
                Store (0x01, \_SB.PCI0.LPC.EC.HCMU)
                Store (\_SB.PCI0.EXP4.PDS, \_SB.PCI0.EXP4.PDSF)
            }

            \_SB.PCI0.LPC.EC.HKEY.WGPS (Arg0)
        }
    }

    Name (WAKI, Package (0x02)
    {
        0x00, 
        0x00
    })
    Method (\_WAK, 1, NotSerialized)
    {
        If (LOr (LEqual (Arg0, 0x00), LGreaterEqual (Arg0, 0x05)))
        {
            Return (WAKI)
        }

        Store (0x00, \SPS)
        Store (0x00, \_SB.PCI0.LPC.EC.HCMU)
        \_SB.PCI0.LPC.EC.EVNT (0x01)
        \_SB.PCI0.LPC.EC.HKEY.MHKE (0x01)
        \_SB.PCI0.LPC.EC.FNST ()
        \UCMS (0x0D)
        Store (0x00, \LIDB)
        If (LEqual (Arg0, 0x01))
        {
            Store (\_SB.PCI0.LPC.EC.HFNI, \FNID)
        }

        If (LEqual (Arg0, 0x03))
        {
            Store (\_SB.PCI0.LPC.EC.AC._PSR (), \PWRS)
            If (\OSC4)
            {
                \PNTF (0x81)
            }

            If (LNotEqual (\ACST, \_SB.PCI0.LPC.EC.AC._PSR ()))
            {
                \_SB.PCI0.LPC.EC.ATMC ()
            }

            \VHYB (0x06, \VHCC)
            If (\_SB.PCI0.VID.ISOP ())
            {
                \VHYB (0x09, \_SB.PCI0.PEG.VID.HDAS)
            }

            If (\VIGD)
            {
                \_SB.PCI0.VID.GLIS (\_SB.LID._LID ())
                If (\WVIS)
                {
                    \VBTD ()
                }
            }
            Else
            {
                If (\WVIS)
                {
                    \_SB.PCI0.VID.GLIS (\_SB.LID._LID ())
                    \VBTD ()
                }
            }

            \AWON (0x00)
            If (\CMPR)
            {
                Notify (\_SB.SLPB, 0x02)
                Store (0x00, \CMPR)
            }
        }

        If (LEqual (Arg0, 0x04))
        {
            \NVSS (0x00)
            Store (0x00, \_SB.PCI0.LPC.EC.HSPA)
            Store (\_SB.PCI0.LPC.EC.AC._PSR (), \PWRS)
            If (\OSC4)
            {
                \PNTF (0x81)
            }

            If (And (\PPMF, 0x01))
            {
                \STEP (0x08)
            }

            \_SB.PCI0.LPC.EC.ATMC ()
            \VHYB (0x06, \VHCC)
            If (\_SB.PCI0.VID.ISOP ())
            {
                \VHYB (0x09, \_SB.PCI0.PEG.VID.HDAS)
            }
        }

        If (XOr (\_SB.PCI0.EXP4.PDS, \_SB.PCI0.EXP4.PDSF))
        {
            Store (\_SB.PCI0.EXP4.PDS, \_SB.PCI0.EXP4.PDSF)
            Notify (\_SB.PCI0.EXP4, 0x00)
        }

        \_SB.PCI0.LPC.EC.BWAK (Arg0)
        \_SB.PCI0.LPC.EC.HKEY.WGWK (Arg0)
        Notify (\_TZ.THM0, 0x80)
        \VSLD (\_SB.LID._LID ())
        If (\VIGD)
        {
            \_SB.PCI0.VID.GLIS (\_SB.LID._LID ())
        }
        Else
        {
            If (\WVIS)
            {
                \_SB.PCI0.VID.GLIS (\_SB.LID._LID ())
            }
        }

        If (LLess (Arg0, 0x04))
        {
            If (And (\RRBF, 0x02))
            {
                ShiftLeft (Arg0, 0x08, Local0)
                Store (Or (0x2013, Local0), Local0)
                \_SB.PCI0.LPC.EC.HKEY.MHKQ (Local0)
            }
        }

        If (LEqual (Arg0, 0x04))
        {
            Store (0x00, Local0)
            Store (\CSUM (0x00), Local1)
            If (LNotEqual (Local1, \CHKC))
            {
                Store (0x01, Local0)
                Store (Local1, \CHKC)
            }

            Store (\CSUM (0x01), Local1)
            If (LNotEqual (Local1, \CHKE))
            {
                Store (0x01, Local0)
                Store (Local1, \CHKE)
            }

            If (Local0)
            {
                Notify (\_SB, 0x00)
            }
        }

        Store (Zero, \RRBF)
        Return (WAKI)
    }

    Scope (\_SI)
    {
        Method (_SST, 1, NotSerialized)
        {
            If (LEqual (Arg0, 0x00))
            {
                \_SB.PCI0.LPC.EC.LED (0x00, 0x00)
                \_SB.PCI0.LPC.EC.LED (0x07, 0x00)
            }

            If (LEqual (Arg0, 0x01))
            {
                If (LOr (\SPS, \WNTF))
                {
                    \_SB.PCI0.LPC.EC.BEEP (0x05)
                }

                \_SB.PCI0.LPC.EC.LED (0x00, 0x80)
                \_SB.PCI0.LPC.EC.LED (0x07, 0x00)
            }

            If (LEqual (Arg0, 0x02))
            {
                \_SB.PCI0.LPC.EC.LED (0x00, 0xC0)
                \_SB.PCI0.LPC.EC.LED (0x07, 0xC0)
            }

            If (LEqual (Arg0, 0x03))
            {
                If (LGreater (\SPS, 0x03))
                {
                    \_SB.PCI0.LPC.EC.BEEP (0x07)
                }
                Else
                {
                    If (LEqual (\SPS, 0x03))
                    {
                        \_SB.PCI0.LPC.EC.BEEP (0x03)
                    }
                    Else
                    {
                        \_SB.PCI0.LPC.EC.BEEP (0x04)
                    }
                }

                If (LEqual (\SPS, 0x03)) {}
                Else
                {
                    \_SB.PCI0.LPC.EC.LED (0x00, 0x80)
                }

                \_SB.PCI0.LPC.EC.LED (0x07, 0xC0)
                \_SB.PCI0.LPC.EC.LED (0x00, 0xC0)
            }

            If (LEqual (Arg0, 0x04))
            {
                \_SB.PCI0.LPC.EC.BEEP (0x03)
                \_SB.PCI0.LPC.EC.LED (0x07, 0xC0)
                \_SB.PCI0.LPC.EC.LED (0x00, 0xC0)
            }
        }
    }

    Scope (\_GPE)
    {
        Method (_L1D, 0, NotSerialized)
        {
            Store (\_SB.PCI0.LPC.EC.HWAK, Local0)
            Store (Local0, \RRBF)
            Sleep (0x0A)
            If (And (Local0, 0x02)) {}
            If (And (Local0, 0x04))
            {
                Notify (\_SB.LID, 0x02)
            }

            If (And (Local0, 0x08))
            {
                Notify (\_SB.SLPB, 0x02)
            }

            If (And (Local0, 0x10))
            {
                Notify (\_SB.SLPB, 0x02)
            }

            If (And (Local0, 0x40)) {}
            If (And (Local0, 0x80))
            {
                Notify (\_SB.SLPB, 0x02)
            }
        }

        Method (_L09, 0, NotSerialized)
        {
            If (\_SB.PCI0.EXP1.PS)
            {
                Store (0x01, \_SB.PCI0.EXP1.PS)
                Store (0x01, \_SB.PCI0.EXP1.PMCS)
                Notify (\_SB.PCI0.EXP1, 0x02)
            }

            If (\_SB.PCI0.EXP2.PS)
            {
                Store (0x01, \_SB.PCI0.EXP2.PS)
                Store (0x01, \_SB.PCI0.EXP2.PMCS)
                Notify (\_SB.PCI0.EXP2, 0x02)
            }

            If (\_SB.PCI0.EXP3.PS)
            {
                Store (0x01, \_SB.PCI0.EXP3.PS)
                Store (0x01, \_SB.PCI0.EXP3.PMCS)
                Notify (\_SB.PCI0.EXP3, 0x02)
            }

            If (\_SB.PCI0.EXP4.PS)
            {
                Store (0x01, \_SB.PCI0.EXP4.PS)
                Store (0x01, \_SB.PCI0.EXP4.PMCS)
                Notify (\_SB.PCI0.EXP4, 0x02)
            }

            If (\_SB.PCI0.EXP5.PS)
            {
                Store (0x01, \_SB.PCI0.EXP5.PS)
                Store (0x01, \_SB.PCI0.EXP5.PMCS)
                Notify (\_SB.PCI0.EXP5, 0x02)
            }
        }

        Method (_L01, 0, NotSerialized)
        {
            If (\_SB.PCI0.EXP4.HPCS)
            {
                Sleep (0x64)
                Store (0x01, \_SB.PCI0.EXP4.HPCS)
                If (\_SB.PCI0.EXP4.PDC)
                {
                    Store (0x01, \_SB.PCI0.EXP4.PDC)
                    Store (\_SB.PCI0.EXP4.PDS, \_SB.PCI0.EXP4.PDSF)
                    Notify (\_SB.PCI0.EXP4, 0x00)
                }
            }
        }

        Method (_L02, 0, NotSerialized)
        {
            Store (0x00, \_SB.PCI0.LPC.SWGE)
            If (LAnd (\CWUE, And (\SWGP, 0x02)))
            {
                And (\SWGP, Not (0x02), \SWGP)
                If (\OSC4)
                {
                    \PNTF (0x81)
                }
            }
        }

        Method (_L06, 0, NotSerialized)
        {
            If (\_SB.PCI0.VID.GSSE)
            {
                \_SB.PCI0.VID.GSCI ()
            }
            Else
            {
                Store (0x01, \_SB.PCI0.LPC.SCIS)
            }
        }
    }

    Scope (\_SB.PCI0.LPC.EC.HKEY)
    {
        Method (MHQT, 1, NotSerialized)
        {
            If (LAnd (\WNTF, \TATC))
            {
                If (LEqual (Arg0, 0x00))
                {
                    Store (\TATC, Local0)
                    Return (Local0)
                }
                Else
                {
                    If (LEqual (Arg0, 0x01))
                    {
                        Store (\TDFA, Local0)
                        Add (Local0, ShiftLeft (\TDTA, 0x04), Local0)
                        Add (Local0, ShiftLeft (\TDFD, 0x08), Local0)
                        Add (Local0, ShiftLeft (\TDTD, 0x0C), Local0)
                        Add (Local0, ShiftLeft (\TNFT, 0x10), Local0)
                        Add (Local0, ShiftLeft (\TNTT, 0x14), Local0)
                        Return (Local0)
                    }
                    Else
                    {
                        If (LEqual (Arg0, 0x02))
                        {
                            Store (\TCFA, Local0)
                            Add (Local0, ShiftLeft (\TCTA, 0x04), Local0)
                            Add (Local0, ShiftLeft (\TCFD, 0x08), Local0)
                            Add (Local0, ShiftLeft (\TCTD, 0x0C), Local0)
                            Return (Local0)
                        }
                        Else
                        {
                            If (LEqual (Arg0, 0x03)) {}
                            Else
                            {
                                If (LEqual (Arg0, 0x04))
                                {
                                    Store (\TATW, Local0)
                                    Return (Local0)
                                }
                                Else
                                {
                                    Noop
                                }
                            }
                        }
                    }
                }
            }

            Return (0x00)
        }

        Method (MHAT, 1, NotSerialized)
        {
            If (LAnd (\WNTF, \TATC))
            {
                Store (And (Arg0, 0xFF), Local0)
                If (LNot (ATMV (Local0)))
                {
                    Return (0x00)
                }

                Store (And (ShiftRight (Arg0, 0x08), 0xFF), Local0)
                If (LNot (ATMV (Local0)))
                {
                    Return (0x00)
                }

                Store (And (Arg0, 0x0F), \TCFA)
                Store (And (ShiftRight (Arg0, 0x04), 0x0F), \TCTA)
                Store (And (ShiftRight (Arg0, 0x08), 0x0F), \TCFD)
                Store (And (ShiftRight (Arg0, 0x0C), 0x0F), \TCTD)
                ATMC ()
                Return (0x01)
            }

            Return (0x00)
        }

        Method (MHGT, 1, NotSerialized)
        {
            If (LAnd (\WNTF, \TATC))
            {
                Store (0x01000000, Local0)
                If (\FTPS)
                {
                    Or (Local0, 0x02000000, Local0)
                }

                Add (Local0, ShiftLeft (\TSFT, 0x10), Local0)
                Add (Local0, ShiftLeft (\TSTT, 0x14), Local0)
                Store (And (Arg0, 0xFF), Local1)
                If (LNot (ATMV (Local1)))
                {
                    Or (Local0, 0xFFFF, Local0)
                    Return (Local0)
                }

                Store (And (Arg0, 0x0F), Local1)
                If (LEqual (Local1, 0x00))
                {
                    Add (Local0, \TIF0, Local0)
                }
                Else
                {
                    If (LEqual (Local1, 0x01))
                    {
                        Add (Local0, \TIF1, Local0)
                    }
                    Else
                    {
                        If (LEqual (Local1, 0x02))
                        {
                            Add (Local0, \TIF2, Local0)
                        }
                        Else
                        {
                            Add (Local0, 0xFF, Local0)
                        }
                    }
                }

                Store (And (ShiftRight (Arg0, 0x04), 0x0F), Local1)
                If (LEqual (Local1, 0x00))
                {
                    Add (Local0, ShiftLeft (\TIT0, 0x08), Local0)
                }
                Else
                {
                    If (LEqual (Local1, 0x01))
                    {
                        Add (Local0, ShiftLeft (\TIT1, 0x08), Local0)
                    }
                    Else
                    {
                        If (LEqual (Local1, 0x02))
                        {
                            Add (Local0, ShiftLeft (\TIT2, 0x08), Local0)
                        }
                        Else
                        {
                            Add (Local0, ShiftLeft (0xFF, 0x08), Local0)
                        }
                    }
                }

                Return (Local0)
            }

            Return (0x00)
        }

        Method (ATMV, 1, NotSerialized)
        {
            Store (And (Arg0, 0x0F), Local1)
            Store (\TNFT, Local0)
            If (LGreaterEqual (Local1, Local0))
            {
                Return (0x00)
            }

            Store (And (ShiftRight (Arg0, 0x04), 0x0F), Local2)
            Store (\TNTT, Local0)
            If (LGreaterEqual (Local2, Local0))
            {
                Return (0x00)
            }

            If (\TATL)
            {
                If (XOr (Local1, Local2))
                {
                    Return (0x00)
                }
            }

            Return (0x01)
        }

        Method (MHST, 0, NotSerialized)
        {
            Store (\_SB.PCI0.LPC.EC.HSPD, Local0)
            Return (Local0)
        }

        Method (MHTT, 0, NotSerialized)
        {
            Acquire (BFWM, 0xFFFF)
            \GCTP ()
            CreateByteField (\BFWB, 0x03, TMP3)
            CreateByteField (\BFWB, 0x0B, TMPB)
            If (\VIGD)
            {
                Store (0x00, Local0)
            }
            Else
            {
                Store (TMP3, Local0)
                ShiftLeft (Local0, 0x08, Local0)
            }

            Or (Local0, TMPB, Local0)
            ShiftLeft (Local0, 0x08, Local0)
            Or (Local0, \_SB.PCI0.LPC.EC.TMP0, Local0)
            Release (BFWM)
            Return (Local0)
        }

        Method (MHBT, 0, NotSerialized)
        {
            Name (ABUF, Buffer (0x10) {})
            ATMS (0x00)
            Store (\ATMB, ABUF)
            Return (ABUF)
        }

        Method (MHFT, 1, NotSerialized)
        {
            FSCT (Arg0)
        }

        Method (MHCT, 1, NotSerialized)
        {
            Store (0x00, Local0)
            If (\SPEN)
            {
                Store (\LWST, Local0)
                Increment (Local0)
                ShiftLeft (Local0, 0x08, Local0)
            }

            Store (0x08, Local1)
            ShiftLeft (Local1, 0x08, Local1)
            If (LEqual (Arg0, 0xFFFFFFFF))
            {
                Or (Local1, \TPCR, Local1)
                If (\SPEN)
                {
                    Or (Local0, \PPCR, Local0)
                    If (LNot (LAnd (\PPMF, 0x02000000)))
                    {
                        Or (Local1, 0x80, Local1)
                    }

                    If (LNot (LAnd (\PPMF, 0x08000000)))
                    {
                        Or (Local1, 0x40, Local1)
                    }
                }
                Else
                {
                    Or (Local1, 0xC0, Local1)
                }
            }
            Else
            {
                If (LAnd (\OSPX, \SPEN))
                {
                    And (Arg0, 0x00FF0000, Local2)
                    ShiftRight (Local2, 0x10, Local2)
                    Or (Local0, Local2, Local0)
                    If (XOr (Local2, \PPCR))
                    {
                        Store (Local2, \PPCA)
                        \PNTF (0x80)
                    }
                }

                If (\WVIS)
                {
                    And (Arg0, 0x1F, Local2)
                    Or (Local1, Local2, Local1)
                    If (XOr (Local2, \TPCR))
                    {
                        Store (Local2, \TPCA)
                        \PNTF (0x82)
                    }
                }
            }

            ShiftLeft (Local0, 0x10, Local0)
            Or (Local0, Local1, Local0)
            Return (Local0)
        }
    }

    Scope (\_SB.PCI0.LPC.EC)
    {
        Method (ATMC, 0, NotSerialized)
        {
            If (LAnd (\WNTF, \TATC))
            {
                If (HPAC)
                {
                    Store (\TCFA, Local0)
                    Store (\TCTA, Local1)
                    Store (Or (ShiftLeft (Local1, 0x04), Local0), Local2)
                    XOr (Local2, ATMX, Local3)
                    Store (Local2, ATMX)
                    If (LEqual (\TCTA, 0x00))
                    {
                        Store (\TCR0, \TCRT)
                        Store (\TPS0, \TPSV)
                    }
                    Else
                    {
                        If (LEqual (\TCTA, 0x01))
                        {
                            Store (\TCR1, \TCRT)
                            Store (\TPS1, \TPSV)
                        }
                        Else
                        {
                        }
                    }
                }
                Else
                {
                    Store (\TCFD, Local0)
                    Store (\TCTD, Local1)
                    Store (Or (ShiftLeft (Local1, 0x04), Local0), Local2)
                    XOr (Local2, ATMX, Local3)
                    Store (Local2, ATMX)
                    If (LEqual (\TCTD, 0x00))
                    {
                        Store (\TCR0, \TCRT)
                        Store (\TPS0, \TPSV)
                    }
                    Else
                    {
                        If (LEqual (\TCTD, 0x01))
                        {
                            Store (\TCR1, \TCRT)
                            Store (\TPS1, \TPSV)
                        }
                        Else
                        {
                        }
                    }
                }

                If (And (\PPMF, 0x02000000))
                {
                    Store (\FTPS, Local4)
                    If (Local2)
                    {
                        Store (0x00, \FTPS)
                    }
                    Else
                    {
                        Store (0x01, \FTPS)
                    }

                    If (XOr (\FTPS, Local4))
                    {
                        If (\OSPX)
                        {
                            \PNTF (0x80)
                        }
                    }
                }

                If (Local3)
                {
                    If (\_SB.PCI0.LPC.EC.HKEY.DHKC)
                    {
                        \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x6030)
                    }
                }

                Notify (\_TZ.THM0, 0x81)
            }
        }
    }

    Scope (\_TZ)
    {
        ThermalZone (THM0)
        {
            Method (_CRT, 0, NotSerialized)
            {
                Return (\TCRT)
            }

            Method (_PSV, 0, NotSerialized)
            {
                Return (\TPSV)
            }

            Method (_TC1, 0, NotSerialized)
            {
                Return (\TTC1)
            }

            Method (_TC2, 0, NotSerialized)
            {
                Return (\TTC2)
            }

            Method (_TSP, 0, NotSerialized)
            {
                Return (\TTSP)
            }

            Method (_PSL, 0, NotSerialized)
            {
                If (And (\PPMF, 0x01000000))
                {
                    If (LEqual (\PNHM, 0x000106E0))
                    {
                        Return (Package (0x08)
                        {
                            \_PR.CPU0, 
                            \_PR.CPU1, 
                            \_PR.CPU2, 
                            \_PR.CPU3, 
                            \_PR.CPU4, 
                            \_PR.CPU5, 
                            \_PR.CPU6, 
                            \_PR.CPU7
                        })
                    }
                    Else
                    {
                        Return (Package (0x04)
                        {
                            \_PR.CPU0, 
                            \_PR.CPU1, 
                            \_PR.CPU2, 
                            \_PR.CPU3
                        })
                    }
                }

                Return (Package (0x01)
                {
                    \_PR.CPU0
                })
            }

            Method (_TMP, 0, NotSerialized)
            {
                If (\H8DR)
                {
                    Store (\_SB.PCI0.LPC.EC.TMP0, Local0)
                    Store (\_SB.PCI0.LPC.EC.TSL2, Local1)
                    Store (\_SB.PCI0.LPC.EC.TSL3, Local2)
                }
                Else
                {
                    Store (\RBEC (0x78), Local0)
                    Store (And (\RBEC (0x8A), 0x7F), Local1)
                    Store (And (\RBEC (0x8B), 0x7F), Local2)
                }

                If (LEqual (Local0, 0x80))
                {
                    Store (0x30, Local0)
                }

                If (Local2)
                {
                    Return (C2K (0x80))
                }

                If (LNot (\_SB.PCI0.LPC.EC.HKEY.DHKC))
                {
                    If (Local1)
                    {
                        Return (C2K (0x80))
                    }
                }

                Return (C2K (Local0))
            }
        }

        Method (C2K, 1, NotSerialized)
        {
            Add (Multiply (Arg0, 0x0A), 0x0AAC, Local0)
            If (LLessEqual (Local0, 0x0AAC))
            {
                Store (0x0BB8, Local0)
            }

            If (LGreater (Local0, 0x0FAC))
            {
                Store (0x0BB8, Local0)
            }

            Return (Local0)
        }
    }

    Scope (\_SB.PCI0.LPC.EC)
    {
        Method (_Q40, 0, NotSerialized)
        {
            Notify (\_TZ.THM0, 0x80)
            If (\H8DR)
            {
                Store (\_SB.PCI0.LPC.EC.TSL2, Local1)
            }
            Else
            {
                Store (And (\RBEC (0x8A), 0x7F), Local1)
            }

            If (\_SB.PCI0.LPC.EC.HKEY.DHKC)
            {
                If (Local1)
                {
                    \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x6022)
                }
            }

            If (VIGD)
            {
                Noop
            }
            Else
            {
                \VTHR ()
            }

            If (And (\PPMF, 0x01))
            {
                If (\OSPX)
                {
                    \PNTF (0x80)
                }
                Else
                {
                    Store (And (\_SB.PCI0.LPC.EC.TSL0, 0x77), Local2)
                    If (Local2)
                    {
                        \STEP (0x09)
                    }
                    Else
                    {
                        \STEP (0x0A)
                    }
                }
            }
        }
    }

    Name (GPIC, 0x00)
    Method (_PIC, 1, NotSerialized)
    {
        Store (Arg0, \GPIC)
    }

    OperationRegion (SMI0, SystemIO, 0xB2, 0x01)
    Field (SMI0, ByteAcc, NoLock, Preserve)
    {
        APMC,   8
    }

    Field (MNVS, AnyAcc, NoLock, Preserve)
    {
                Offset (0xFC0), 
        CMD,    8, 
        ERR,    32, 
        PAR0,   32, 
        PAR1,   32, 
        PAR2,   32, 
        PAR3,   32
    }

    Mutex (MSMI, 0x07)
    Method (SMI, 5, NotSerialized)
    {
        Acquire (MSMI, 0xFFFF)
        Store (Arg0, CMD)
        Store (Arg1, PAR0)
        Store (Arg2, PAR1)
        Store (Arg3, PAR2)
        Store (Arg4, PAR3)
        Store (0xF5, APMC)
        While (LEqual (ERR, 0x01))
        {
            Sleep (0x64)
            Store (0xF5, APMC)
        }

        Store (PAR0, Local0)
        Release (MSMI)
        Return (Local0)
    }

    Method (RPCI, 1, NotSerialized)
    {
        Return (SMI (0x00, 0x00, Arg0, 0x00, 0x00))
    }

    Method (WPCI, 2, NotSerialized)
    {
        SMI (0x00, 0x01, Arg0, Arg1, 0x00)
    }

    Method (MPCI, 3, NotSerialized)
    {
        SMI (0x00, 0x02, Arg0, Arg1, Arg2)
    }

    Method (RBEC, 1, NotSerialized)
    {
        Return (SMI (0x00, 0x03, Arg0, 0x00, 0x00))
    }

    Method (WBEC, 2, NotSerialized)
    {
        SMI (0x00, 0x04, Arg0, Arg1, 0x00)
    }

    Method (MBEC, 3, NotSerialized)
    {
        SMI (0x00, 0x05, Arg0, Arg1, Arg2)
    }

    Method (RISA, 1, NotSerialized)
    {
        Return (SMI (0x00, 0x06, Arg0, 0x00, 0x00))
    }

    Method (WISA, 2, NotSerialized)
    {
        SMI (0x00, 0x07, Arg0, Arg1, 0x00)
    }

    Method (MISA, 3, NotSerialized)
    {
        SMI (0x00, 0x08, Arg0, Arg1, Arg2)
    }

    Method (VEXP, 0, NotSerialized)
    {
        SMI (0x01, 0x00, 0x00, 0x00, 0x00)
    }

    Method (VUPS, 1, NotSerialized)
    {
        SMI (0x01, 0x01, Arg0, 0x00, 0x00)
    }

    Method (VSDS, 2, NotSerialized)
    {
        SMI (0x01, 0x02, Arg0, Arg1, 0x00)
    }

    Method (VDDC, 0, NotSerialized)
    {
        SMI (0x01, 0x03, 0x00, 0x00, 0x00)
    }

    Method (VVPD, 1, NotSerialized)
    {
        SMI (0x01, 0x04, Arg0, 0x00, 0x00)
    }

    Method (VNRS, 1, NotSerialized)
    {
        SMI (0x01, 0x05, Arg0, 0x00, 0x00)
    }

    Method (GLPW, 0, NotSerialized)
    {
        Return (SMI (0x01, 0x06, 0x00, 0x00, 0x00))
    }

    Method (VSLD, 1, NotSerialized)
    {
        SMI (0x01, 0x07, Arg0, 0x00, 0x00)
    }

    Method (VEVT, 1, NotSerialized)
    {
        Return (SMI (0x01, 0x08, Arg0, 0x00, 0x00))
    }

    Method (VTHR, 0, NotSerialized)
    {
        Return (SMI (0x01, 0x09, 0x00, 0x00, 0x00))
    }

    Method (VBRC, 1, NotSerialized)
    {
        SMI (0x01, 0x0A, Arg0, 0x00, 0x00)
    }

    Method (VBRG, 0, NotSerialized)
    {
        Return (SMI (0x01, 0x0E, 0x00, 0x00, 0x00))
    }

    Method (VBTD, 0, NotSerialized)
    {
        Return (SMI (0x01, 0x0F, 0x00, 0x00, 0x00))
    }

    Method (VHYB, 2, NotSerialized)
    {
        Return (SMI (0x01, 0x10, Arg0, Arg1, 0x00))
    }

    Method (VDYN, 2, NotSerialized)
    {
        Return (SMI (0x01, 0x11, Arg0, Arg1, 0x00))
    }

    Method (UCMS, 1, NotSerialized)
    {
        Return (SMI (0x02, Arg0, 0x00, 0x00, 0x00))
    }

    Method (BHDP, 2, NotSerialized)
    {
        Return (SMI (0x03, 0x00, Arg0, Arg1, 0x00))
    }

    Method (STEP, 1, NotSerialized)
    {
        SMI (0x04, Arg0, 0x00, 0x00, 0x00)
    }

    Method (TRAP, 0, NotSerialized)
    {
        SMI (0x05, 0x00, 0x00, 0x00, 0x00)
    }

    Method (CBRI, 0, NotSerialized)
    {
        SMI (0x05, 0x01, 0x00, 0x00, 0x00)
    }

    Method (BCHK, 0, NotSerialized)
    {
        Return (SMI (0x05, 0x04, 0x00, 0x00, 0x00))
    }

    Method (BYRS, 0, NotSerialized)
    {
        SMI (0x05, 0x05, 0x00, 0x00, 0x00)
    }

    Method (BLTH, 1, NotSerialized)
    {
        Return (SMI (0x06, Arg0, 0x00, 0x00, 0x00))
    }

    Method (FISP, 0, NotSerialized)
    {
        SMI (0x07, 0x00, 0x00, 0x00, 0x00)
    }

    Method (ATCC, 1, NotSerialized)
    {
        SMI (0x08, Arg0, 0x00, 0x00, 0x00)
    }

    Method (WGSV, 1, NotSerialized)
    {
        Return (SMI (0x09, Arg0, 0x00, 0x00, 0x00))
    }

    Method (ATMS, 1, NotSerialized)
    {
        Return (SMI (0x0A, 0x03, 0x00, 0x00, 0x00))
    }

    Method (FSCT, 1, NotSerialized)
    {
        Return (SMI (0x0A, 0x04, Arg0, 0x00, 0x00))
    }

    Method (SWTT, 1, NotSerialized)
    {
        If (SMI (0x0A, 0x05, Arg0, 0x00, 0x00))
        {
            If (\_SB.PCI0.LPC.EC.HKEY.DHKC)
            {
                \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x6030)
            }
        }
    }

    Method (GCTP, 0, NotSerialized)
    {
        SMI (0x0A, 0x06, 0x00, 0x00, 0x00)
    }

    Method (PPMS, 1, NotSerialized)
    {
        Return (SMI (0x0B, Arg0, 0x00, 0x00, 0x00))
    }

    Method (TRAZ, 2, NotSerialized)
    {
        Store (Arg1, SMIF)
        If (LEqual (Arg0, 0x01))
        {
            Store (0x00, \_SB.PCI0.LPC.TRPI)
        }

        Return (SMIF)
    }

    Method (TPHY, 1, NotSerialized)
    {
        SMI (0x0C, Arg0, 0x00, 0x00, 0x00)
    }

    Method (CSUM, 1, NotSerialized)
    {
        Return (SMI (0x0E, Arg0, 0x00, 0x00, 0x00))
    }

    Method (NVSS, 1, NotSerialized)
    {
        Return (SMI (0x0F, Arg0, 0x00, 0x00, 0x00))
    }

    Method (WMIS, 2, NotSerialized)
    {
        Return (SMI (0x10, Arg0, Arg1, 0x00, 0x00))
    }

    Method (AWON, 1, NotSerialized)
    {
        Return (SMI (0x12, Arg0, 0x00, 0x00, 0x00))
    }

    Method (PMON, 2, NotSerialized)
    {
        Store (SizeOf (Arg0), Local0)
        Name (TSTR, Buffer (Local0) {})
        Store (Arg0, TSTR)
        Store (TSTR, \DBGS)
        SMI (0x11, Arg1, 0x00, 0x00, 0x00)
    }

    Method (UAWS, 1, NotSerialized)
    {
        Return (SMI (0x13, Arg0, 0x00, 0x00, 0x00))
    }

    Method (BFWC, 1, NotSerialized)
    {
        Return (SMI (0x14, 0x00, Arg0, 0x00, 0x00))
    }

    Method (BFWP, 0, NotSerialized)
    {
        Return (SMI (0x14, 0x01, 0x00, 0x00, 0x00))
    }

    Method (BFWL, 0, NotSerialized)
    {
        SMI (0x14, 0x02, 0x00, 0x00, 0x00)
    }

    Method (BFWG, 1, NotSerialized)
    {
        SMI (0x14, 0x03, Arg0, 0x00, 0x00)
    }

    Method (BDMC, 1, NotSerialized)
    {
        SMI (0x14, 0x04, Arg0, 0x00, 0x00)
    }

    Method (DPIO, 2, NotSerialized)
    {
        If (LNot (Arg0))
        {
            Return (0x00)
        }

        If (LGreater (Arg0, 0xF0))
        {
            Return (0x00)
        }

        If (LGreater (Arg0, 0xB4))
        {
            If (Arg1)
            {
                Return (0x02)
            }
            Else
            {
                Return (0x01)
            }
        }

        If (LGreater (Arg0, 0x78))
        {
            Return (0x03)
        }

        Return (0x04)
    }

    Method (DUDM, 2, NotSerialized)
    {
        If (LNot (Arg1))
        {
            Return (0xFF)
        }

        If (LGreater (Arg0, 0x5A))
        {
            Return (0x00)
        }

        If (LGreater (Arg0, 0x3C))
        {
            Return (0x01)
        }

        If (LGreater (Arg0, 0x2D))
        {
            Return (0x02)
        }

        If (LGreater (Arg0, 0x1E))
        {
            Return (0x03)
        }

        If (LGreater (Arg0, 0x14))
        {
            Return (0x04)
        }

        Return (0x05)
    }

    Method (DMDM, 2, NotSerialized)
    {
        If (Arg1)
        {
            Return (0x00)
        }

        If (LNot (Arg0))
        {
            Return (0x00)
        }

        If (LGreater (Arg0, 0x96))
        {
            Return (0x01)
        }

        If (LGreater (Arg0, 0x78))
        {
            Return (0x02)
        }

        Return (0x03)
    }

    Method (UUDM, 2, NotSerialized)
    {
        If (LNot (And (Arg0, 0x04)))
        {
            Return (0x00)
        }

        If (And (Arg1, 0x20))
        {
            Return (0x14)
        }

        If (And (Arg1, 0x10))
        {
            Return (0x1E)
        }

        If (And (Arg1, 0x08))
        {
            Return (0x2D)
        }

        If (And (Arg1, 0x04))
        {
            Return (0x3C)
        }

        If (And (Arg1, 0x02))
        {
            Return (0x5A)
        }

        If (And (Arg1, 0x01))
        {
            Return (0x78)
        }

        Return (0x00)
    }

    Method (UMDM, 4, NotSerialized)
    {
        If (LNot (And (Arg0, 0x02)))
        {
            Return (0x00)
        }

        If (And (Arg1, 0x04))
        {
            Return (Arg3)
        }

        If (And (Arg1, 0x02))
        {
            If (LLessEqual (Arg3, 0x78))
            {
                Return (0xB4)
            }
            Else
            {
                Return (Arg3)
            }
        }

        If (And (Arg2, 0x04))
        {
            If (LLessEqual (Arg3, 0xB4))
            {
                Return (0xF0)
            }
            Else
            {
                Return (Arg3)
            }
        }

        Return (0x00)
    }

    Method (UPIO, 4, NotSerialized)
    {
        If (LNot (And (Arg0, 0x02)))
        {
            If (LEqual (Arg2, 0x02))
            {
                Return (0xF0)
            }
            Else
            {
                Return (0x0384)
            }
        }

        If (And (Arg1, 0x02))
        {
            Return (Arg3)
        }

        If (And (Arg1, 0x01))
        {
            If (LLessEqual (Arg3, 0x78))
            {
                Return (0xB4)
            }
            Else
            {
                Return (Arg3)
            }
        }

        If (LEqual (Arg2, 0x02))
        {
            Return (0xF0)
        }
        Else
        {
            Return (0x0384)
        }
    }

    Method (FDMA, 2, NotSerialized)
    {
        If (LNotEqual (Arg1, 0xFF))
        {
            Return (Or (Arg1, 0x40))
        }

        If (LGreaterEqual (Arg0, 0x03))
        {
            Return (Or (Subtract (Arg0, 0x02), 0x20))
        }

        If (Arg0)
        {
            Return (0x12)
        }

        Return (0x00)
    }

    Method (FPIO, 1, NotSerialized)
    {
        If (LGreaterEqual (Arg0, 0x03))
        {
            Return (Or (Arg0, 0x08))
        }

        If (LEqual (Arg0, 0x01))
        {
            Return (0x01)
        }

        Return (0x00)
    }

    Method (SCMP, 2, NotSerialized)
    {
        Store (SizeOf (Arg0), Local0)
        If (LNotEqual (Local0, SizeOf (Arg1)))
        {
            Return (One)
        }

        Increment (Local0)
        Name (STR1, Buffer (Local0) {})
        Name (STR2, Buffer (Local0) {})
        Store (Arg0, STR1)
        Store (Arg1, STR2)
        Store (Zero, Local1)
        While (LLess (Local1, Local0))
        {
            Store (DerefOf (Index (STR1, Local1)), Local2)
            Store (DerefOf (Index (STR2, Local1)), Local3)
            If (LNotEqual (Local2, Local3))
            {
                Return (One)
            }

            Increment (Local1)
        }

        Return (Zero)
    }

    Name (SPS, 0x00)
    Name (OSIF, 0x00)
    Name (WNTF, 0x00)
    Name (WXPF, 0x00)
    Name (WVIS, 0x00)
    Name (WIN7, 0x00)
    Name (WSPV, 0x00)
    Name (LNUX, 0x00)
    Name (H8DR, 0x00)
    Name (MEMX, 0x00)
    Name (ACST, 0x00)
    Name (FNID, 0x00)
    Name (RRBF, 0x00)
    Name (NBCF, 0x00)
}

