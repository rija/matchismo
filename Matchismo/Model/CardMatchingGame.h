//
//  CardMatchingGame.h
//  Matchismo
//
//  Created by rija on 20/03/2013.
//  Copyright (c) 2013 R Ménagé. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"
#import "Deck.h"

@interface CardMatchingGame : NSObject


// designated initializer
- (id) initWithCardCount:(NSUInteger)count
               UsingDeck:(Deck *) deck;
- (void) flipCardAtIndex:(NSUInteger)index;
- (Card *) cardAtIndex: (NSInteger)index;

@property (readonly,nonatomic) int score;

@end
