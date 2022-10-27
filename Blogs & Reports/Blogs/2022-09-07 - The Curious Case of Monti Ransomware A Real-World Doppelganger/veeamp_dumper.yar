rule cybercrime_veeam_dumper {
      meta:
            description = "Detects Veeam credential Dumper"
            author = "BlackBerry Threat Research Team"
            date = "August 15, 2021"
            hash = "df492b4cc7f644ad3e795155926d1fc8ece7327c0c5c8ea45561f24f5110ce54"
            license = "This Yara rule is provided under the Apache License 2.0 (https://www.apache.org/licenses/LICENSE-2.0) and open to any user or organization, as long as you use it under this license and ensure originator credit in any derivative to The BlackBerry Research & Intelligence Team"
      strings:
            $s1 = "SqlCommand" fullword ascii wide
            $s2 = "SqlConnection" fullword ascii wide
            $s3 = "SqlDataReader" fullword ascii wide
            $s4 = "veeamp.exe" fullword ascii wide
            $s5 = "veeamp.pdb" fullword ascii wide

      condition:
            uint16be(0) == 0x4d5a and filesize < 60KB
            and 4 of them
}
