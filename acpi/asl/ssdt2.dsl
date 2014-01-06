/*
 * Intel ACPI Component Architecture
 * AML Disassembler version 20130117-64 [Jan  6 2014]
 * Copyright (c) 2000 - 2013 Intel Corporation
 * 
 * Disassembly of ssdt2.dat, Mon Jan  6 05:08:49 2014
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000033 (51)
 *     Revision         0x01
 *     Checksum         0x61
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "TP-SSDT1"
 *     OEM Revision     0x00000100 (256)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20061109 (537268489)
 */

DefinitionBlock ("ssdt2.aml", "SSDT", 1, "LENOVO", "TP-SSDT1", 0x00000100)
{
    Scope (\)
    {
        Method (KOU1, 0, NotSerialized)
        {
            Stall (0x64)
        }
    }
}

