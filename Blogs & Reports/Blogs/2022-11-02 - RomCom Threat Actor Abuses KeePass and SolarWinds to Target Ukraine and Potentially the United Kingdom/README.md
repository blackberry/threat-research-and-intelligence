# RomCom Threat Actor Abuses KeePass and SolarWinds to Target Ukraine and Potentially the United Kingdom

## Summary

The threat actor known as RomCom is running a series of new attack campaigns that take advantage of the brand power of SolarWinds, KeePass, and PDF Technologies. The BlackBerry Threat Research and Intelligence Team uncovered the campaigns while analyzing network artifacts unearthed during our recent [report on RomComRAT](https://blogs.blackberry.com/en/2022/10/unattributed-romcom-threat-actor-spoofing-popular-apps-now-hits-ukrainian-militaries), which was targeting Ukrainian military institutions through spoofed versions of Advanced IP Scanner software.

In our latest discovery, our team found RomCom leveraging the following products in their campaigns: **SolarWinds Network Performance Monitor, KeePass Open-Source Password Manager, and PDF Reader Pro.**

While Ukraine still appears to be the primary target of this campaign, we believe some English-speaking countries are being targeted as well, including the United Kingdom. This is based on the terms of service (TOS) of two of the malicious websites and the SSL certificates of a newly created command-and-control (C2).

Given the geography of the targets and the current geopolitical situation, it's unlikely that the RomCom RAT threat actor is cybercrime-motivated.

## Actionable Intelligence

| File | Description | Type | 
|--------|--------|--------|
| [RomCom_RAT_UA.yar](https://github.com/blackberry/threat-research-and-intelligence/blob/main/Blogs%20%26%20Reports/Blogs/2022-11-02%20-%20RomCom%20Threat%20Actor%20Abuses%20KeePass%20and%20SolarWinds%20to%20Target%20Ukraine%20and%20Potentially%20the%20United%20Kingdom/RomCom_RAT_UA.yar) | Rule detecting RomCom RAT used to attack Military Institutions from Ukraine | YARA Rule |
| [RomCom_RAT-iocs.csv](https://github.com/blackberry/threat-research-and-intelligence/blob/main/Blogs%20%26%20Reports/Blogs/2022-11-02%20-%20RomCom%20Threat%20Actor%20Abuses%20KeePass%20and%20SolarWinds%20to%20Target%20Ukraine%20and%20Potentially%20the%20United%20Kingdom/RomCom_RAT-iocs.csv) | Indicators of compromise related to RomCom RAT | CSV File |
| [STIX_RomCom_Threat_Actor_Abuses_KeePass_and_SolarWinds.json](https://github.com/blackberry/threat-research-and-intelligence/blob/main/Blogs%20%26%20Reports/Blogs/2022-11-02%20-%20RomCom%20Threat%20Actor%20Abuses%20KeePass%20and%20SolarWinds%20to%20Target%20Ukraine%20and%20Potentially%20the%20United%20Kingdom/STIX_RomCom_Threat_Actor_Abuses_KeePass_and_SolarWinds.json) | STIX 2.0 file with the IOCs and contextual information related to the campaign | STIX 2.0 JSON |
| [MISP_RomCom_ThreatActor_Abuses_KeePass_and_SolarWinds.json](https://github.com/blackberry/threat-research-and-intelligence/blob/main/Blogs%20%26%20Reports/Blogs/2022-11-02%20-%20RomCom%20Threat%20Actor%20Abuses%20KeePass%20and%20SolarWinds%20to%20Target%20Ukraine%20and%20Potentially%20the%20United%20Kingdom/MISP_RomCom_ThreatActor_Abuses_KeePass_and_SolarWinds.json) | MISP event with the IOCs and contextual information related to the campaign (Some galaxies may not be seen properly because they are not in your MISP.). | MISP JSON |

## Reference

Blog: https://blogs.blackberry.com/en/2022/11/romcom-spoofing-solarwinds-keepass
