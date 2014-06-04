//
//  ASCheckerBoard.h
//  hw19Geometry
//
//  Created by Анаит Давтян on 30.05.14.
//  Copyright (c) 2014 Arman Davtyan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ASCheckerBoard : UIView

@property (strong,nonatomic) NSMutableArray* blackChecks;
@property (strong,nonatomic) NSMutableArray* redCheckers;
@property (strong,nonatomic) NSMutableArray* whiteCheckers;
-(void) changeColorOfBlackCheckers;
-(void) changePositionsOfCheckers;

@end
