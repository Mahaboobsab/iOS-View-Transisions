//
//  ViewController.m
//  iOS - View Transitions
//
//  Created by Mahaboobsab Nadaf on 01/10/16.
//  Copyright © 2016 com.NeoRays. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self setUpView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)setUpView{
    view1 = [[UIView alloc]initWithFrame:self.view.frame];
    view1.backgroundColor = [UIColor greenColor];
    view2 = [[UIView alloc]initWithFrame:self.view.frame];
    view2.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:view1];
    [self.view sendSubviewToBack:view1];
    
}

-(void)doTransitionWithType:(UIViewAnimationOptions)animationTransitionType{
    if ([[self.view subviews] containsObject:view2 ]) {
        [UIView transitionFromView:view2
                            toView:view1
                          duration:2
                           options:animationTransitionType
                        completion:^(BOOL finished){
                            [view2 removeFromSuperview];
                        }];
        [self.view addSubview:view1];
        [self.view sendSubviewToBack:view1];
    }
    else{
        
        [UIView transitionFromView:view1
                            toView:view2
                          duration:2
                           options:animationTransitionType
                        completion:^(BOOL finished){
                            [view1 removeFromSuperview];
                        }];
        [self.view addSubview:view2];
        [self.view sendSubviewToBack:view2];
        
    }
}
- (IBAction)flipFromRight:(id)sender {
    
    
     [self doTransitionWithType:UIViewAnimationOptionTransitionFlipFromRight];
}

- (IBAction)flipFromLeft:(id)sender {
    [self doTransitionWithType:UIViewAnimationOptionTransitionFlipFromLeft];
}

- (IBAction)curlUp:(id)sender {
    [self doTransitionWithType:UIViewAnimationOptionTransitionCurlUp];
}

- (IBAction)curlDown:(id)sender {
     [self doTransitionWithType:UIViewAnimationOptionTransitionCurlDown];
}

- (IBAction)flipFromBottom:(id)sender {
    [self doTransitionWithType:UIViewAnimationOptionTransitionFlipFromBottom];
}

- (IBAction)flipFromTop:(id)sender {
    [self doTransitionWithType:UIViewAnimationOptionTransitionFlipFromTop];
}

- (IBAction)dissolve:(id)sender {
    [self doTransitionWithType:UIViewAnimationOptionTransitionCrossDissolve];
}

- (IBAction)noTransition:(id)sender {
     [self doTransitionWithType:UIViewAnimationOptionTransitionNone];
}
@end
