//
//  ViewController.h
//  iOS - View Transitions
//
//  Created by Mahaboobsab Nadaf on 01/10/16.
//  Copyright © 2016 com.NeoRays. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    UIView *view1;
    UIView *view2;
}
- (IBAction)flipFromRight:(id)sender;
- (IBAction)flipFromLeft:(id)sender;
- (IBAction)curlUp:(id)sender;

- (IBAction)curlDown:(id)sender;
- (IBAction)flipFromBottom:(id)sender;
- (IBAction)flipFromTop:(id)sender;
- (IBAction)dissolve:(id)sender;
- (IBAction)noTransition:(id)sender;

@end

