# Gamaredon (Ab)uses Telegram to Target Ukrainian Organizations

## Summary

The Gamaredon Group has been actively targeting the Ukrainian government lately, relying on the infrastructure of the popular messaging service Telegram to bypass traditional network traffic detection techniques without raising obvious flags. Back in November 2022, BlackBerry [uncovered](https://blogs.blackberry.com/en/2022/11/gamaredon-leverages-microsoft-office-docs-to-target-ukraine-government) a new Gamaredon campaign that relied on a multi-stage Telegram scheme to first profile potential victims, and then deliver the final payload along with the malicious command-and-control (C2).

This report provides information about the recent network infrastructure from [Crimea](https://en.wikipedia.org/wiki/Crimea) that the Gamaredon Group uses, as well as analysis of each step before the victims receive the final payload.

## Actionable Intelligence

| File | Description | Type | 
|--------|--------|--------|
| [Gamaredon-iocs.csv](https://github.com/blackberry/threat-research-and-intelligence/blob/main/Blogs%20%26%20Reports/Blogs/2023-01-19%20-%20Gamaredon%20%28Ab%29uses%20Telegram%20to%20Target%20Ukrainian%20Organizations/Gamaredon-iocs.csv) | Indicators of compromise related to Gamaredon | CSV File |

## Reference

Blog: https://blogs.blackberry.com/en/2023/01/gamaredon-abuses-telegram-to-target-ukrainian-organizations
