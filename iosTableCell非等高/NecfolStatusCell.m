//
//  NecfolStatusCell.m
//  iosTableCell非等高
//
//  Created by necfol on 2017/8/27.
//  Copyright © 2017年 Necfol. All rights reserved.
//

#import "NecfolStatusCell.h"

@implementation NecfolStatusCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

+(instancetype)cellWithTableView:(UITableView *)tableview {
    static NSString *ID = @"NecfolStatus";
    NecfolStatusCell *cell = [tableview dequeueReusableCellWithIdentifier:ID];
    if(cell == nil) {
        cell = [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([NecfolStatusCell class]) owner:nil options:nil] lastObject];
    }
    return cell;
}

@end
