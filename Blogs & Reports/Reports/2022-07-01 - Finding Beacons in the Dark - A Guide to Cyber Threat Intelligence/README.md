# Finding Beacons in the Dark: A Guide to Cyber Threat Intelligence

## Sumary

Cobalt Strike provides adversary simulation and threat emulation software that is widely used by red teams and heavily abused by malicious threat actors. It has become a highly prevalent threat, employed by a vast number of Advanced Persistent Threat (APT) and cybercrime groups across the globe. 

It is easy to see why this is the case, as it is fully featured and well-documented. From reconnaissance and spear-phishing to post-exploitation and covert communications, Cobalt Strike is feature-rich, well supported, and actively maintained by its developers. Beacon, Cobalt Strike’s primary payload, provides a wealth of features for attackers, which facilitate:

* Reverse shells and remote command execution
* Keylogging and screenshots
* Data exfiltration
* SOCKS proxying
* Pivoting
* Privilege elevation
* Credential and hash harvesting
* Port scanning and network enumeration 

For a lot of legitimate as well as criminal organizations, leveraging Cobalt Strike can be cheaper and faster than developing their own tooling. At the time of writing, licensing starts at $3,500 per license per year. If you are an unscrupulous bad actor who is using a cracked or leaked copy, the cost goes down to literally nothing.

From a threat intelligence or law enforcement perspective, Cobalt Strike’s widespread use can often make the task of attribution more challenging, and the current upward trend in utilization is not showing any sign of decline.

Proofpoint researchers recently reported a 161% year-over-year uptick in the use of Cobalt Strike by cybercriminals. It has become a perennial problem for security practitioners, requiring robust solutions that can aid in providing both defensive capabilities and enhanced threat intelligence.

**Threat Post**

Cobalt Strike Usage Explodes Among Cybercrooks: https://threatpost.com/cobalt-strike-cybercrooks/167368/ 

**Proofpoint**

Cobalt Strike: Favorite Tool from APT to Crimeware: https://www.proofpoint.com/us/blog/threat-insight/cobalt-strike-favorite-tool-apt-crimeware

On the defensive side of things, the best thing we can do to tackle the challenge of combating the rogue use of Cobalt Strike is to have solid processes in place. These processes need to be not only well thought out, but also driven by data.

## Actionable Intelligence

| File | Description | Type | 
|--------|--------|--------|
| [BazarLoader-iocs.csv](https://github.com/blackberry/threat-research-and-intelligence/blob/main/Blogs%20%26%20Reports/Reports/2022-07-01%20-%20Finding%20Beacons%20in%20the%20Dark%20-%20A%20Guide%20to%20Cyber%20Threat%20Intelligence/BazarLoader-iocs.csv) | Indicators of compromise related to BazarLoader | CSV File  |
| [Conti-iocs.csv](https://github.com/blackberry/threat-research-and-intelligence/blob/main/Blogs%20%26%20Reports/Reports/2022-07-01%20-%20Finding%20Beacons%20in%20the%20Dark%20-%20A%20Guide%20to%20Cyber%20Threat%20Intelligence/Conti-iocs.csv) | Indicators of compromise related to Conti | CSV File  |
| [Darkside-iocs.csv](https://github.com/blackberry/threat-research-and-intelligence/blob/main/Blogs%20%26%20Reports/Reports/2022-07-01%20-%20Finding%20Beacons%20in%20the%20Dark%20-%20A%20Guide%20to%20Cyber%20Threat%20Intelligence/Darkside-iocs.csv) | Indicators of compromise related to DarkSide | CSV File  |
| [DopplePaymer-iocs.csv](https://github.com/blackberry/threat-research-and-intelligence/blob/main/Blogs%20%26%20Reports/Reports/2022-07-01%20-%20Finding%20Beacons%20in%20the%20Dark%20-%20A%20Guide%20to%20Cyber%20Threat%20Intelligence/DopplePaymer-iocs.csv) | Indicators of compromise related to DopplePaymer | CSV File  |
| [FIN7-iocs.csv](https://github.com/blackberry/threat-research-and-intelligence/blob/main/Blogs%20%26%20Reports/Reports/2022-07-01%20-%20Finding%20Beacons%20in%20the%20Dark%20-%20A%20Guide%20to%20Cyber%20Threat%20Intelligence/FIN7-iocs.csv) | Indicators of compromise related to FIN7 | CSV File  |
| [HiddenDragon-iocs.csv](https://github.com/blackberry/threat-research-and-intelligence/blob/main/Blogs%20%26%20Reports/Reports/2022-07-01%20-%20Finding%20Beacons%20in%20the%20Dark%20-%20A%20Guide%20to%20Cyber%20Threat%20Intelligence/HiddenDragon-iocs.csv) | Indicators of compromise related to HiddenDragon | CSV File  |
| [IcedID-iocs.csv](https://github.com/blackberry/threat-research-and-intelligence/blob/main/Blogs%20%26%20Reports/Reports/2022-07-01%20-%20Finding%20Beacons%20in%20the%20Dark%20-%20A%20Guide%20to%20Cyber%20Threat%20Intelligence/IcedID-iocs.csv) | Indicators of compromise related to IcedID | CSV File  |
| [MAN1-iocs.csv](https://github.com/blackberry/threat-research-and-intelligence/blob/main/Blogs%20%26%20Reports/Reports/2022-07-01%20-%20Finding%20Beacons%20in%20the%20Dark%20-%20A%20Guide%20to%20Cyber%20Threat%20Intelligence/MAN1-iocs.csv) | Indicators of compromise related to MAN1 | CSV File  |
| [Ryuk-iocs.csv](https://github.com/blackberry/threat-research-and-intelligence/blob/main/Blogs%20%26%20Reports/Reports/2022-07-01%20-%20Finding%20Beacons%20in%20the%20Dark%20-%20A%20Guide%20to%20Cyber%20Threat%20Intelligence/Ryuk-iocs.csv) | Indicators of compromise related to Ryuk | CSV File  |
| [Salfram-iocs.csv](https://github.com/blackberry/threat-research-and-intelligence/blob/main/Blogs%20%26%20Reports/Reports/2022-07-01%20-%20Finding%20Beacons%20in%20the%20Dark%20-%20A%20Guide%20to%20Cyber%20Threat%20Intelligence/Salfram-iocs.csv) | Indicators of compromise related to Salfram | CSV File  |
| [Trickbot-iocs.csv](https://github.com/blackberry/threat-research-and-intelligence/blob/main/Blogs%20%26%20Reports/Reports/2022-07-01%20-%20Finding%20Beacons%20in%20the%20Dark%20-%20A%20Guide%20to%20Cyber%20Threat%20Intelligence/Trickbot-iocs.csv) | Indicators of compromise related to Trickbot | CSV File  |
| [Ursnif-iocs.csv](https://github.com/blackberry/threat-research-and-intelligence/blob/main/Blogs%20%26%20Reports/Reports/2022-07-01%20-%20Finding%20Beacons%20in%20the%20Dark%20-%20A%20Guide%20to%20Cyber%20Threat%20Intelligence/Ursnif-iocs.csv) | Indicators of compromise related to Ursnif | CSV File  |

## Reference

Report: https://www.blackberry.com/us/en/forms/enterprise/ebook-beacons-in-the-dark
