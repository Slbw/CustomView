//
//  ViewController.m
//  CustomView
//
//  Created by vera wang on 15/7/4.
//  Copyright (c) 2015年 slbw. All rights reserved.
//

#import "HSQuestionView.h"
#import "ViewController.h"


@interface ViewController ()

//@property HSOption *option;

@property (strong,nonatomic) HSQuestionView *questionView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    self.option=[[HSOption alloc] initWithFrame:CGRectMake(0, 200,self.view.frame.size.width,50.0f)];
//    [self.option setContent:@"大家好，我是vae" withMode:Single atIndex:4];
//     self.option.translatesAutoresizingMaskIntoConstraints = NO;
//    [self.view addSubview:self.option];
//     UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(onClick:)];
    
        self.questionView=[[HSQuestionView alloc] initWithFrame:CGRectMake(0,20,self.view.frame.size.width,self.view.frame.size.height-20)];
//         self.questionView.translatesAutoresizingMaskIntoConstraints = NO;
    
        [self.view addSubview:self.questionView];
//    self.questionView.backgroundColor=[UIColor brownColor];
    
//    [self.questionView addGestureRecognizer:tapGesture];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//-(void) updateViewConstraints
//{
//    [super updateViewConstraints];
//    
//    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.questionView attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeWidth multiplier:1 constant:300]];
//
//}

//选项或者是按钮点击时的监听
//-(void)onClick:(UITapGestureRecognizer *)recognizer
//{
//    if([recognizer.view isKindOfClass:[HSOption class]])
//    {
//        //        NSLog(((HSOption *)recognizer.view).chooseContent.text);
//    }
//}


@end
