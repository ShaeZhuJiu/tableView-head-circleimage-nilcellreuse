//
//  PCTableViewHeader.m
//  GG-IOS-DEVMGT
//
//  Created by 谢鑫 on 2020/4/4.
//  Copyright © 2020 Shae. All rights reserved.
//

#import "PCTableViewHeader.h"

@implementation PCTableViewHeader

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        UIImageView *bacgroundImg=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"PCHeaderImg"]];
        bacgroundImg.frame=frame;
        [self addSubview:bacgroundImg];
        
        UIImageView *headImage=[[UIImageView alloc]initWithFrame:CGRectMake(100, 40, 100, 100)];
        headImage.backgroundColor=[UIColor clearColor];
        
        headImage.image=[self clipImageView:[UIImage imageNamed:@"fingerprint"]];
        
        [self addSubview:headImage];
        
    }
    return self;
}
//裁剪一个图片为圆形
-(UIImage *)clipImageView:(UIImage *)image{
    //开启上下文
    UIGraphicsBeginImageContextWithOptions(image.size, NO, 0.0);
    //  获取路径
    UIBezierPath *path=[UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, image.size.width, image.size.height)];
    //裁剪圆形
    [path addClip];
    //n把图片塞进上下文
    [image drawInRect:CGRectMake(0, 0, image.size.width, image.size.height)];
    //保存新图片
    UIImage *newImage=UIGraphicsGetImageFromCurrentImageContext();
    //关闭上下文
    UIGraphicsEndImageContext();
    return  newImage;
    
}
@end
