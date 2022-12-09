# BlackByte Ransomware Takes an Extra Bite Using Double Extortion Methods

## Summary

The BlackByte ransomware variant was first discovered in summer 2021 and has since then produced many new variants, with the latest being [spotted in the wild](https://latesthackingnews.com/2022/10/11/blackbyte-ransomware-exploits-vulnerable-windows-driver-to-escape-detection/) in recent months. BlackByte is a prolific Ransomware-as-a-Service (RaaS) malware which utilizes an increasingly popular [double extortion](https://blogs.blackberry.com/en/2021/05/threat-thursday-dr-revil-ransomware-strikes-again-employs-double-extortion-tactics) method. In this type of attack, the threat actor both exfiltrates and encrypts the victims’ data. This gives the attacker additional leverage when attempting to collect a ransom payment from the victim, as they can threaten to publish or sell potentially sensitive data on the dark web if their demands are not met.

In addition, recent BlackByte operators have been spotted leveraging a custom exfiltration tool which has been dubbed ‘ExByte’ in order to steal the victims’ data, pre-encryption. Once exfiltrated, the stolen files are uploaded to the Mega cloud storage service.

## Actionable Intelligence

| File | Description | Type | 
|--------|--------|--------|
| [Blackbyte-iocs.csv](https://github.com/blackberry/threat-research-and-intelligence/blob/main/Blogs%20%26%20Reports/Blogs/2022-12-08%20-%20BlackByte%20Ransomware%20Takes%20an%20Extra%20Bite%20Using%20Double%20Extortion%20Methods/Blackbyte-iocs.csv) | Indicators of compromise related to Blackbyte Ransomware campaign | CSV File |
| [Blackbyte.yar](https://github.com/blackberry/threat-research-and-intelligence/blob/main/Blogs%20%26%20Reports/Blogs/2022-12-08%20-%20BlackByte%20Ransomware%20Takes%20an%20Extra%20Bite%20Using%20Double%20Extortion%20Methods/Blackbyte.yar) | Two YARA Rules to detect behaviors related to Blackbyte ransomware | YARA Rule |

## Reference

Blog: https://blogs.blackberry.com/en/2022/12/blackbyte-ransomware-takes-an-extra-bite-using-double-extortion-methods
