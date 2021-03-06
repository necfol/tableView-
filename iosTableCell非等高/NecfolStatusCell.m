//
//  NecfolStatusCell.m
//  iosTableCell非等高
//
//  Created by necfol on 2017/8/27.
//  Copyright © 2017年 Necfol. All rights reserved.
//

#import "NecfolStatusCell.h"
#import "NecfolStatus.h"

@interface NecfolStatusCell()
@property (weak, nonatomic) IBOutlet UIImageView *iconView;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UIImageView *vipView;
@property (weak, nonatomic) IBOutlet UILabel *contentLabel;
@property (weak, nonatomic) IBOutlet UIImageView *pictureView;

@end
@implementation NecfolStatusCell

- (void)awakeFromNib {
    [super awakeFromNib];
    self.contentLabel.preferredMaxLayoutWidth = [UIScreen mainScreen].bounds.size.width - 20;
}
//
//- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
//    [super setSelected:selected animated:animated];
//}

+(instancetype)cellWithTableView:(UITableView *)tableview {
    static NSString *ID = @"NecfolStatus";
    NecfolStatusCell *cell = [tableview dequeueReusableCellWithIdentifier:ID];
    if(cell == nil) {
        cell = [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass([NecfolStatusCell class]) owner:nil options:nil] lastObject];
    }
    return cell;
}

-(void)setStatus:(NecfolStatus *)status {
    _status = status;
    if ( status.isVip ) {
        self.nameLabel.textColor = [UIColor orangeColor];
        self.vipView.hidden = NO;
    } else {
        self.nameLabel.textColor = [UIColor blackColor];
        self.vipView.hidden = YES;
    }
    self.nameLabel.text = status.name;
    self.iconView.image = [UIImage imageNamed:status.icon];
    if (status.picture) {
        self.pictureView.hidden = NO;
        self.pictureView.image = [UIImage imageNamed:status.picture];
    } else {
        self.pictureView.hidden = YES;
    }
    self.contentLabel.text = status.text;
    [self layoutIfNeeded];
    if (self.pictureView.hidden) {
        status.cellHeight = CGRectGetMaxY(self.contentLabel.frame) + 10;
    } else {
        status.cellHeight = CGRectGetMaxY(self.pictureView.frame) + 10;
    }
    
}

-(CGFloat)height {
    if (self.pictureView.hidden) {
        return CGRectGetMaxY(self.contentLabel.frame) + 10;
    } else {
        return CGRectGetMaxY(self.pictureView.frame) + 10;
    }
}

@end
