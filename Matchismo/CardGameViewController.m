//
//  CardGameViewController.m
//  Matchismo
//
//  Created by R Ménagé on 10/03/2013.
//  Copyright (c) 2013 R Ménagé. All rights reserved.
//

#import "CardGameViewController.h"

@interface CardGameViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipLabel;
@property (nonatomic) int flipCount;
@end

@implementation CardGameViewController

- (IBAction)flipCard:(UIButton *)sender {
    
    sender.selected = !sender.isSelected;
    self.flipCount++;
    
    
}

- (void) setFlipCount:(int)flipCount
{
    _flipCount=flipCount;
    self.flipLabel.text = [NSString stringWithFormat:@"Flips: %d",self.flipCount];
    NSLog(@"flips updated to %d", self.flipCount);
}

@end
