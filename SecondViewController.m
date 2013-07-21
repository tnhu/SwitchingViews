//
//  SecondViewController.m
//  SwitchingViews
//
//  Created by Tan Nhu on 7/21/13.
//  Copyright (c) 2013 tannhu. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

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

- (void)viewDidAppear:(BOOL)animated
{
    NSLog(@"viewDidAppear");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (IBAction)buttonTapped:(id)sender
{
    NSLog(@"Go back");
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
