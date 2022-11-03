import "pe"
import "math"

rule targeted_RomComRat : RomCom deployed via trojanized legitimate apps
{
    meta:
        description = "Rule detecting RomCom RAT used to attack Military Institutions from Ukraine"
        author = " The BlackBerry Research & Intelligence team"
        date = "2022-18-10"
        license = "This Yara rule is provided under the Apache License 2.0 (https://www.apache.org/licenses/LICENSE-2.0) and open to any user or organization, as long as you use it under this license and ensure originator credit in any derivative to the BlackBerry Research & Intelligence Team"
        hash = "9f61259c966f34d89b70af92b430ae40dd5f1314ee6640d16e0b7b0f4f385738"

      strings:
        //comDll.dll
        $x0 = {636f6d446c6c2e646c6c}
        //combase32.dll
        $x1 = {63006f006d006200610073006500330032002e0064006c006c00}         

    condition:
    uint16(0) == 0x5a4d and
    pe.number_of_sections == 7 and
    pe.sections[0].name == ".text" and
    math.entropy(pe.sections[0].raw_data_offset, pe.sections[0].raw_data_size) >= 6.5 and
    pe.sections[1].name == ".rdata" and
    math.entropy(pe.sections[1].raw_data_offset, pe.sections[1].raw_data_size) >= 5.2 and
    pe.sections[2].name == ".data" and
    pe.sections[3].name == ".pdata" and
    math.entropy(pe.sections[3].raw_data_offset, pe.sections[3].raw_data_size) >= 5.5 and
    pe.sections[4].name == "_RDATA" and
    math.entropy(pe.sections[4].raw_data_offset, pe.sections[4].raw_data_size) >= 2.4 and
    pe.sections[5].name == ".rsrc" and
    math.entropy(pe.sections[5].raw_data_offset, pe.sections[5].raw_data_size) >= 2.85 and
    pe.sections[6].name == ".reloc" and
    math.entropy(pe.sections[6].raw_data_offset, pe.sections[6].raw_data_size) >= 5.3 and
    pe.number_of_resources == 2 and
    pe.exports("startFile") and
    pe.exports("startInet") and
    all of ($x*)
}