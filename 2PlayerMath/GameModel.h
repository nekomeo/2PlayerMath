//
//  GameModel.h
//  2PlayerMath
//
//  Created by Elle Ti on 2017-07-31.
//  Copyright © 2017 Elle Ti. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

@interface GameModel : NSObject

@property (nonatomic, strong) Player *player1;
@property (nonatomic, strong) Player *player2;
@property (nonatomic) BOOL gameState;

- (NSString *)questionGenerator;
- (NSString *)playerAnswer:(NSInteger)input;
- (void)switchToNextPlayer;

@end
