//
//  JHViewController.m
//  JHActivityButtonExample
//
//  Created by justin howlett on 2013-05-31.
//  Copyright (c) 2013 JustinHowlett. All rights reserved.
//

#import "JHViewController.h"
#import "JHActivityButton.h"

@interface JHViewController (){
    UIScrollView *_masterScrollView;
}

@end

@implementation JHViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _masterScrollView = [[UIScrollView alloc]init];
    [self.view addSubview:_masterScrollView];
    
    CGFloat yLoc = 100;
    
    for (int i=0; i<11; i++){
        
        JHActivityButton* activityButton = [[JHActivityButton alloc]initFrame:CGRectMake(100, yLoc, 100, 50) style:JHActivityButtonStyleExpandDownBottom];
        [activityButton setBackgroundColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [activityButton setBackgroundColor:[UIColor blackColor] forState:UIControlStateHighlighted];
        //        [activityButton setBackgroundColor:[UIColor cyanColor] forState:UIControlStateSelected];
        
        [activityButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [activityButton setTitleColor:[UIColor whiteColor] forState:UIControlStateHighlighted];
        [activityButton setTitle:@"WWDC" forState:UIControlStateNormal];
        [activityButton.titleLabel setFont:[UIFont fontWithName:@"HelveticaNeue-UltraLight" size:22]];
        
        activityButton.easingFunction = BackEaseOut;
        activityButton.animationTime = 0.5;
        
        [activityButton.indicator setColor:[UIColor greenColor]];

        [_masterScrollView addSubview:activityButton];
        
        yLoc += 120;
    }

    
    [_masterScrollView setContentSize:CGSizeMake(self.view.bounds.size.width, yLoc)];

}

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    [_masterScrollView setFrame:self.view.bounds];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
