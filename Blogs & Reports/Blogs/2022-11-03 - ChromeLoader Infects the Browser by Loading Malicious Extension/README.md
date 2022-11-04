# ChromeLoader Infects the Browser by Loading Malicious Extension

## Summary

Have you ever considered downloading a malicious extension for Google Chrome™? If your machine is infected with ChromeLoader, you might not have a choice.

As its name suggests, ChromeLoader’s goal is to compromise popular browsers like Google Chrome, and alter the victim’s browser settings to direct traffic to dubious advertising websites. It can even conduct browser hijacking to compromise the user’s password and login information.

ChromeLoader has been rapidly evolving ever since appearing back in January of this year, with the malware boasting a wide range of variants that have been discovered in-the-wild in recent months. In newer examples of ChromeLoader, we’ve observed that the malware has additionally begun to focus on ‘click fraud’, an internet-focused type of scam that forces users to visit unwanted sites to generate revenue from pay-per-click online advertising.

As we head into the winter of 2022, ChromeLoader is showing no signs of stopping or slowing the orchestration of multiple malicious campaigns across both Windows® and macOS® operating systems alike. In this blog post, we’ll examine how it operates.

## Actionable Intelligence

| File | Description | Type | 
|--------|--------|--------|
| [ChromeLoader.yar](https://github.com/blackberry/threat-research-and-intelligence/blob/main/Blogs%20%26%20Reports/Blogs/2022-11-03%20-%20ChromeLoader%20Infects%20the%20Browser%20by%20Loading%20Malicious%20Extension/ChromeLoader.yar) | Two YARA Rules to detect behaviors related to ChromeLoader malware | YARA Rule |
| [ChromeLoader-iocs.csv](https://github.com/blackberry/threat-research-and-intelligence/blob/main/Blogs%20%26%20Reports/Blogs/2022-11-03%20-%20ChromeLoader%20Infects%20the%20Browser%20by%20Loading%20Malicious%20Extension/ChromeLoader-iocs.csv) | Indicators of compromise related to ChromeLoader malware | CSV File |

## Reference

Blog: https://blogs.blackberry.com/en/2022/11/chromeloader-infects-the-browser-by-loading-malicious-extension
