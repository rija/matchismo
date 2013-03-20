//
//  CardGameViewController.m
//  Matchismo
//
//  Created by R Ménagé on 10/03/2013.
//  Copyright (c) 2013 R Ménagé. All rights reserved.
//

#import "CardGameViewController.h"
#import "PlayingCardDeck.h"
#import "Deck.h"

@interface CardGameViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipLabel;
@property (nonatomic) int flipCount;
@property (strong, nonatomic) Deck *deck;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *cardButtons;
@end

@implementation CardGameViewController


- (void) setCardButtons:(NSArray *)cardButtons
{
    _cardButtons = cardButtons;
    for (UIButton *cardButton in self.cardButtons) {
        Card *card = [self.deck drawRandomCard];
        [cardButton setTitle:card.contents forState:UIControlStateSelected];
    }
}

- (Deck*) deck
{
    if (!_deck) {
        _deck = [[PlayingCardDeck alloc]init];
    }
    
    return _deck;
}

- (IBAction)flipCard:(UIButton *)sender {
    
    [sender setTitle:[[self.deck drawRandomCard] contents] forState:UIControlStateSelected];
    
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
