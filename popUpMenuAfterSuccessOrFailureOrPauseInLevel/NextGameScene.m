//
//  GameScene.m
//  popUpMenuAfterSuccessOrFailureOrPauseInLevel
//
//  Created by Macbook on 26.01.2015.
//  Copyright (c) 2015 Amadeusz Polak. All rights reserved.
//

#import "popUpMenu.h"

#import "NextGameScene.h"

@interface NextGameScene ()

@property (nonatomic, strong) SKSpriteNode *back;

@end

@implementation NextGameScene

-(void)didMoveToView:(SKView *)view {
    _back = [SKSpriteNode spriteNodeWithImageNamed:@"back.png"];
    _back.position = CGPointMake(self.size.width/2, self.size.height/2);
    [self addChild:_back];
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    for (UITouch *touch in touches) {
        CGPoint location = [touch locationInNode:self];
        if (CGRectContainsPoint(self.back.frame, location)) {
            
        }
    }
}

-(void)update:(CFTimeInterval)currentTime {

}

@end
