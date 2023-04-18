# From Google Ads Abuse to a Massive Spear-Phishing Campaign Impersonating Spain’s Tax Agency

## Summary

Since the beginning of January 2023, the [BlackBerry Threat Research and Intelligence team](https://blogs.blackberry.com/en/category/research-and-intelligence) has been following two parallel malicious campaigns that use the same infrastructure but have different purposes.

The first campaign is related to a [malvertising Google Ads Platform](https://www.bleepingcomputer.com/news/security/hackers-abuse-google-ads-to-spread-malware-in-legit-software/) campaign which began several months ago and distributed fake versions of legitimate software products like AnyDesk (remote desktop software), Libre Office (an open-source office productivity software suite), TeamViewer (remote access and remote-control software), and Brave (a free and open-source web browser) among others. The threat actors cloned the websites of these real products and then registered similar-sounding domains. Their goal is to seed malware on the endpoints of users who were hoping to download these products.

Some of the malware families we observed distributing these fake packages are [Vidar](https://malpedia.caad.fkie.fraunhofer.de/details/win.vidar) and [IcedID](https://www.blackberry.com/us/en/solutions/endpoint-security/ransomware-protection/icedid). We also encountered other infostealer malware families.

The second campaign BlackBerry researchers have been tracking during our continuous threat hunting activities is related to a massive spear-phishing campaign targeting large organizations based in Spain. The campaign impersonated Spain’s tax agency (the Agencia Estatal de Administración Tributaria, or AEAT), with a goal of harvesting the email credentials of companies in Spain. IcedID and Vidar were not involved in this second campaign.

BlackBerry has observed similar campaigns in the past. For example, back in February, we witnessed a campaign where a threat actor [impersonated a Colombian government tax agency](https://blogs.blackberry.com/en/2023/02/blind-eagle-apt-c-36-targets-colombia) to target key industries in Colombia, including health, financial, law enforcement, immigration, and an agency in charge of peace negotiation in the country.

## Actionable Intelligence

| File | Description | Type | 
|--------|--------|--------|
| [spanish-campaign-iocs.csv](https://github.com/blackberry/threat-research-and-intelligence/blob/main/Blogs%20%26%20Reports/Blogs/2023-04-18%20-%20From%20Google%20Ads%20Abuse%20to%20a%20Massive%20Spear-Phishing%20Campaign%20Impersonating%20Spains%20Tax%20Agency/spanish-campaign-iocs.csv) | IOCs related to the Spain's Tax Agency campaign | CSV File |


## Reference

Blog: https://blogs.blackberry.com/en/2023/04/massive-spear-phishing-campaign-impersonating-spain-tax-agency