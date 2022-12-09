import "pe"
rule BlackByte_Ransomware {
   meta:
      description = "Detects BlackByte Ransomware"
      author = "BlackBerry Threat Research Team"
      date = "2022-10-23"
      hash = "1df11bc19aa52b623bdf15380e3fded56d8eb6fb7b53a2240779864b1a6474ad"
      license = "This Yara rule is provided under the Apache License 2.0 (https://www.apache.org/licenses/LICENSE-2.0) and open to any user or organization, as long as you use it under this license and ensure originator credit in any derivative to The BlackBerry Research & Intelligence Team"

   condition:
   (
   //PE File
   uint16(0) == 0x5a4d and

   //Imphash
   pe.imphash() == "7c3782f1285f48d8c9a17be8db65b02d" and

    pe.sections[0].name contains "UPX0" and
    pe.sections[1].name contains "UPX1" )
}


import "pe"

rule BlackByte_Unpacked {
   meta:
      description = "Detects BlackByte Unpacked Ransomware"
      author = "BlackBerry Threat Research Team"
      date = "2022-10-23"
      license = "This Yara rule is provided under the Apache License 2.0 (https://www.apache.org/licenses/LICENSE-2.0) and open to any user or organization, as long as you use it under this license and ensure originator credit in any derivative to The BlackBerry Research & Intelligence Team"

   strings:
      $s1 = "BlackByteGO/_cgo_gotypes.go" ascii wide
      $s2 = "main.DelShadows"
      $s3 = "main.Aes256Encr"
      $s4 = "main.ShowNote"

   condition:
   (
   //PE File
   uint16(0) == 0x5a4d and

   //All Strings
   all of ($s*) )
}