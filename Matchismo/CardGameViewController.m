//
//  CardGameViewController.m
//  Matchismo
//
//  Created by R Ménagé on 10/03/2013.
//  Copyright (c) 2013 R Ménagé. All rights reserved.
//

#import "CardGameViewController.h"
#import "PlayingCardDeck.h"
#import "Card.h"

@interface CardGameViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipLabel;
@property (nonatomic) int flipCount;
@property (strong, nonatomic) PlayingCardDeck *deckOfPlayingCards;
@end

@implementation CardGameViewController

- (void) viewDidLoad
{
    [super viewDidLoad];
    self.deckOfPlayingCards = [[PlayingCardDeck alloc]init];
}

- (IBAction)flipCard:(UIButton *)sender {
    
    Card *randomCard = [self.deckOfPlayingCards drawRandomCard];
    NSLog(@"drawn card: %@",randomCard);
    
    if(sender.isSelected) {
        [sender setTitle:[randomCard contents] forState:UIControlStateSelected];
        [sender setNeedsDisplay];
        sender.selected = !sender.isSelected;
    }
    else {
        sender.selected = !sender.isSelected;
    }
       
    

    self.flipCount++;
    
    
}

- (void) setFlipCount:(int)flipCount
{
    _flipCount=flipCount;
    self.flipLabel.text = [NSString stringWithFormat:@"Flips: %d",self.flipCount];
    NSLog(@"flips updated to %d", self.flipCount);
}



@end
