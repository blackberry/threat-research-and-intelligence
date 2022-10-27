rule cybercrime_monti_ransomware {
      meta:
            description = "Detects `MONTI Strain` in ChaCha8 encrypted ransom note with no key and nonce"
            author = "BlackBerry Threat Research Team"
            date = "August 15, 2021"
            hash = "158dcb26239a5db7a0eb67826178f1eaa0852d9d86e59afb86f04e88096a19bc"
            license = "This Yara rule is provided under the Apache License 2.0 (https://www.apache.org/licenses/LICENSE-2.0) and open to any user or organization, as long as you use it under this license and ensure originator credit in any derivative to The BlackBerry Research & Intelligence Team"

      strings:
            $s = {20 19 57 65 03 62 D0 AE F4 D1 68} // Monti strain reference

      condition:
            uint16be(0) == 0x4d5a and filesize < 2MB
            and $s
}
