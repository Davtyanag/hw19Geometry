//
//  ASViewController.m
//  hw19Geometry
//
//  Created by Анаит Давтян on 30.05.14.
//  Copyright (c) 2014 Arman Davtyan. All rights reserved.
//

#import "ASViewController.h"
#import "ASCheckerBoard.h"
@interface ASViewController ()

@property (strong,nonatomic) ASCheckerBoard *board;

@end

@implementation ASViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    NSLog(@"\nframe = %@\nbounds = %@", NSStringFromCGRect(self.view.frame), NSStringFromCGRect(self.view.bounds));
    self.board=[[ASCheckerBoard alloc]initWithFrame:CGRectMake(0, 80, 320, 320)];
    if(self.board){
        [self.view addSubview:self.board];
    }
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (NSUInteger) supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskAll;
}


-(void) didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation {
    [self.board changeColorOfBlackCheckers];
    [self.board changePositionsOfCheckers];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
