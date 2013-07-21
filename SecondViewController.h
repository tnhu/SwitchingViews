//
//  SecondViewController.h
//  SwitchingViews
//
//  Created by Tan Nhu on 7/21/13.
//  Copyright (c) 2013 tannhu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController
  @property (weak, nonatomic) IBOutlet UIButton *goBackButton;

  - (IBAction)buttonTapped:(id)sender;
@end
