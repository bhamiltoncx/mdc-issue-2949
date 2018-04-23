//
//  ViewController.m
//  BottomSheetTest
//
//  Created by Ben Hamilton on 4/18/18.
//  Copyright © 2018 Ben Hamilton. All rights reserved.
//

#import "ViewController.h"
#import "MDCBottomSheetController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidAppear:(BOOL)animated {
  [super viewDidAppear:animated];
  UIViewController *contentVC = [[UIViewController alloc] initWithNibName:nil bundle:nil];
  contentVC.view.backgroundColor = [UIColor redColor];
  contentVC.preferredContentSize = CGSizeMake(300, 200);
  contentVC.modalPresentationStyle = UIModalPresentationPopover;
  MDCBottomSheetController *controller =
      [[MDCBottomSheetController alloc] initWithContentViewController:contentVC];
  contentVC.popoverPresentationController.sourceView = self.view;

  [self presentViewController:controller
                     animated:YES
                   completion:^{

                   }];
}

@end
