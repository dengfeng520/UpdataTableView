//
//  HomeTableViewCell.m
//  UpdataListViweDeme
//
//  Created by rp.wang on 16/5/3.
//  Copyright © 2016年 rp.wang. All rights reserved.
//

#import "HomeTableViewCell.h"

@implementation HomeTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
-(void)SetHomeCellData :(HomeModel *)HModel
{
    self.HomeNametxt.text = HModel.name;
}
@end
