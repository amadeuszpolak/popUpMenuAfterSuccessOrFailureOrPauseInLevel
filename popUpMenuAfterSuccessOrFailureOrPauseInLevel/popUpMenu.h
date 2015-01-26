//
//  popUpMenu.h
//  popUpMenuAfterSuccessOrFailureOrPauseInLevel
//
//  Created by Macbook on 26.01.2015.
//  Copyright (c) 2015 Amadeusz Polak. All rights reserved.
//

@import SpriteKit;

@interface popUpMenu : SKNode {
    
}

@property SKSpriteNode *continuePlay;
@property SKSpriteNode *mainMenu;
@property SKSpriteNode *restartLevel;
@property SKSpriteNode *nextLevel;



- (id)initMenuPaused:(CGSize)size;
- (id)initMenuAfterSuccess:(CGSize)size;
- (id)initMenuAfterFailure:(CGSize)size;

@end
