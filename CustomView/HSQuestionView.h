//
//  HSQuestionView.h
//  CustomView
//
//  Created by vera wang on 15/7/4.
//  Copyright (c) 2015年 slbw. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HSOption.h"


//选项被点击的协议
@protocol OptionClickDelegate <NSObject>
//在作答的时候触发 答案内容 问题id
@required
-(void)onAnswer:(NSString*)content byId:(NSInteger)questionId;
@end

@interface HSQuestionView : UIView
{
    id<OptionClickDelegate> delegate;
}

@property(nonatomic,retain)id delegate;
@end