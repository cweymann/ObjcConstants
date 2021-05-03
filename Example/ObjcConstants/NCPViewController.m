//
//  NCPViewController.m
//  ObjcConstants
//
//  Created by Claus Weymann on 05/03/2021.
//  Copyright (c) 2021 Claus Weymann. All rights reserved.
//

#import "NCPViewController.h"
#import "ErrorConstant.h"
#import "ExternConstant.h"

@interface NCPViewController ()
@property (weak, nonatomic) IBOutlet UILabel *staticConstantLabel;
@property (weak, nonatomic) IBOutlet UILabel *externConstantLabel;

@end

@implementation NCPViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	self.staticConstantLabel.text = StaticConstantString;
	self.externConstantLabel.text = ExternConstantString;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
