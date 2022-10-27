# The Curious Case of “Monti” Ransomware: A Real-World Doppelganger

## Sumary

A ransomware victim called in the BlackBerry Incident Response (IR) team during this year's 4th of July holiday weekend. We quickly realized we were investigating an attack by a previously unknown group, calling themselves "MONTI." They encrypted nearly 20 user hosts along with a multi-host VMware ESXi cluster that brought down over 20 servers.

Threat research shows that the only credible reference of the “Monti” ransomware group prior to today was a tweet from security researchers at [MalwareHunterTeam](https://twitter.com/malwrhunterteam?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor), posted on June 30, 2022. The Twitter post mentioned the possibility that Monti ransomware may have had “5-10 victims in the past months,” though no data is publicly available on these victims.

Most Indicators of Compromise (IOCs) identified by the BlackBerry IR team in the Monti attack were also seen in previous Conti ransomware cases — except one: Monti threat actors leveraged the Action1 Remote Monitoring and Maintenance (RMM) agent.

This article provides a general overview of the incident, denotes the unique characteristics of this “new” threat actor group, and includes malware analysis of the payload used. We also include a breakdown of “Veeamp,” a password stealer malware targeting the [Veeam](https://www.veeam.com/) data backup application, which was identified during the incident.



## Actionable Intelligence

| File | Description | Type | 
|--------|--------|--------|
| [MONTI_Strain_ChaCha8_version_IOCs.csv](https://github.com/blackberry/threat-research-and-intelligence/blob/main/Blogs%20%26%20Reports/Blogs/2022-09-07%20-%20The%20Curious%20Case%20of%20Monti%20Ransomware%20A%20Real-World%20Doppelganger/MONTI_Strain_ChaCha8_version_IOCs.csv) | Indicators of compromise related to MONTI Strain | CSV File |
| [Veeam_Credential_Dumper_IOCs.csv](https://github.com/blackberry/threat-research-and-intelligence/blob/main/Blogs%20%26%20Reports/Blogs/2022-09-07%20-%20The%20Curious%20Case%20of%20Monti%20Ransomware%20A%20Real-World%20Doppelganger/Veeam_Credential_Dumper_IOCs.csv) | Indicators of compromise related to Veeam Credential Dumper | CSV File |
| [veeamp_dumper.yar](https://github.com/blackberry/threat-research-and-intelligence/blob/main/Blogs%20%26%20Reports/Blogs/2022-09-07%20-%20The%20Curious%20Case%20of%20Monti%20Ransomware%20A%20Real-World%20Doppelganger/veeamp_dumper.yar) | Detects Veeam credential Dumper | Yara Rule |
| [monti_ransomware.yar](https://github.com/blackberry/threat-research-and-intelligence/blob/main/Blogs%20%26%20Reports/Blogs/2022-09-07%20-%20The%20Curious%20Case%20of%20Monti%20Ransomware%20A%20Real-World%20Doppelganger/monti_ransomware.yar) | Detects MONTI Strain in ChaCha8 encrypted ransom note with no key and nonce | Yara Rule |

## Reference

Blog: https://blogs.blackberry.com/en/2022/09/the-curious-case-of-monti-ransomware-a-real-world-doppelganger
