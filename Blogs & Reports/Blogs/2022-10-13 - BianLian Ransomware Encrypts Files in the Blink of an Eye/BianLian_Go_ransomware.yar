rule BianLian_Go_Ransomware{
      meta:
            description = "Detects BianLian ransomware"
            author = "BlackBerry Threat Research Team"
            date = "2022-09-13"
            license = "This Yara rule is provided under the Apache License 2.0 (https://www.apache.org/licenses/LICENSE-2.0) and open to any user or organization, as long as you use it under this license and ensure originator credit in any derivative to the BlackBerry Research & Intelligence Team"
      strings:
            $s1 = "trimpath=/home/jack/Projects/project1/"
            $s2 = "common.BuildPath"
            $s3 = "common.GetBlocksAmount"
            $s4 = "common.GetDrives"
            $s5 = "common.GetBlockSize"
            $s6 = "common.FileRename"
            $s7 = "common.GetFileExtension"
            $s8 = "exec.(*Cmd).Start.func1"
            $s9 = "exec.(*Cmd).Start.func2"
            $s10 = "exec.(*Cmd).Start.func3"
            $s11 = "CryptBlocks"
      condition:
            uint16(0) == 0x5a4d and all of them
}