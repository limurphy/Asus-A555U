// In config ACPI, I2C0 renamed I2X0
// Find:     49 32 43 30
// Replace:  49 32 58 30
// TgtBridge:no
//
// In config ACPI, I2X0._STA renamed I2X0.XSTA
// Find:     5F 53 54 41
// Replace:  58 53 54 41
// TgtBridge:49 32 58 30
#ifndef NO_DEFINITIONBLOCK
DefinitionBlock("", "SSDT", 2, "HACK", "I2C0-SKL", 0)
{
#endif
    External(_SB.PCI0.I2X0, DeviceObj)
    External(SB10, FieldUnitObj)
    External(SMD0, FieldUnitObj)
    External(SB00, FieldUnitObj)
    External(SIR0, FieldUnitObj)
    //
    External(_SB.PCI0, DeviceObj)
    External(_SB.PCI0.GETD, MethodObj)
    External(_SB.PCI0.LPD0, MethodObj)
    External(_SB.PCI0.LPD3, MethodObj)
    External(_SB.PCI0.LHRV, MethodObj)
    External(_SB.PCI0.LCRS, MethodObj)
    External(_SB.PCI0.LSTA, MethodObj)
    External (_SB_.PCI0.PCIC, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.PCI0.PCID, MethodObj)    // 4 Arguments (from opcode)

    Scope (_SB.PCI0.I2X0)
    {
        Method (_STA, 0, NotSerialized)
        {
            Return (0)
        }
    }   
    
    Scope (_SB.PCI0)
    {
        Device (I2C0)
        {
            Name (LINK, "\\_SB.PCI0.I2C0")
            Method (_PSC, 0, NotSerialized)  // _PSC: Power State Current
            {
                GETD (SB10)
            }

            Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
            {
                LPD0 (SB10)
            }

            Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
            {
                LPD3 (SB10)
            }
            
        }
    }

    If (LNotEqual (SMD0, 0x02))
    {
        Scope (_SB.PCI0.I2C0)
        {
            Name (_HID, "INT3442")  // _HID: Hardware ID
            Method (_HRV, 0, NotSerialized)  // _HRV: Hardware Revision
            {
                Return (LHRV (SB10))
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Return (LCRS (SMD0, SB00, SIR0))
            }


            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (LSTA (SMD0))
            }
        }
    }

    If (LEqual (SMD0, 0x02))
    {
        Scope (_SB.PCI0.I2C0)
        {
            Name (_ADR, 0x00150000)  // _ADR: Address
            Method (XDSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If (PCIC (Arg0))
                {
                    Return (PCID (Arg0, Arg1, Arg2, Arg3))
                }

                Return (Zero)
            }
        }
    }
#ifndef NO_DEFINITIONBLOCK
}
#endif
//EOF