//
//  AppDelegate.h
//  SwitchingViews
//
//  Created by Tan Nhu on 7/21/13.
//  Copyright (c) 2013 tannhu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow              *window;
@property (strong, nonatomic) FirstViewController   *first;
@property (strong, nonatomic) SecondViewController  *second;
@property (strong, nonatomic) ThirdViewController   *third;
@property (strong, nonatomic) UIViewController      *active;

- (void)switchToFirstView;
- (void)switchToSecondView;
- (void)switchToThirdView;

@end
