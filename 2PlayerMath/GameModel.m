//
//  GameModel.m
//  2PlayerMath
//
//  Created by Elle Ti on 2017-07-31.
//  Copyright © 2017 Elle Ti. All rights reserved.
//

#import "GameModel.h"

@interface GameModel()

@property (nonatomic, weak) NSString *question;
@property (nonatomic, strong) Player *currentPlayer;
@property (nonatomic, assign) NSInteger answer;

@end

@implementation GameModel

- (instancetype)init
{
    if (self = [super init])
    {
        self.player1 = [[Player alloc] initWithPlayerNumber:1];
        self.player2 = [[Player alloc] initWithPlayerNumber:2];
        self.currentPlayer = self.player1;
        self.gameState = YES;
    }
    return self;
}

- (NSString *)questionGenerator
{
    NSInteger num1 = arc4random_uniform(20);
    NSInteger num2 = arc4random_uniform(20);
    
    self.answer = num1 + num2;
    [self generateStringQuestion:num1 num2:num2];
    
    return self.question;
}

- (void)generateStringQuestion:(NSInteger)num1 num2:(NSInteger)num2
{
    if (self.gameState)
    {
        self.question = [NSString stringWithFormat:@"Player %ld: What is %li + %li?", (long)self.currentPlayer.playerNumber, num1, num2];
    }
}

-(void)switchToNextPlayer {
    
    if (self.currentPlayer == self.player1) {
        self.currentPlayer = self.player2;
    }else {
        self.currentPlayer = self.player1;
    }
}

- (NSString *)playerAnswer:(NSInteger)input
{
    
    if (self.answer == input)
    {
        [self.currentPlayer incrementScore];
        return @"Right!";
    }
    [self.currentPlayer loseLife];
    [self gameOver];
    return @"Wrong!";
 
}

- (void)gameOver
{
    if ([self.currentPlayer lives] == 0)
    {
        self.gameState = NO;
        self.question = [NSString stringWithFormat:@"Game over. Player %ld Lost.", (long)self.currentPlayer.playerNumber];
    }
}

@end
