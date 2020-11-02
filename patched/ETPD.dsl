/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of iASLEbfDQN.aml, Mon Nov  2 16:45:47 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000001D5 (469)
 *     Revision         0x02
 *     Checksum         0x04
 *     OEM ID           "hack"
 *     OEM Table ID     "ETPD"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "ETPD", 0x00000000)
{
    External (_SB_.DSYN, FieldUnitObj)    // (from opcode)
    External (_SB_.ELAN, FieldUnitObj)    // (from opcode)
    External (_SB_.FOLT, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0, DeviceObj)    // (from opcode)
    External (_SB_.TPIF, FieldUnitObj)    // (from opcode)
    External (ELAN, IntObj)    // (from opcode)
    External (FOLT, IntObj)    // (from opcode)
    External (S0ID, FieldUnitObj)    // (from opcode)
    External (SSHI, FieldUnitObj) 
    External (SSLI, FieldUnitObj)     
    External (SSDI, FieldUnitObj) 
    External (FMHI, FieldUnitObj)        
    External (FMDI, FieldUnitObj) 
    External (FMlI, FieldUnitObj)    
    

    External (PKG3, MethodObj)

    Device (_SB.PCI0.I2C1.ETPD)
    {
        Name (_ADR, One)  // _ADR: Address
        Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
        {
            If (ELAN)
            {
                Return ("ELAN1000")
            }

            If (FOLT)
            {
                Return ("FTE1001")
            }

            Return ("ELAN1010")
        }

            Method (SSCN, 0, NotSerialized)
            {
                Return (PKG3 (SSHI, SSLI, SSDI))
            }

            Method (FMCN, 0, NotSerialized)
            {
                Return (PKG3 (FMHI, FMLI, FMDI))
            }

        Name (_CID, "PNP0C50")  // _CID: Compatible ID
        Name (_UID, One)  // _UID: Unique ID
        Name (_S0W, 0x03)  // _S0W: S0 Device Wake State
        Method (_S3W, 0, NotSerialized)  // _S3W: S3 Device Wake State
        {
            If (LEqual (S0ID, Zero))
            {
                Return (0x03)
            }
            Else
            {
                Return (Zero)
            }
        }

        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If (LEqual (Arg0, ToUUID ("3cdff6f7-4267-4555-ad05-b30a3d8938de") /* HID I2C Device */))
            {
                If (LEqual (Arg2, Zero))
                {
                    If (LEqual (Arg1, One))
                    {
                        Return (Buffer (One)
                        {
                             0x03                                           
                        })
                    }
                    Else
                    {
                        Return (Buffer (One)
                        {
                             0x00                                           
                        })
                    }
                }

                If (LEqual (Arg2, One))
                {
                    Return (One)
                }
            }
            Else
            {
                Return (Buffer (One)
                {
                     0x00                                           
                })
            }
        }

        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (LEqual (TPIF, Zero))
            {
                Return (Zero)
            }

            If (And (DSYN, One))
            {
                Return (Zero)
            }

            Return (0x0F)
        }

        Name (SBFG, ResourceTemplate ()
        {
            GpioInt (Level, ActiveLow, ExclusiveAndWake, PullDefault, 0x0000,
                "\\_SB.PCI0.GPI0", 0x00, ResourceConsumer, ,
                )
                {   // Pin list
                    0x0055
                }
        })
        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
        {
            Name (SBFB, ResourceTemplate ()
            {
                I2cSerialBusV2 (0x0015, ControllerInitiated, 0x00061A80,
                    AddressingMode7Bit, "\\_SB.PCI0.I2C1",
                    0x00, ResourceConsumer, , Exclusive,
                    )
            })
            Return (ConcatenateResTemplate (SBFB, SBFG))
        }
    }
}

