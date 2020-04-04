//
//  PCTableViewCellTop.m
//  GG-IOS-DEVMGT
//
//  Created by 谢鑫 on 2020/4/4.
//  Copyright © 2020 Shae. All rights reserved.
//

#import "PCTableViewCellTop.h"

@implementation PCTableViewCellTop

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self=[super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if(self){
            self=[[[NSBundle mainBundle] loadNibNamed:reuseIdentifier owner:self options:nil]firstObject];
    }
    return self;
}
@end
