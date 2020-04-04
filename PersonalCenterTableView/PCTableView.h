//
//  PCTableView.h
//  GG-IOS-DEVMGT
//
//  Created by 谢鑫 on 2020/4/4.
//  Copyright © 2020 Shae. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PCTableViewCellTop.h"
#import "PCTableViewCellBottom.h"
#import "PCTableViewHeader.h"
NS_ASSUME_NONNULL_BEGIN

@interface PCTableView : UITableView<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)PCTableViewCellTop*pCTableViewCellTop;
@property(nonatomic,strong)PCTableViewCellBottom*pCTableViewCellBottom;
@property(nonatomic,strong)PCTableViewHeader*pCTableViewHeader;
@end

NS_ASSUME_NONNULL_END
