//
//  NSString+TelNumber_Hyphen.m
//  TelNumberCheck
//
//  Created by KentarOu on 2014/05/11.
//  Copyright (c) 2014年 KentarOu. All rights reserved.
//

#import "NSString+TelNumber_Hyphen.h"


@implementation NSString (TelNumber_Hyphen)

+ (NSString*)telNumber_Hyphen:(NSString*)telNumber
{
    NSString *number = telNumber;
    if ([NSString validateNumberCheck:[NSString makeDataArray] telNumber:number]) {
        return number;
    } else {
        number = telNumber;
    }
    
    return number;
}

+ (NSMutableArray*)makeDataArray
{
    NSMutableArray *dataArray = [NSMutableArray arrayWithCapacity:0];
    
    NSArray *arrayData1 = @[@"01564",@"01558",@"01586",@"01587",@"01634",
                            @"01632",@"01547",@"05769",@"04992",@"04994",
                            @"01456",@"01457",@"01466",@"01635",@"09496",
                            @"08477",@"08512",@"08396",@"08388",@"08387",
                            @"08514",@"07468",@"01655",@"01648",@"01656",
                            @"01658",@"05979",@"04996",@"01654",@"01372",
                            @"01374",@"09969",@"09802",@"09912",@"09913",
                            @"01398",@"01377",@"01267",@"04998",@"01397",@"01392"];  // 01564-1-2345   10桁   5-1-4
    
    [dataArray addObject:arrayData1];
    
    
    NSArray *arrayData2 = @[@"0768",@"0770",@"0772",@"0774",@"0773",
                            @"0767",@"0771",@"0765",@"0748",@"0747",
                            @"0746",@"0826",@"0749",@"0776",@"0763",
                            @"0761",@"0766",@"0778",@"0824",@"0797",
                            @"0796",@"0555",@"0823",@"0798",@"0554",
                            @"0820",@"0795",@"0556",@"0791",@"0790",
                            @"0779",@"0558",@"0745",@"0794",@"0557",
                            @"0799",@"0738",@"0567",@"0565",@"0587",
                            @"0586",@"0566",@"0564",@"0798",@"0554",
                            @"0584",@"0581",@"0572",@"0574",@"0573",
                            @"0575",@"0576",@"0578",@"0577",@"0569",
                            @"0594",@"0827",@"0736",@"0735",@"0725",
                            @"0737",@"0739",@"0743",@"0742",@"0740",
                            @"0721",@"0599",@"0561",@"0562",@"0563",
                            @"0595",@"0596",@"0598",@"0597",@"0744",
                            @"0852",@"0956",@"0955",@"0954",@"0952",
                            @"0957",@"0959",@"0966",@"0965",@"0964",
                            @"0950",@"0949",@"0942",@"0940",@"0930",
                            @"0943",@"0944",@"0948",@"0947",@"0946",
                            @"0967",@"0968",@"0987",@"0986",@"0985",
                            @"0984",@"0993",@"0994",@"0997",@"0996",
                            @"0995",@"0983",@"0982",@"0973",@"0972",
                            @"0969",@"0974",@"0977",@"0980",@"0979",
                            @"0978",@"0920",@"0898",@"0855",@"0854",
                            @"0853",@"0553",@"0856",@"0857",@"0863",
                            @"0859",@"0858",@"0848",@"0847",@"0835",
                            @"0834",@"0833",@"0836",@"0837",@"0846",
                            @"0845",@"0838",@"0865",@"0866",@"0892",
                            @"0889",@"0887",@"0893",@"0894",@"0897",
                            @"0896",@"0895",@"0885",@"0884",@"0869",
                            @"0868",@"0867",@"0875",@"0875",@"0883",
                            @"0880",@"0879",@"0829",@"0550",@"0228",
                            @"0226",@"0225",@"0224",@"0229",@"0233",
                            @"0237",@"0235",@"0234",@"0223",@"0220",
                            @"0192",@"0191",@"0187",@"0193",@"0194",
                            @"0198",@"0197",@"0195",@"0238",@"0240",
                            @"0260",@"0259",@"0258",@"0257",@"0261",
                            @"0263",@"0266",@"0265",@"0264",@"0256",
                            @"0255",@"0243",@"0242",@"0241",@"0244",
                            @"0246",@"0254",@"0248",@"0247",@"0186",
                            @"0185",@"0144",@"0143",@"0142",@"0139",
                            @"0145",@"0146",@"0154",@"0153",@"0152",
                            @"0138",@"0137",@"0125",@"0124",@"0123",
                            @"0126",@"0133",@"0136",@"0135",@"0134",
                            @"0155",@"0156",@"0176",@"0175",@"0174",
                            @"0178",@"0179",@"0184",@"0183",@"0182",
                            @"0173",@"0172",@"0162",@"0158",@"0157",
                            @"0163",@"0164",@"0167",@"0166",@"0165",
                            @"0267",@"0250",@"0533",@"0422",@"0532",
                            @"0531",@"0436",@"0428",@"0536",@"0299",
                            @"0294",@"0293",@"0475",@"0295",@"0297",
                            @"0296",@"0495",@"0438",@"0466",@"0465",
                            @"0467",@"0478",@"0476",@"0470",@"0463",
                            @"0479",@"0493",@"0494",@"0439",@"0268",
                            @"0480",@"0460",@"0538",@"0537",@"0539",
                            @"0279",@"0548",@"0280",@"0282",@"0278",
                            @"0277",@"0269",@"0270",@"0274",@"0276",
                            @"0283",@"0551",@"0289",@"0287",@"0547",
                            @"0288",@"0544",@"0545",@"0284",@"0291",@"0285"];  // 0768-12-3123   10桁 4-2-4
    
    [dataArray addObject:arrayData2];
    
    
    
    NSArray *arrayData3 = @[@"0120",@"0570",@"0800",@"0990"];          // 0120-123-456  10桁  4-3-3
    
    [dataArray addObject:arrayData3];
    
    
    
    NSArray *arrayData4 = @[@"099",@"018",@"043",@"088",@"042",
                            @"054",@"058",@"098",@"095",@"097",
                            @"052",@"053",@"011",@"096",@"049",
                            @"015",@"048",@"072",@"084",@"028",
                            @"024",@"076",@"023",@"047",@"029",
                            @"075",@"025",@"055",@"026",@"079",
                            @"082",@"027",@"078",@"077",@"083",
                            @"022",@"086",@"089",@"045",@"044",
                            @"092",@"046",@"017",@"093",@"059",
                            @"073",@"019",@"087"];                     // 099-123-4567   10桁  3-3-4
    
    [dataArray addObject:arrayData4];
    
    
    NSArray *arrayData5 = @[@"050",@"020",@"070",@"080",@"090"];       // 050-1234-5678  11桁  3-4-4
    
    [dataArray addObject:arrayData5];
    
    
    NSArray *arrayData6 = @[@"04",@"03",@"06"];    // 03-1234-5678   10桁  2-4-4
    
    [dataArray addObject:arrayData6];
    
    
    
    return dataArray;
}

