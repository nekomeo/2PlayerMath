//
//  Player.h
//  2PlayerMath
//
//  Created by Elle Ti on 2017-07-31.
//  Copyright © 2017 Elle Ti. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject
@property (nonatomic) NSInteger playerNumber;
@property (nonatomic) NSInteger lives;
@property (nonatomic) NSInteger score;

- (instancetype)initWithPlayerNumber:(NSInteger)playerNumber;
- (void)loseLife;
- (void)incrementScore;



@end
