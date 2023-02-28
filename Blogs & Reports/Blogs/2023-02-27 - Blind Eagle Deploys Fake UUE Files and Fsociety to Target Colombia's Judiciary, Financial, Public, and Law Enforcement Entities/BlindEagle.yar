
rule targeted_BlindEagle_Loader : Fsociety
{
    meta:
        description = "Rule to detect BlindEagle malicious Loader"
        author = "The BlackBerry Research & Intelligence team"
        date = "2023-02-07"
        last_modified = "2023-02-22"
        distribution = "TLP:White"
        version = "1.0"    

    strings:        

        $h0 = {6449640053697A655F00526573657276656431004465736B746F70005469746C6500647758006477590064775853697A650064775953697A6500647758436F756E74436861727300647759436F756E74436861727300647746696C6C41747472}
        $h1 = {000004200101022901002434353136453045312D354330452D344234452D394133322D39453337453233453734323600000C010007312E302E302E3000004901001A2E4E45544672616D65776F726B2C5665}         

      condition:
        uint16(0) == 0x5A4D and filesize < 100KB and 1 of ($h*)

}