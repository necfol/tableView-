//
//  NecfolStatus.m
//  iosTableCell非等高
//
//  Created by necfol on 2017/8/28.
//  Copyright © 2017年 Necfol. All rights reserved.
//

#import "NecfolStatus.h"

@implementation NecfolStatus

+(instancetype)statusWithDic:(NSDictionary *)dic {
    NecfolStatus *status = [[NecfolStatus alloc] init];
    [status setValuesForKeysWithDictionary:dic];
    return status;
}

@end
