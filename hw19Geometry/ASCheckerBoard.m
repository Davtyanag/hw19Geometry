//
//  ASCheckerBoard.m
//  hw19Geometry
//
//  Created by Анаит Давтян on 30.05.14.
//  Copyright (c) 2014 Arman Davtyan. All rights reserved.
//

#import "ASCheckerBoard.h"


@implementation ASCheckerBoard

- (id)initWithFrame:(CGRect)frame
{
    self.blackChecks=[NSMutableArray array];
    self.whiteCheckers=[NSMutableArray array];
    self.redCheckers=[NSMutableArray array];
    self = [super initWithFrame:frame];
    if (self) {
         for (int i=0; i<8; i++) {
             for (int j=0; j<8; j++) {
                 if (j%2==0 && i%2==1) {
                     UIView* view1 = [[UIView alloc] initWithFrame:CGRectMake(i*40, j*40, 40, 40)];
                     view1.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:1];
                     [self.blackChecks addObject:view1];
                     UIView* view2 =[[UIView alloc]init];
                     if(j<3){
                         view2 = [[UIView alloc] initWithFrame:CGRectMake(i*40+10, j*40+10, 20, 20)];
                         view2.backgroundColor = [[UIColor redColor] colorWithAlphaComponent:1];
                         view2.layer.cornerRadius=10.f;
                         [self.redCheckers addObject:view2];
                     }
                     if(j>4){
                         view2 = [[UIView alloc] initWithFrame:CGRectMake(i*40+10, j*40+10, 20, 20)];
                         view2.backgroundColor = [[UIColor whiteColor] colorWithAlphaComponent:1];
                         view2.layer.cornerRadius=10.f;
                         [self.whiteCheckers addObject:view2];
                     }
                     [self addSubview:view1];
                     [self addSubview:view2];
                 }
                 else if(j%2==1 && i%2==0){
                     UIView* view1 = [[UIView alloc] initWithFrame:CGRectMake(i*40, j*40, 40, 40)];
                     view1.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:1];
                     [self.blackChecks addObject:view1];
                     UIView* view2 =[[UIView alloc]init];
                     if(j<3){
                            view2 = [[UIView alloc] initWithFrame:CGRectMake(i*40+10, j*40+10, 20, 20)];
                            view2.backgroundColor = [[UIColor redColor] colorWithAlphaComponent:1];
                            view2.layer.cornerRadius=10.f;
                         
                            [self.redCheckers addObject:view2];
                     }
                     if(j>4){
                         view2 = [[UIView alloc] initWithFrame:CGRectMake(i*40+10, j*40+10, 20, 20)];
                         view2.backgroundColor = [[UIColor whiteColor] colorWithAlphaComponent:1];
                         view2.layer.cornerRadius=10.f;
                         [self.whiteCheckers addObject:view2];
                     }
                     [self addSubview:view1];
                     [self addSubview:view2];
                 }else{
                     UIView* view1 = [[UIView alloc] initWithFrame:CGRectMake(i*40, j*40, 40, 40)];
                     view1.backgroundColor = [[UIColor whiteColor] colorWithAlphaComponent:1];
                     [self addSubview:view1];
         
                 }
             }
         }
         self.autoresizingMask= UIViewAutoresizingFlexibleRightMargin| UIViewAutoresizingFlexibleLeftMargin|
         UIViewAutoresizingFlexibleTopMargin| UIViewAutoresizingFlexibleBottomMargin;
         self.layer.borderWidth=2.f;
    }
    return self;
}

-(void) changeColorOfBlackCheckers{
    UIColor* color=[UIColor colorWithRed:(float)(arc4random()%256)/255 green:(float)(arc4random()%256)/255 blue:(float)(arc4random()%256)/255 alpha:1.0f ];
    for (UIView* checker in self.blackChecks) {
        checker.backgroundColor=color;
    }
    
}

-(void) changePositionsOfCheckers{
    [UIView animateWithDuration:3.0 animations:^{
        
        CGRect whiteRect = CGRectZero;
        CGRect blackRect = CGRectZero;
        
        for (int i = 0; i < 12; i++) {
            UIView *white = [self.whiteCheckers objectAtIndex:arc4random_uniform(12)];
            UIView *black = [self.redCheckers objectAtIndex:arc4random_uniform(12)];
            
            whiteRect = white.frame;
            blackRect = black.frame;
            
            [self bringSubviewToFront:black];
            black.frame = whiteRect;
            [self bringSubviewToFront:white];
            white.frame = blackRect;
        }
    }];
    
}


@end
