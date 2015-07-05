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
    
    [self addMultiOption:[self addContent:@"请问，1+1等于多少请问，1+1等于多少请问，1+1等于多少请问，1+1等于多少请问，1+1等于多少请问，1+1等于多少请问，1+1等于多少请问，1+1等于多少请问，1+1等于多少请问，1+1等于多少请问，1+1等于多少"]];
    
}

-(CGFloat)addContent:(NSString*)contentText
{
    UILabel *content=[[UILabel alloc] initWithFrame:CGRectMake(self.frame.origin.x+10, 10.0f, self.frame.size.width-20, self.frame.size.height)];
    [content setText:contentText];
    
    //--------------
    CGSize size = [content sizeThatFits:CGSizeMake(content.frame.size.width, MAXFLOAT)];
    CGFloat limitHeight=(size.height+10)>50?(size.height+10):100;
    [content setLineBreakMode:NSLineBreakByWordWrapping];
    content.numberOfLines = 0; // 最关键的一句
    content.frame=CGRectMake(content.frame.origin.x , content.frame.origin.y, content.frame.size.width, limitHeight);
    content.font = [UIFont systemFontOfSize:14];
    [self addSubview:content];
    return content.frame.size.height+20;
}


//添加单选选项
-(void) addSingleOption:(CGFloat)tempHeight
{
    
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(onClick:)];
    
    NSString *str=@"";
    for(int i=0;i<4;i++)
    {
        UIView *optionLast=[self viewWithTag:i+1];
        CGFloat contentHeight=tempHeight;
        if(optionLast!=nil)
        {
            contentHeight=optionLast.frame.origin.y+optionLast.frame.size.height+10;
            
        }
        HSOption *option=[[HSOption alloc]initWithFrame:CGRectMake(self.frame.origin.x+10,contentHeight, self.frame.size.width-20, self.frame.size.height)];
        [option setTag:i+2];
        str = [str stringByAppendingString:@"大家好，我是vae大家大家好，我是vae"];
        [option setContent:str withMode:Single atIndex:i];
        [option addGestureRecognizer:tapGesture];//添加点击监听
        //        option.translatesAutoresizingMaskIntoConstraints = NO;
        [self addSubview:option];
    }
    
}

//添加单选选项
-(void) addMultiOption:(CGFloat)tempHeight
{
    
    NSString *str=@"";
    CGFloat lastHeight=0;
    for(int i=0;i<4;i++)
    {
        UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(onClick:)];
        UIView *optionLast=[self viewWithTag:i+1];
        CGFloat contentHeight=tempHeight;
        if(optionLast!=nil)
        {
            contentHeight=optionLast.frame.origin.y+optionLast.frame.size.height+10;
            
        }
        HSOption *option=[[HSOption alloc]initWithFrame:CGRectMake(self.frame.origin.x+10,contentHeight, self.frame.size.width-20, 0)];
        [option setTag:i+2];
        str = [str stringByAppendingString:@"大家好，我是vae大家大家好，我是vae"];
        [option setContent:str withMode:Multiable atIndex:i];
        [option addGestureRecognizer:tapGesture];//添加点击监听
        //        option.translatesAutoresizingMaskIntoConstraints = NO;
        [self addSubview:option];

    }
//    UIView *optionLast=[self viewWithTag:3+2];
//        [self setFrame:CGRectMake(self.frame.origin.x,self.frame.origin.y, self.frame.size.width,optionLast.frame.size.height+optionLast.frame.origin.y+80)];
    
}

//选项或者是按钮点击时的监听
-(void)onClick:(UITapGestureRecognizer *)recognizer
{
    if([recognizer.view isKindOfClass:[HSOption class]])
    {
        NSLog(((HSOption *)recognizer.view).chooseContent.text);
        
    }
}



@end
