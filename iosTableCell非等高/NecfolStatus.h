//
//  NecfolStatus.h
//  iosTableCell非等高
//
//  Created by necfol on 2017/8/28.
//  Copyright © 2017年 Necfol. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NecfolStatus : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *text;
@property (nonatomic, strong) NSString *icon;
@property (nonatomic, strong) NSString *picture;
@property (assign, nonatomic, getter=isVip) BOOL vip;
@property (assign, nonatomic) CGFloat cellHeight;

+(instancetype)statusWithDic:(NSDictionary *)dic;
@end
