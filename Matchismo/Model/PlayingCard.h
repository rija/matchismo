//
//  PlayingCard.h
//  Matchismo
//
//  Created by R Ménagé on 10/03/2013.
//  Copyright (c) 2013 R Ménagé. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray*)validSuits;
+ (NSUInteger)maxRank;

- (int)match:(NSArray *)otherCards;

@end
