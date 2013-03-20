//
//  CardMatchingGame.m
//  Matchismo
//
//  Created by rija on 20/03/2013.
//  Copyright (c) 2013 R Ménagé. All rights reserved.
//

#import "CardMatchingGame.h"

@interface CardMatchingGame ()
@property (readwrite,nonatomic) int score;
@property (strong,nonatomic) NSMutableArray *cards; //of Card
@end

@implementation CardMatchingGame


- (NSMutableArray *) cards
{
    if(!_cards) {
        _cards = [[NSMutableArray alloc]init];
    }
    return _cards;
}

- (id) init
{
    return nil;
}

- (id) initWithCardCount:(NSUInteger)count UsingDeck:(Deck *)deck
{
    self = [super init];
    if (self) {
        for (int i= 0; i < count; i++) {
            Card *card = [deck drawRandomCard];
            if (card) {
                self.cards[i] = card;
            }
            else {
                self = nil;
                break;
            }
            
        }
    }
    return self;
}
@end
