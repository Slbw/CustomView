//
//  HSOption.h
//  CustomView
//
//  Created by vera wang on 15/7/4.
//  Copyright (c) 2015年 slbw. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HSOption : UIView
@property (weak, nonatomic) IBOutlet UILabel *chooseIndex;
@property (weak, nonatomic) IBOutlet UILabel *chooseContent;

typedef enum{
    
    Single,// 单选模式
    Multiable//多选模式
    
} OptionMode;

//错误的颜色
#define HS_COLOR_ERROR ([UIColor colorWithRed:250.0/255 green:90.0/255 blue:38.0/255 alpha:1])

//错误的颜色
#define HS_COLOR_WARNING ([UIColor colorWithRed:250.0/255 green:250.0/255 blue:38.0/255 alpha:1])

//错误的颜色
#define HS_COLOR_RIGHT ([UIColor colorWithRed:250.0/255 green:90.0/255 blue:38.0/255 alpha:1])

//错误的颜色
#define HS_COLOR_NOMAL ([UIColor colorWithRed:250.0/255 green:90.0/255 blue:38.0/255 alpha:1])


//设置内容 类型 和选项位置(如:A B C D)
-(void)setContent:(NSString*)str withMode:(OptionMode)mode atIndex:(NSInteger) index;



@end
