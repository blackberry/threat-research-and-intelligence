# DarkBit Ransomware Targets Israel with Command-Line Options and Optimized Encryption Routines

## Summary

A new ransomware strain dubbed "DarkBit" has recently appeared on the threat landscape after targeting one of Israel's top research universities, [Technion - Israel Institute of Technology (IIT)](https://en.wikipedia.org/wiki/Technion_%E2%80%93_Israel_Institute_of_Technology).

The threat actor behind this Golang-compiled [ransomware](https://www.blackberry.com/us/en/solutions/endpoint-security/ransomware-protection/what-is-malware) appears to have geopolitical motivations; the ransom note is laden with anti-Israeli and anti-government rhetoric, along with mentions of the recent spate of layoffs across the technology industry.

The main portable executable (PE) module supports command-line options and data encryption optimization for large files.

## Actionable Intelligence

| File | Description | Type | 
|--------|--------|--------|
| [DarkBit-iocs.csv](https://github.com/blackberry/threat-research-and-intelligence/blob/main/Blogs%20%26%20Reports/Blogs/2023-02-15%20-%20DarkBit%20Ransomware%20Targets%20Israel%20with%20Command-Line%20Options%20and%20Optimized%20Encryption%20Routines/DarkBit-iocs.csv) | IOCs related to DarkBit | CSV File |
| [DarkBit_Ransomware.yar](https://github.com/blackberry/threat-research-and-intelligence/blob/main/Blogs%20%26%20Reports/Blogs/2023-02-15%20-%20DarkBit%20Ransomware%20Targets%20Israel%20with%20Command-Line%20Options%20and%20Optimized%20Encryption%20Routines/DarkBit_Ransomware.yar) | YARA Rule to detect samples related to DarkBit based on the code | YARA Rule |

## Reference

Blog: https://blogs.blackberry.com/en/2023/02/darkbit-ransomware-targets-israel
