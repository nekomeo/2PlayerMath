//
//  Player.m
//  2PlayerMath
//
//  Created by Elle Ti on 2017-07-31.
//  Copyright © 2017 Elle Ti. All rights reserved.
//

#import "Player.h"

@interface Player()
@property (nonatomic) NSString *playerScore;
@property (nonatomic) NSString *playerLives;

@end

@implementation Player

- (instancetype)initWithPlayerNumber:(NSInteger)playerNumber
{
    if (self = [super init])
    {
        _lives = 3;
        _score = 0;
        _playerNumber = playerNumber;
    }
    return self;
}

- (void)loseLife
{
    self.lives -= 1;
}

- (void)incrementScore
{
    self.score += 1;
}

@end
