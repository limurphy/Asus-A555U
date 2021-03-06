DefinitionBlock ("", "SSDT", 2, "Hack", "TPD0", 0x00000000)
{
    External (_SB.SRXO,MethodObj)
    External (_SB.GNUM,MethodObj)    
    External (_SB.INUM,MethodObj)       
    External (_SB.SHPO,MethodObj)       
    External (GPDI,FieldUnitObj)    
    External (SDM0,FieldUnitObj)      
    External (SDS0,FieldUnitObj)       
    External (OSYS,FieldUnitObj)
    External (TPID,FieldUnitObj)
    External (TPDH,FieldUnitObj)   
    External (TPDB,FieldUnitObj)    
    External (TPDS,FieldUnitObj)    

    External (_SB.PCI0.HIDG,IntObj) 
    External (_SB.PCI0.TP7G,IntObj)       
    External (_SB.PCI0.CDSM,MethodObj)
    External (_SB.PCI0.HIDD,MethodObj)    
    External (_SB.PCI0.TP7D,MethodObj)      
    
    Device (_SB.PCI0.I2C0.TPD0)
    {
            Name (HID2, Zero)
            Name (SBFB, ResourceTemplate ()
            {
                I2cSerialBusV2 (0x0020, ControllerInitiated, 0x00061A80,
                    AddressingMode7Bit, "\\_SB.PCI0.I2C0",
                    0x00, ResourceConsumer, _Y24, Exclusive,
                    )
            })
            Name (SBFG, ResourceTemplate ()
            {
                GpioInt (Level, ActiveLow, ExclusiveAndWake, PullDefault, 0x0000,
                    "\\_SB.PCI0.GPI0", 0x00, ResourceConsumer, ,
                    )
                    {   // Pin list
                        0x0055
                    }
            })
            CreateWordField (SBFB, \_SB.PCI0.I2C0.TPD0._Y24._ADR, BADR)  // _ADR: Address
            CreateDWordField (SBFB, \_SB.PCI0.I2C0.TPD0._Y24._SPE, SPED)  // _SPE: Speed
            CreateWordField (SBFG, 0x17, INT1)
//
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                If (LLess (OSYS, 0x07DC))
                {
                    SRXO (GPDI, One)
                }

                Store (GNUM (GPDI), INT1)
 //               Store (INUM (GPDI), INT2)
                If (LEqual (SDM0, Zero))
                {
                    SHPO (GPDI, One)
                }

                If (LEqual (SDS0, One))
                {
                    Store ("SYNA2393", _HID)
                    Store (0x20, HID2)
                    Return (Zero)
                }

                If (LEqual (SDS0, 0x02))
                {
                    Store ("06CB2846", _HID)
                    Store (0x20, HID2)
                    Return (Zero)
                }

                If (LEqual (SDS0, 0x05))
                {
                    Store ("CUST0001", _HID)
                    Store (TPDH, HID2)
                    Store (TPDB, BADR)
                    If (LEqual (TPDS, Zero))
                    {
                        Store (0x000186A0, SPED)
                    }

                    If (LEqual (TPDS, One))
                    {
                        Store (0x00061A80, SPED)
                    }

                    If (LEqual (TPDS, 0x02))
                    {
                        Store (0x000F4240, SPED)
                    }

                    Return (Zero)
                }
            }

            Name (_HID, "XXXX0000")  // _HID: Hardware ID
            Name (_CID, "PNP0C50")  // _CID: Compatible ID
            Name (_S0W, 0x03)  // _S0W: S0 Device Wake State
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If (LEqual (Arg0, HIDG))
                {
                    Return (HIDD (Arg0, Arg1, Arg2, Arg3, HID2))
                }

                If (LEqual (Arg0, TP7G))
                {
                    Return (TP7D (Arg0, Arg1, Arg2, Arg3, SBFB, SBFG))
                }

                Return (Buffer (One)
                {
                     0x00                                           
                })
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (LOr (LEqual (SDS0, 0x05), LOr (LEqual (SDS0, One), LEqual (SDS0, 0x02))))
                {
                    Return (0x0F)
                }

                Return (Zero)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {

                Return (ConcatenateResTemplate (SBFB, SBFG))
            }
        }




}    