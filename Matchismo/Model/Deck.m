//
//  Deck.m
//  Matchismo
//
//  Created by R Ménagé on 10/03/2013.
//  Copyright (c) 2013 R Ménagé. All rights reserved.
//

#import "Deck.h"

@interface Deck()
@property (strong,nonatomic) NSMutableArray *cards;
@end


@implementation Deck

- (NSMutableArray*)cards {
    if(!_cards)
        _cards = [[NSMutableArray alloc]init];
    return _cards;
    
}

- (void)addCard:(Card *)card atTop:(BOOL)atTop
{
    if (atTop) {
        if (card)
            [self.cards insertObject:card atIndex:0];
    }
    else {
        if(card)
            [self.cards addObject:card];
    }
}

- (Card *)drawRandomCard
{
    Card *randomCard = nil; //unecessary as local variables start out at zero in ObjC
    
    if(self.cards.count) {
        unsigned index = arc4random() % self.cards.count;
        randomCard = self.cards[index];
        [self.cards removeObjectAtIndex:index];
    }
    
    return randomCard;
}

@end