+ (BOOL)validateNumberCheck:(NSMutableArray*)dataArray telNumber:(NSString*)number
{
    
    

    
    if ([number length] <= 5) {
        return NO;
    }
    
    int arrayCount = 0;
    
    for (NSMutableArray *array in dataArray) {
        
        arrayCount++;
        for (NSString *num in array) {
            
            for (int i = 2; i < 5; i++) {
                
                if ([num isEqualToString:[number substringToIndex:i]]) {
                    NSLog(@"あった count = %d",arrayCount);
                    return YES;
                }
            }
        }
    }
    
    
//    $number = preg_replace('/[^\d]++/', '', $input);
//    foreach ($groups as $len => $group) {
//        $area = substr($number, 0, $len);
//        if (isset($group[$area])) {
//            $formatted = implode('-', array(
//                                            $area,
//                                            substr($number, $len, $group[$area]),
//                                            substr($number, $len + $group[$area])
//                                            ));
//            return strrchr($formatted, '-') !== '-' ? $formatted : $input;
//        }
//    }
    
//    $pattern = '/\A(00(?:[013-8]|2\d|91[02-9])\d)(\d++)\z/';
//    if (preg_match($pattern, $number, $matches)) {
//        return $matches[1] . '-' . $matches[2];
//    }
//    return $input;
    
    return YES;
}


@end
