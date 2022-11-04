import "pe"
import "hash"

rule ChromeLoader_V1
{

    meta:
        description = "ChromeLoader Malware Variant1"
        author = "BlackBerry Threat Research team"
        created_from_sha256 = "ded20df574b843aaa3c8e977c2040e1498ae17c12924a19868df5b12dee6dfdd"
        confidence = "1"

    strings:
        $f1 = "JABlAHgAdABQAGEAdABoACAAPQAgACIAJAAoACQAZQBuAHYAOgBMAE8AQwBBAEwAQQBQAFAARABBAFQAQQApAFwAYwBoAHIAbw
        BtAGUAIgAKACQAYwBvAG4AZgBQAGEAdABoACAAPQAgACIAJABlAHgAdABQAGEAdABoAFwAYwBvAG4AZgAuAGoAcwAiAAoAJABhAHIAYwB
        oAGkAdgBlAE4AYQBtAGUAIAA9ACAAIgAkACgAJABlAG4AdgA6AEwATwBDAEEATABBAFAAUABEAEEAVABBACkAXABhAHIAYwBoAGkAdgBlAC
        4AegBpAHAAIgAKACQAdABhAHMAawBOAGEAbQBlACAAPQAgACIAQwBoAHIAbwBtAGUATABvAGEAZABlAHIAIgAKACQAZABvAG0AYQBpAG
        4AIAA9ACAAIgBiAHIAbwBrAGUAbgBuAGEALgB3AG8AcgBrACIACgAKACQAaQBzAE8AcABlAG4AIAA9ACAAMAAKACQAZABkACAAPQAgADAA
        CgAkAHYAZQByACAAPQAgADAACgAKACgARwBlAHQALQBXAG0AaQBPAGIAagBlAGMAdAAgAFcAaQBuADMAMgBfAFAAcgBvAGMAZQBzAH
        MAIAAtAEYAaQBsAHQAZQByACAAIgBuAGEAbQBlAD0AJwBjAGgAcgBvAG0AZQAuAGUAeABlACcAIgApACAAfAAgAFMAZQBsAGUAYwB0AC0
        ATwBiAGoAZQBjAHQAIABDAG8AbQBtAGEAbgBkAEwAaQBuAGUAIAB8ACAARgBvAHIARQBhAGMAaAAtAE8AYgBqAGUAYwB0ACAAewAKAA
        kAaQBmACgAJABfACAALQBNAGEAdABjAGgAIAAiAGwAbwBhAGQALQBlAHgAdABlAG4AcwBpAG8AbgAiACkAewAKAAkACQBiAHIAZQBhAG
        sACgAJAH0ACgAKAAkAJABpAHMATwBwAGUAbgAgAD0AIAAxAAoAfQAKAAoAaQBmACgAJABpAHMATwBwAGUAbgApAHsA" wide
        $f2 = "Install Error, incompatible system" wide
        $f3 = "ChromeLoader" wide
        $f4 = "CS_installer" ascii wide
        $f5 = "CS_installer.exe" ascii
        $f6 = "Z:\\bundle_installer\\CS_installer\\obj\\Release\\net48\\win7-x86\\CS_installer.pdb" ascii
        $f7 = "_meta.txt" wide
        $f8 = "Error, incompatible OS" wide
        $f9 = "ChromeTask" ascii wide
        $f10 = "ChromeMonitor" wide
    condition:
        5 of ($f*) and
        pe.is_32bit() and
        filesize < 90KB and
        pe.imports("mscoree.dll", "_CorExeMain") and
        pe.imphash() == "f34d5f2d4577ed6d9ceec516c1f5a744" and
        pe.number_of_sections == 3
}
 

import "pe"
import "hash"

rule ChromeLoader_V2
{
    meta:
        description = "ChromeLoader Malware Variant2"
        author = "BlackBerry Threat Research team"
        created_from_sha256 = "00c07e354014c3fb21d932627c2d7f77bf9b4aeb9be6efb026afdbd0368c4b29"
        confidence = "1"

    strings:
        $f1 = "Prime tech" wide
        $f2 = "Energy App" wide
        $f3 = "Chrome Sandbox" wide
        $f4 = "Tone ltd" wide
        $f5 = "Tone.exe app" wide
        $f6 = "ToneApp" wide
        $f7 = "metadata" wide
        $f8 = "Energy ltd" wide
        $f9 = "Energy.exe Software" wide
        $f10 = "Chrome_MessageWindow" wide
        $f11 = "Prime app" wide
        $f12 = "PrimeApplication" wide
        $f13 = "Chrome_MessageWindow" wide
        $f14 = "Energy Tech" nocase wide
        $f15 = "Energy Application" wide
        $f16 = "Energy.exe App" wide
        $f17 = "Bloom Technologies" wide
        $f18 = "Bloom.exe app" wide
        $f19 = "Bloom" wide
        $f20 = "nw.exe.pdb" ascii
        $f21 = "nw_elf.dll" ascii
        $f22 = "encrypt" wide
        $f23 = "TripleDES" wide
        $f24 = "./script.js" wide
    condition:
        7 of ($f*) and
        filesize < 150MB and
        pe.number_of_imports == 3 and
        pe.imphash() == "d75a6917dd41b6164f0b6788ef978211" and
        pe.number_of_sections == 12
}