# NewsPenguin, a Previously Unknown Threat Actor, Targets Pakistan with Advanced Espionage Tool

## Summary

A previously unknown threat actor is targeting organizations in Pakistan using a complex payload delivery mechanism. The threat actor abuses the upcoming Pakistan International Maritime Expo & Conference (PIMEC-2023) as a lure to trick their victims.

The attacker sent out targeted phishing emails with a weaponized document attached that purports to be an exhibitor manual for PIMEC-23. The document utilizes a remote template injection technique and embedded malicious Visual Basic for Applications (VBA) macro code to deliver the next stage of the attack, which leads to the final payload execution.

The final payload is an advanced espionage tool that is XOR encrypted with a **“penguin”** encryption key. The content-disposition response header name parameter is set to “getlatestnews” during the HTTP response. Because of this unique XOR key and the name parameter **“getlatestnews”**, we decided to call this threat actor **NewsPenguin**.

## Actionable Intelligence

| File | Description | Type | 
|--------|--------|--------|
| [NewsPenguin-iocs.csv](https://github.com/blackberry/threat-research-and-intelligence/blob/main/Blogs%20%26%20Reports/Blogs/2023-02-09%20-%20NewsPenguin%2C%20a%20Previously%20Unknown%20Threat%20Actor%2C%20Targets%20Pakistan%20with%20Advanced%20Espionage%20Tool/NewsPenguin-iocs.csv) | IOCs related to NewsPenguin intrusion | CSV File |

## Reference

Blog: https://blogs.blackberry.com/en/2023/02/newspenguin-a-previously-unknown-threat-actor-targets-pakistan-with-advanced-espionage-tool
