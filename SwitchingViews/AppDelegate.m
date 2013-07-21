//
//  AppDelegate.m
//  SwitchingViews
//
//  Created by Tan Nhu on 7/21/13.
//  Copyright (c) 2013 tannhu. All rights reserved.
//

#import "AppDelegate.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

    // just init all needed views
    self.first  = [[FirstViewController alloc] init];
    self.second = [[SecondViewController alloc] init];
    self.third  = [[ThirdViewController alloc] init];
  
    // set transition when switching second view
    self.first.modalTransitionStyle  = UIModalTransitionStyleCoverVertical;
    self.second.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
    self.third.modalTransitionStyle  = UIModalTransitionStyleCoverVertical;
  
    // set initial root view, save active view
    self.window.rootViewController   = self.active = self.first;

    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
  // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
  // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
  // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
  // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
  // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
  // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
  // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

- (void)switchToFirstView
{
  if (self.active != self.first) {
    [self.third dismissViewControllerAnimated:NO completion:^(void) {
      [self.second dismissViewControllerAnimated:YES completion:^(void) {
        self.active = self.first;
      }];
    }];
  }
}

- (void)switchToSecondView
{
  if (self.active != self.second) {
    [self.active presentViewController:self.second animated:YES completion:nil];
    self.active = self.second;
  }
}

- (void)switchToThirdView
{
  if (self.active != self.third) {
    [self.active presentViewController:self.third animated:YES completion:nil];
    self.active = self.third;
  }
}

@end
