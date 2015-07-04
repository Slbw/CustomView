//
//  HSQuestionView.m
//  CustomView
//
//  Created by vera wang on 15/7/4.
//  Copyright (c) 2015年 slbw. All rights reserved.
//

#import "HSQuestionView.h"

@implementation HSQuestionView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- ()initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];// 先调用父类的initWithFrame方法
    if (self) {
        [self initView:frame];
    }
    return self;
}


//初始化加载
-(void) initView:(CGRect)frame{

    
//    [self addSingleOption:frame];
      [self addMultiOption:frame];
    
}


//添加单选选项
-(void) addSingleOption:(CGRect)frame
{
    NSString *str=@"";
    for(int i=0;i<5;i++)
    {
        UIView *optionLast=[self viewWithTag:i+1];
        CGFloat contentHeight=0;
        if(optionLast!=nil)
        {
            CGFloat A=optionLast.frame.origin.y;
            CGFloat B=optionLast.frame.size.height;
            contentHeight=optionLast.frame.origin.y+optionLast.frame.size.height+10;
            
        }
        HSOption *option=[[HSOption alloc]initWithFrame:CGRectMake(frame.origin.x+10,contentHeight, frame.size.width-20, frame.size.height)];
        [option setTag:i+2];
       str = [str stringByAppendingString:@"大家好，我是vae大家大家好，我是vae"];
        [option setContent:str withMode:Single atIndex:i];
//        option.translatesAutoresizingMaskIntoConstraints = NO;
        [self addSubview:option];
    }
    
}

//添加单选选项
-(void) addMultiOption:(CGRect)frame
{
    NSString *str=@"";
    for(int i=0;i<5;i++)
    {
        UIView *optionLast=[self viewWithTag:i+1];
        CGFloat contentHeight=0;
        if(optionLast!=nil)
        {
            CGFloat A=optionLast.frame.origin.y;
            CGFloat B=optionLast.frame.size.height;
            contentHeight=optionLast.frame.origin.y+optionLast.frame.size.height+10;
            
        }
        HSOption *option=[[HSOption alloc]initWithFrame:CGRectMake(frame.origin.x+10,contentHeight, frame.size.width-20, frame.size.height)];
        [option setTag:i+2];
        str = [str stringByAppendingString:@"大家好，我是vae大家大家好，我是vae"];
        [option setContent:str withMode:Multiable atIndex:i];
        //        option.translatesAutoresizingMaskIntoConstraints = NO;
        [self addSubview:option];
    }
    
}



@end
