//
//  NecfolStatusCell.h
//  iosTableCell非等高
//
//  Created by necfol on 2017/8/27.
//  Copyright © 2017年 Necfol. All rights reserved.
//

#import <UIKit/UIKit.h>

@class NecfolStatus;
@interface NecfolStatusCell : UITableViewCell

+(instancetype) cellWithTableView:(UITableView *)tableview;
@property (nonatomic, strong) NecfolStatus *status;

-(CGFloat)height;
@end
