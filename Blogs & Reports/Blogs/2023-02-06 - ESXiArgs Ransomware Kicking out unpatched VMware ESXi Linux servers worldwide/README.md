# ESXiArgs Ransomware Kicking out unpatched VMware ESXi Linux servers worldwide

## Summary

A new ransomware, ESXiArgs Ransomware, is targeting unpatched VMware ESXi servers connected to the Internet. The attackers utilize a two year old unauthenticated RCE exploit, [CVE-2021-21974](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2021-21974), to cause a heap overflow in the OpenSLP service.

Vulnerable systems include any systems running the following:
* ESXi versions 7.x prior to ESXi70U1c-17325551
* ESXi versions 6.7.x prior to ESXi670-202102401-SG
* ESXi versions 6.5.x prior to ESXi650-202102101-SG

The threat actor is targeting victims globally. At the time of writing at least 849 systems are seen as compromised according to this Shodan search results.

Once compromised a shell script is used to execute the encryptor and deliver the ransom note. The requested amount is for approximately $23,000 worth of BTC (2.092716 BTC) The major number of infections occurred between Friday, February 3, and Monday, February 6.

## Actionable Intelligence

| File | Description | Type | 
|--------|--------|--------|
| [ESXiArgs_Ransomware.yar](https://github.com/blackberry/threat-research-and-intelligence/blob/main/Blogs%20%26%20Reports/Blogs/2023-02-06%20-%20ESXiArgs%20Ransomware%20Kicking%20out%20unpatched%20VMware%20ESXi%20Linux%20servers%20worldwide/ESXiArgs_Ransomware.yar) | 3 YARA Rules. 2 of them to detect an ELF file and the other one to detect Shell Script used to deploy this ransomware | YARA Rule |

## Reference

Blog: https://blogs.blackberry.com/en/2023/02/esxiargs-ransomware-knocking-out-unpatched-vmware-esxi-linux-servers-worldwide
