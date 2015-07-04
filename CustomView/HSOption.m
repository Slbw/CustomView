//
//  HSOption.m
//  CustomView
//
//  Created by vera wang on 15/7/4.
//  Copyright (c) 2015年 slbw. All rights reserved.
//

#import "HSOption.h"

@implementation HSOption

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (HSOption *)initWithFrame:(CGRect)frame{
    
    HSOption *option= [[[NSBundle mainBundle] loadNibNamed:@"HSOption" owner:self options:nil] objectAtIndex:0];
    [option initData];
    option.frame=frame;
    return option;
}


//1
- (HSOption *)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        
    }
    return self;
}

//初始化控件数据
-(void) initData{
    //设置圆角
    [self.chooseIndex.layer setMasksToBounds:YES];
    self.chooseIndex.backgroundColor=HS_COLOR_ERROR;
    self.chooseContent.textColor=HS_COLOR_ERROR;
    [self.layer setCornerRadius:6];
    [self.layer setBorderWidth:1.2f];
    [self.layer setBorderColor:HS_COLOR_ERROR.CGColor];
}

//设置单选还是多选的模式
-(void) setMode:(OptionMode) mode{
    
    if(mode==Single)
    {
        [self.chooseIndex.layer setCornerRadius:self.chooseIndex.frame.size.width/2];
    }
    else if(mode==Multiable)
    {
        [self.chooseIndex.layer setCornerRadius:self.chooseIndex.frame.size.width/7];
    }
    
}

//设置内容 类型 和选项位置(如:A B C D)
-(void)setContent:(NSString*)str withMode:(OptionMode)mode atIndex:(NSInteger) index
{
    [self setMode:mode];
    self.chooseContent.text=str;
    self.chooseIndex.text=[NSString stringWithFormat:@"%c", (65+index)];
    CGSize size = [self.chooseContent sizeThatFits:CGSizeMake(self.chooseContent.frame.size.width, MAXFLOAT)];
    CGFloat limitHeight=(size.height+10)>50?(size.height+10):50;
    self.chooseContent.frame=CGRectMake(self.chooseContent.frame.origin.x , self.chooseContent.frame.origin.y, self.chooseContent.frame.size.width, limitHeight);
    self.chooseContent.font = [UIFont systemFontOfSize:14];
    self.frame=CGRectMake(self.frame.origin.x , self.frame.origin.y, self.frame.size.width,limitHeight);
}







@end
