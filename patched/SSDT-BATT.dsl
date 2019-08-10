// Firmware Error (ACPI): Failure creating [\_SB.PCI0.LPCB.EC.VL10], AE_ALREADY_EXISTS (20180427/dsfield-777)
/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of iASLiZfxWN.aml, Fri Jul 19 10:57:21 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00001040 (4160)
 *     Revision         0x02
 *     Checksum         0xB9
 *     OEM ID           "HACK"
 *     OEM Table ID     "BATT"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "HACK", "BATT", 0x00000000)
{
    External (_SB_.PCI0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.BAT0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.BAT0._BIF, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.BAT0.BIXT, PkgObj)    // (from opcode)
    External (_SB_.PCI0.BAT0.LFCC, IntObj)    // (from opcode)
    External (_SB_.PCI0.BAT0.NBIX, PkgObj)    // (from opcode)
    External (_SB_.PCI0.BAT0.PBIF, PkgObj)    // (from opcode)
    External (_SB_.PCI0.BAT0.PBST, PkgObj)    // (from opcode)
    External (_SB_.PCI0.BAT0.PUNT, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.ACAP, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.EC__.ADD2, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.ADDR, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.BATP, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.EC__.BCN2, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.BCNT, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.CMD2, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.CMDB, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.DA20, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.DA21, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.DAT0, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.DAT1, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.EB0S, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.ECAV, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.EC__.GBTT, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.EC__.MUEC, MutexObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.PRT2, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.PRTC, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.RCBT, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.RDBL, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.RDBT, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.RDQK, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.RDWD, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.SBBY, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.SDBT, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.SST2, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.SSTS, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.SWTC, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.EC__.WRBL, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.WRBT, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.WRQK, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.WRWD, IntObj)    // (from opcode)
    External (BCN2, IntObj)    // (from opcode)
    External (BCNT, IntObj)    // (from opcode)
    External (BIXT, IntObj)    // (from opcode)
    External (BLLO, IntObj)    // (from opcode)
    External (BSLF, IntObj)    // (from opcode)
    External (CHGS, MethodObj)    // 1 Arguments (from opcode)
    External (DA20, IntObj)    // (from opcode)
    External (DA21, IntObj)    // (from opcode)
    External (DAT0, IntObj)    // (from opcode)
    External (DAT1, IntObj)    // (from opcode)
    External (LFCC, IntObj)    // (from opcode)
    External (MBLF, IntObj)    // (from opcode)
    External (NBIX, IntObj)    // (from opcode)
    External (PRT2, IntObj)    // (from opcode)
    External (PRTC, IntObj)    // (from opcode)
    External (PUNT, IntObj)    // (from opcode)
    External (SBBY, IntObj)    // (from opcode)
    External (SST2, IntObj)    // (from opcode)
    External (SSTS, IntObj)    // (from opcode)

    Scope (\_SB.PCI0.LPCB.EC)
    {
        OperationRegion (ERM2, EmbeddedControl, Zero, 0xFF)
        Field (ERM2, ByteAcc, Lock, Preserve)
        {
            Offset (0xC4), 
            B030,   8, 
            B031,   8, 
            Offset (0xF4), 
            B0N0,   8, 
            B0N1,   8, 
            Offset (0xFC), 
            B1N0,   8, 
            B1N1,   8
        }

        OperationRegion (RMB1, EmbeddedControl, 0x18, 0x28)
        Field (RMB1, ByteAcc, NoLock, Preserve)
        {
            Offset (0x04), 
            BDAX,   256
        }

        OperationRegion (RMB2, EmbeddedControl, 0x40, 0x28)
        Field (RMB2, ByteAcc, NoLock, Preserve)
        {
            Offset (0x04), 
            BDAY,   256
        }

        Field (RMB1, ByteAcc, NoLock, Preserve)
        {
            Offset (0x04), 
            T2B0,   8, 
            T2B1,   8
        }

        OperationRegion (RMB0, SystemIO, 0x025A, 0x02)
        Field (RMB0, ByteAcc, Lock, Preserve)
        {
            XRAI,   8, 
            XRAD,   8
        }

        IndexField (XRAI, XRAD, ByteAcc, NoLock, Preserve)
        {
            Offset (0xA0), 
            VL00,   8, 
            VL01,   8, 
            RC00,   8, 
            RC01,   8, 
            FC00,   8, 
            FC01,   8, 
            MD00,   8, 
            MD01,   8, 
            ST00,   8, 
            ST01,   8, 
            CC00,   8, 
            CC01,   8, 
            DC00,   8, 
            DC01,   8, 
            DV00,   8, 
            DV01,   8, 
            VL10,   8, 
            VL11,   8, 
            RC10,   8, 
            RC11,   8, 
            FC10,   8, 
            FC11,   8, 
            MD10,   8, 
            MD11,   8, 
            ST10,   8, 
            ST11,   8, 
            CC10,   8, 
            CC11,   8, 
            DC10,   8, 
            DC11,   8, 
            DV10,   8, 
            DV11,   8
        }
    }

    Scope (\_SB.PCI0)
    {
        Scope (BAT0)
        {
            Method (FBST, 4, NotSerialized)
            {
                And (Arg1, 0xFFFF, Local1)
                Store (Zero, Local0)
                If (^^LPCB.EC.ACAP ())
                {
                    Store (One, Local0)
                }

                If (Local0)
                {
                    If (CHGS (Zero))
                    {
                        Store (0x02, Local0)
                    }
                    Else
                    {
                        Store (Zero, Local0)
                    }
                }
                Else
                {
                    Store (One, Local0)
                }

                If (BLLO)
                {
                    Store (0x04, Local2)
                    Or (Local0, Local2, Local0)
                }

                If (And (^^LPCB.EC.EB0S, 0x08))
                {
                    Store (0x04, Local2)
                    Or (Local0, Local2, Local0)
                }

                If (LGreaterEqual (Local1, 0x8000))
                {
                    Subtract (0xFFFF, Local1, Local1)
                }

                Store (Arg2, Local2)
                If (LEqual (PUNT, Zero))
                {
                    Multiply (Local1, B1B2 (^^LPCB.EC.DV00, ^^LPCB.EC.DV01), Local1)
                    Multiply (Local2, 0x0A, Local2)
                }

                And (Local0, 0x02, Local3)
                If (LNot (Local3))
                {
                    Subtract (LFCC, Local2, Local3)
                    Divide (LFCC, 0xC8, Local4, Local5)
                    If (LLess (Local3, Local5))
                    {
                        Store (LFCC, Local2)
                    }
                }
                Else
                {
                    Divide (LFCC, 0xC8, Local4, Local5)
                    Subtract (LFCC, Local5, Local4)
                    If (LGreater (Local2, Local4))
                    {
                        Store (Local4, Local2)
                    }
                }

                If (LNot (^^LPCB.EC.ACAP ()))
                {
                    Divide (Local2, MBLF, Local3, Local4)
                    If (LLess (Local1, Local4))
                    {
                        Store (Local4, Local1)
                    }
                }

                Store (Local0, Index (PBST, Zero))
                Store (Local1, Index (PBST, One))
                Store (Local2, Index (PBST, 0x02))
                Store (Arg3, Index (PBST, 0x03))
            }

            Method (CBST, 0, NotSerialized)
            {
                If (PUNT)
                {
                    Store (B1B2 (^^LPCB.EC.DV00, ^^LPCB.EC.DV01), Index (PBST, 0x03))
                    Store (DerefOf (Index (PBST, 0x03)), Local0)
                    Multiply (DerefOf (Index (PBST, One)), Local0, Index (PBST, One))
                    Divide (DerefOf (Index (PBST, One)), 0x03E8, Local1, Index (PBST, One))
                    Multiply (DerefOf (Index (PBST, 0x02)), Local0, Index (PBST, 0x02))
                    Divide (DerefOf (Index (PBST, 0x02)), 0x03E8, Local1, Index (PBST, 0x02))
                }
            }

            Method (_BIX, 0, NotSerialized)  // _BIX: Battery Information Extended
            {
                If (LNot (^^LPCB.EC.BATP (Zero)))
                {
                    Return (NBIX)
                }

                If (LEqual (^^LPCB.EC.GBTT (Zero), 0xFF))
                {
                    Return (NBIX)
                }

                _BIF ()
                Store (DerefOf (Index (PBIF, Zero)), Index (BIXT, One))
                Store (DerefOf (Index (PBIF, One)), Index (BIXT, 0x02))
                Store (DerefOf (Index (PBIF, 0x02)), Index (BIXT, 0x03))
                Store (DerefOf (Index (PBIF, 0x03)), Index (BIXT, 0x04))
                Store (DerefOf (Index (PBIF, 0x04)), Index (BIXT, 0x05))
                Store (DerefOf (Index (PBIF, 0x05)), Index (BIXT, 0x06))
                Store (DerefOf (Index (PBIF, 0x06)), Index (BIXT, 0x07))
                Store (DerefOf (Index (PBIF, 0x07)), Index (BIXT, 0x0E))
                Store (DerefOf (Index (PBIF, 0x08)), Index (BIXT, 0x0F))
                Store (DerefOf (Index (PBIF, 0x09)), Index (BIXT, 0x10))
                Store (DerefOf (Index (PBIF, 0x0A)), Index (BIXT, 0x11))
                Store (DerefOf (Index (PBIF, 0x0B)), Index (BIXT, 0x12))
                Store (DerefOf (Index (PBIF, 0x0C)), Index (BIXT, 0x13))
                If (LEqual (DerefOf (Index (BIXT, One)), One))
                {
                    Store (Zero, Index (BIXT, One))
                    Store (DerefOf (Index (BIXT, 0x05)), Local0)
                    Multiply (DerefOf (Index (BIXT, 0x02)), Local0, Index (BIXT, 0x02))
                    Multiply (DerefOf (Index (BIXT, 0x03)), Local0, Index (BIXT, 0x03))
                    Multiply (DerefOf (Index (BIXT, 0x06)), Local0, Index (BIXT, 0x06))
                    Multiply (DerefOf (Index (BIXT, 0x07)), Local0, Index (BIXT, 0x07))
                    Multiply (DerefOf (Index (BIXT, 0x0E)), Local0, Index (BIXT, 0x0E))
                    Multiply (DerefOf (Index (BIXT, 0x0F)), Local0, Index (BIXT, 0x0F))
                    Divide (DerefOf (Index (BIXT, 0x02)), 0x03E8, Local0, Index (BIXT, 0x02))
                    Divide (DerefOf (Index (BIXT, 0x03)), 0x03E8, Local0, Index (BIXT, 0x03))
                    Divide (DerefOf (Index (BIXT, 0x06)), 0x03E8, Local0, Index (BIXT, 0x06))
                    Divide (DerefOf (Index (BIXT, 0x07)), 0x03E8, Local0, Index (BIXT, 0x07))
                    Divide (DerefOf (Index (BIXT, 0x0E)), 0x03E8, Local0, Index (BIXT, 0x0E))
                    Divide (DerefOf (Index (BIXT, 0x0F)), 0x03E8, Local0, Index (BIXT, 0x0F))
                }

                Store (B1B2 (^^LPCB.EC.B030, ^^LPCB.EC.B031), Index (BIXT, 0x08))
                Store (0x0001869F, Index (BIXT, 0x09))
                Return (BIXT)
            }
        }
    }

    Scope (_SB.PCI0.LPCB.EC)
    {
        Method (BIF0, 0, NotSerialized)
        {
            If (ECAV ())
            {
                If (BSLF)
                {
                    Store (B1B2 (MD10, MD11), Local0)
                }
                Else
                {
                    Store (B1B2 (MD00, MD01), Local0)
                }

                If (LNotEqual (Local0, 0xFFFF))
                {
                    ShiftRight (Local0, 0x0F, Local1)
                    And (Local1, One, Local1)
                    XOr (Local1, One, Local0)
                }
            }
            Else
            {
                Store (Ones, Local0)
            }

            Return (Local0)
        }

        Method (BIF1, 0, NotSerialized)
        {
            If (ECAV ())
            {
                If (BSLF)
                {
                    Store (B1B2(DC10,DC11), Local0)
                }
                Else
                {
                    Store (B1B2(DC00,DC01), Local0)
                }

                And (Local0, 0xFFFF, Local0)
            }
            Else
            {
                Store (Ones, Local0)
            }

            Return (Local0)
        }

        Method (BIF2, 0, NotSerialized)
        {
            If (ECAV ())
            {
                If (BSLF)
                {
                    Store (B1B2(FC10,FC11), Local0)
                }
                Else
                {
                    Store (B1B2(FC00,FC01), Local0)
                }

                And (Local0, 0xFFFF, Local0)
            }
            Else
            {
                Store (Ones, Local0)
            }

            Return (Local0)
        }

        Method (BIF3, 0, NotSerialized)
        {
            If (ECAV ())
            {
                If (BSLF)
                {
                    Store (B1B2(MD10,MD11), Local0)
                }
                Else
                {
                    Store (B1B2(MD00,MD01), Local0)
                }

                If (LNotEqual (Local0, 0xFFFF))
                {
                    ShiftRight (Local0, 0x09, Local0)
                    And (Local0, One, Local0)
                    XOr (Local0, One, Local0)
                }
            }
            Else
            {
                Store (Ones, Local0)
            }

            Return (Local0)
        }

        Method (BIF4, 0, NotSerialized)
        {
            If (ECAV ())
            {
                If (BSLF)
                {
                    Store (B1B2(DV10,DV11), Local0)
                }
                Else
                {
                    Store (B1B2(DV00,DV01), Local0)
                }
            }
            Else
            {
                Store (Ones, Local0)
            }

            Return (Local0)
        }

        Method (BIFA, 0, NotSerialized)
        {
            If (ECAV ())
            {
                If (BSLF)
                {
                    Store (B1B2 (B1N0, B1N1), Local0)
                }
                Else
                {
                    Store (B1B2 (B0N0, B0N1), Local0)
                }
            }
            Else
            {
                Store (Ones, Local0)
            }

            Return (Local0)
        }
        Method (BSTS, 0, NotSerialized)
        {
            If (BSLF)
            {
                Store (B1B2(ST10,ST11), Local0)
            }
            Else
            {
                Store (B1B2(ST00,ST01), Local0)
            }

            Return (Local0)
        }

        Method (BCRT, 0, NotSerialized)
        {
            If (BSLF)
            {
                Store (B1B2(CC10,CC11), Local0)
            }
            Else
            {
                Store (B1B2(CC00,CC01), Local0)
            }

            Return (Local0)
        }

        Method (BRCP, 0, NotSerialized)
        {
            If (BSLF)
            {
                Store (B1B2(RC10,RC11), Local0)
            }
            Else
            {
                Store (B1B2(RC00,RC01), Local0)
            }

            If (LEqual (Local0, 0xFFFF))
            {
                Store (Ones, Local0)
            }

            Return (Local0)
        }

        Method (BVOT, 0, NotSerialized)
        {
            If (BSLF)
            {
                Store (B1B2(VL10,VL11), Local0)
            }
            Else
            {
                Store (B1B2(VL00,VL01), Local0)
            }

            Return (Local0)
        }

        Method (SMBR, 3, Serialized)
        {
            Store (Package (0x03)
                {
                    0x07, 
                    Zero, 
                    Zero
                }, Local0)
            If (LNot (ECAV ()))
            {
                Return (Local0)
            }

            If (LNotEqual (Arg0, RDBL))
            {
                If (LNotEqual (Arg0, RDWD))
                {
                    If (LNotEqual (Arg0, RDBT))
                    {
                        If (LNotEqual (Arg0, RCBT))
                        {
                            If (LNotEqual (Arg0, RDQK))
                            {
                                Return (Local0)
                            }
                        }
                    }
                }
            }

            Acquire (MUEC, 0xFFFF)
            Store (PRTC, Local1)
            Store (Zero, Local2)
            While (LNotEqual (Local1, Zero))
            {
                Stall (0x0A)
                Increment (Local2)
                If (LGreater (Local2, 0x03E8))
                {
                    Store (SBBY, Index (Local0, Zero))
                    Store (Zero, Local1)
                }
                Else
                {
                    Store (PRTC, Local1)
                }
            }

            If (LLessEqual (Local2, 0x03E8))
            {
                ShiftLeft (Arg1, One, Local3)
                Or (Local3, One, Local3)
                Store (Local3, ADDR)
                If (LNotEqual (Arg0, RDQK))
                {
                    If (LNotEqual (Arg0, RCBT))
                    {
                        Store (Arg2, CMDB)
                    }
                }

                WECB (0x1C, 0x0100, Zero)
                Store (Arg0, PRTC)
                Store (SWTC (Arg0), Index (Local0, Zero))
                If (LEqual (DerefOf (Index (Local0, Zero)), Zero))
                {
                    If (LEqual (Arg0, RDBL))
                    {
                        Store (BCNT, Index (Local0, One))
                        Store (RECB (0x1C, 0x0100), Index (Local0, 0x02))
                    }

                    If (LEqual (Arg0, RDWD))
                    {
                        Store (0x02, Index (Local0, One))
                        Store (B1B2 (T2B0, T2B1), Index (Local0, 0x02))
                    }

                    If (LEqual (Arg0, RDBT))
                    {
                        Store (One, Index (Local0, One))
                        Store (DAT0, Index (Local0, 0x02))
                    }

                    If (LEqual (Arg0, RCBT))
                    {
                        Store (One, Index (Local0, One))
                        Store (DAT0, Index (Local0, 0x02))
                    }
                }
            }

            Release (MUEC)
            Return (Local0)
        }

        Method (ECSB, 7, NotSerialized)
        {
            Store (Package (0x05)
                {
                    0x11, 
                    Zero, 
                    Zero, 
                    Zero, 
                    Buffer (0x20){}
                }, Local1)
            If (LGreater (Arg0, One))
            {
                Return (Local1)
            }

            If (ECAV ())
            {
                Acquire (MUEC, 0xFFFF)
                If (LEqual (Arg0, Zero))
                {
                    Store (PRTC, Local0)
                }
                Else
                {
                    Store (PRT2, Local0)
                }

                Store (Zero, Local2)
                While (LNotEqual (Local0, Zero))
                {
                    Stall (0x0A)
                    Increment (Local2)
                    If (LGreater (Local2, 0x03E8))
                    {
                        Store (SBBY, Index (Local1, Zero))
                        Store (Zero, Local0)
                    }
                    ElseIf (LEqual (Arg0, Zero))
                    {
                        Store (PRTC, Local0)
                    }
                    Else
                    {
                        Store (PRT2, Local0)
                    }
                }

                If (LLessEqual (Local2, 0x03E8))
                {
                    If (LEqual (Arg0, Zero))
                    {
                        Store (Arg2, ADDR)
                        Store (Arg3, CMDB)
                        If (LOr (LEqual (Arg1, 0x0A), LEqual (Arg1, 0x0B)))
                        {
                            Store (DerefOf (Index (Arg6, Zero)), BCNT)
                            WECB (0x1C, 0x0100, DerefOf (Index (Arg6, One)))
                        }
                        Else
                        {
                            Store (Arg4, DAT0)
                            Store (Arg5, DAT1)
                        }

                        Store (Arg1, PRTC)
                    }
                    Else
                    {
                        Store (Arg2, ADD2)
                        Store (Arg3, CMD2)
                        If (LOr (LEqual (Arg1, 0x0A), LEqual (Arg1, 0x0B)))
                        {
                            Store (DerefOf (Index (Arg6, Zero)), BCN2)
                            WECB (0x44, 0x0100, DerefOf (Index (Arg6, One)))
                        }
                        Else
                        {
                            Store (Arg4, DA20)
                            Store (Arg5, DA21)
                        }

                        Store (Arg1, PRT2)
                    }

                    Store (0x7F, Local0)
                    If (LEqual (Arg0, Zero))
                    {
                        While (PRTC)
                        {
                            Sleep (One)
                            Decrement (Local0)
                        }
                    }
                    Else
                    {
                        While (PRT2)
                        {
                            Sleep (One)
                            Decrement (Local0)
                        }
                    }

                    If (Local0)
                    {
                        If (LEqual (Arg0, Zero))
                        {
                            Store (SSTS, Local0)
                            Store (DAT0, Index (Local1, One))
                            Store (DAT1, Index (Local1, 0x02))
                            Store (BCNT, Index (Local1, 0x03))
                            Store (RECB (0x1C, 0x0100), Index (Local1, 0x04))
                        }
                        Else
                        {
                            Store (SST2, Local0)
                            Store (DA20, Index (Local1, One))
                            Store (DA21, Index (Local1, 0x02))
                            Store (BCN2, Index (Local1, 0x03))
                            Store (RECB (0x44, 0x0100), Index (Local1, 0x04))
                        }

                        And (Local0, 0x1F, Local0)
                        If (Local0)
                        {
                            Add (Local0, 0x10, Local0)
                        }

                        Store (Local0, Index (Local1, Zero))
                    }
                    Else
                    {
                        Store (0x10, Index (Local1, Zero))
                    }
                }

                Release (MUEC)
            }

            Return (Local1)
        }

        Method (SMBW, 5, Serialized)
        {
            Store (Package (0x01)
                {
                    0x07
                }, Local0)
            If (LNot (ECAV ()))
            {
                Return (Local0)
            }

            If (LNotEqual (Arg0, WRBL))
            {
                If (LNotEqual (Arg0, WRWD))
                {
                    If (LNotEqual (Arg0, WRBT))
                    {
                        If (LNotEqual (Arg0, SDBT))
                        {
                            If (LNotEqual (Arg0, WRQK))
                            {
                                Return (Local0)
                            }
                        }
                    }
                }
            }

            Acquire (MUEC, 0xFFFF)
            Store (PRTC, Local1)
            Store (Zero, Local2)
            While (LNotEqual (Local1, Zero))
            {
                Stall (0x0A)
                Increment (Local2)
                If (LGreater (Local2, 0x03E8))
                {
                    Store (SBBY, Index (Local0, Zero))
                    Store (Zero, Local1)
                }
                Else
                {
                    Store (PRTC, Local1)
                }
            }

            If (LLessEqual (Local2, 0x03E8))
            {
                WECB (0x1C, 0x0100, Zero)
                ShiftLeft (Arg1, One, Local3)
                Store (Local3, ADDR)
                If (LNotEqual (Arg0, WRQK))
                {
                    If (LNotEqual (Arg0, SDBT))
                    {
                        Store (Arg2, CMDB)
                    }
                }

                If (LEqual (Arg0, WRBL))
                {
                    Store (Arg3, BCNT)
                    WECB (0x1C, 0x0100, Arg4)
                }

                If (LEqual (Arg0, WRWD))
                {
                    Store (Arg4, T2B0)
                    Store (ShiftRight (Arg4, 0x08), T2B1)
                }

                If (LEqual (Arg0, WRBT))
                {
                    Store (Arg4, DAT0)
                }

                If (LEqual (Arg0, SDBT))
                {
                    Store (Arg4, DAT0)
                }

                Store (Arg0, PRTC)
                Store (SWTC (Arg0), Index (Local0, Zero))
            }

            Release (MUEC)
            Return (Local0)
        }
    }

    Scope (_SB.PCI0.LPCB)
    {
        Scope (EC)
        {
            Method (RE1B, 1, NotSerialized)
            {
                OperationRegion (ERAM, EmbeddedControl, Arg0, One)
                Field (ERAM, ByteAcc, NoLock, Preserve)
                {
                    BYTE,   8
                }

                Return (BYTE)
            }

            Method (RECB, 2, Serialized)
            {
                ShiftRight (Arg1, 0x03, Arg1)
                Name (TEMP, Buffer (Arg1){})
                Add (Arg0, Arg1, Arg1)
                Store (Zero, Local0)
                While (LLess (Arg0, Arg1))
                {
                    Store (RE1B (Arg0), Index (TEMP, Local0))
                    Increment (Arg0)
                    Increment (Local0)
                }

                Return (TEMP)
            }

            Method (WE1B, 2, NotSerialized)
            {
                OperationRegion (ERAM, EmbeddedControl, Arg0, One)
                Field (ERAM, ByteAcc, NoLock, Preserve)
                {
                    BYTE,   8
                }

                Store (Arg1, BYTE)
            }

            Method (WECB, 3, Serialized)
            {
                ShiftRight (Arg1, 0x03, Arg1)
                Name (TEMP, Buffer (Arg1){})
                Store (Arg2, TEMP)
                Add (Arg0, Arg1, Arg1)
                Store (Zero, Local0)
                While (LLess (Arg0, Arg1))
                {
                    WE1B (Arg0, DerefOf (Index (TEMP, Local0)))
                    Increment (Arg0)
                    Increment (Local0)
                }
            }
        }
    }

    Method (B1B2, 2, NotSerialized)
    {
        Return (Or (Arg0, ShiftLeft (Arg1, 0x08)))
    }
}

