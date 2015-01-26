//
//  GameScene.m
//  popUpMenuAfterSuccessOrFailureOrPauseInLevel
//
//  Created by Macbook on 26.01.2015.
//  Copyright (c) 2015 Amadeusz Polak. All rights reserved.
//

#import "popUpMenu.h"

#import "GameScene.h"

@interface GameScene ()

@property (nonatomic, strong) SKSpriteNode *afterLose;
@property (nonatomic, strong) SKSpriteNode *afterWin;
@property (nonatomic, strong) SKSpriteNode *afterPause;
@property (nonatomic, strong) popUpMenu *menu;

@end

@implementation GameScene

-(void)didMoveToView:(SKView *)view {
    _afterLose = [SKSpriteNode spriteNodeWithImageNamed:@"lose.png"];
    _afterLose.position = CGPointMake(self.size.width/2, 2*self.size.height/3);
    [self addChild:_afterLose];
    
    _afterWin = [SKSpriteNode spriteNodeWithImageNamed:@"win.png"];
    _afterWin.position = CGPointMake(self.size.width/2, self.size.height/2);
    [self addChild:_afterWin];
    
    _afterPause = [SKSpriteNode spriteNodeWithImageNamed:@"pause.png"];
    _afterPause.position = CGPointMake(self.size.width/2, self.size.height/3);
    [self addChild:_afterPause];
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    for (UITouch *touch in touches) {
        CGPoint location = [touch locationInNode:self];
        if (CGRectContainsPoint(self.afterLose.frame, location)) {
            _menu = [[popUpMenu alloc] initMenuAfterFailure:self.size];
            _menu.position = CGPointMake(self.size.width/2, self.size.height/2);
            [self addChild:_menu];
        }
        if (CGRectContainsPoint(self.afterWin.frame, location)) {
            _menu = [[popUpMenu alloc] initMenuAfterSuccess:self.size];
            _menu.position = CGPointMake(self.size.width/2, self.size.height/2);
            [self addChild:_menu];
        }
        if (CGRectContainsPoint(self.afterPause.frame, location)) {
            _menu = [[popUpMenu alloc] initMenuPaused:self.size];
            _menu.position = CGPointMake(self.size.width/2, self.size.height/2);
            [self addChild:_menu];
        }
    }
}

-(void)update:(CFTimeInterval)currentTime {

}

@end
