//
//  PCTableView.m
//  GG-IOS-DEVMGT
//
//  Created by 谢鑫 on 2020/4/4.
//  Copyright © 2020 Shae. All rights reserved.
//

#import "PCTableView.h"
static NSString* ReuseIdentifierTop=@"PCTableViewCellTop";
static NSString* ReuseIdentifierButtom=@"PCTableViewCellBottom";
@implementation PCTableView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style{
    self=[super initWithFrame:frame style:style];
    self.delegate=self;
    self.dataSource=self;
    [self registerClass:[PCTableViewCellTop class] forCellReuseIdentifier:ReuseIdentifierTop];
     [self registerClass:[PCTableViewCellBottom class] forCellReuseIdentifier:ReuseIdentifierButtom];
    //[self registerClass:[PCTableViewCellTop class] forCellReuseIdentifier:@"cellTop"];
    [self setTableHeaderView:[[PCTableViewHeader alloc]initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.width/2)]];
    return self;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    self.pCTableViewCellTop=[tableView dequeueReusableCellWithIdentifier:ReuseIdentifierTop];
    if (self.pCTableViewCellTop==nil) {
        self.pCTableViewCellTop=[[PCTableViewCellTop alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ReuseIdentifierTop];
    }
    self.pCTableViewCellBottom=[tableView dequeueReusableCellWithIdentifier:ReuseIdentifierButtom];
    if (self.pCTableViewCellBottom==nil) {
        self.pCTableViewCellBottom=[[PCTableViewCellBottom alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ReuseIdentifierButtom];
    }
    if (indexPath.row==4) {
        return self.pCTableViewCellBottom;
    }
    return self.pCTableViewCellTop;
}
@end
