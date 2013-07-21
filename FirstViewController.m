//
//  FirstViewController.m
//  SwitchingViews
//
//  Created by Tan Nhu on 7/21/13.
//  Copyright (c) 2013 tannhu. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (IBAction)buttonTapped:(id)sender
{
  [[[UIApplication sharedApplication] delegate] performSelector:@selector(switchView)];  
  NSLog(@"Go to second");
}

@end
