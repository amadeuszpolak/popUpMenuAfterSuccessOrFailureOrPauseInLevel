//
//  GameScene.m
//  popUpMenuAfterSuccessOrFailureOrPauseInLevel
//
//  Created by Macbook on 26.01.2015.
//  Copyright (c) 2015 Amadeusz Polak. All rights reserved.
//

#import "popUpMenu.h"

@implementation popUpMenu

-(id)initMenuPaused:(CGSize)size {
    if ((self = [super init])) {
        
        self.userInteractionEnabled = YES;
        
        SKSpriteNode *paused;
        paused = [SKSpriteNode spriteNodeWithImageNamed:@"paused.png"];
        paused.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame));
        [self addChild:paused];
        
        SKTexture *continuePlayTexture = [SKTexture textureWithImageNamed:@"continue.png"];
        SKTexture *restartLevelTexture = [SKTexture textureWithImageNamed:@"replay.png"];
        SKTexture *mainMenuTexture = [SKTexture textureWithImageNamed:@"menu2.png"];

        self.continuePlay = [SKSpriteNode spriteNodeWithTexture:continuePlayTexture];
        self.continuePlay.position = CGPointMake(0, size.height/2-135);
        [self addChild:self.continuePlay];
        
        self.restartLevel = [SKSpriteNode spriteNodeWithTexture:restartLevelTexture];
        self.restartLevel.position = CGPointMake(0, size.height/2-180);
        [self addChild:self.restartLevel];
        
        self.mainMenu = [SKSpriteNode spriteNodeWithTexture:mainMenuTexture];
        self.mainMenu.position = CGPointMake(0, size.height/2-230);
        [self addChild:self.mainMenu];
        
    }
    
    return self;
}

-(id)initMenuAfterSuccess:(CGSize)size{
    if ((self = [super init])) {
        self.userInteractionEnabled = YES;
        
        SKSpriteNode *menuSuccess = menuSuccess = [SKSpriteNode spriteNodeWithImageNamed:@"levelEndLayer.png"];
        menuSuccess.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame));
        [self addChild:menuSuccess];
        
        SKTexture *nextLevelTexture = [SKTexture textureWithImageNamed:@"next_level.png"];
        SKTexture *restartLevelTexture = [SKTexture textureWithImageNamed:@"replay.png"];
        SKTexture *mainMenuTexture = [SKTexture textureWithImageNamed:@"menu2.png"];
    
        self.nextLevel = [SKSpriteNode spriteNodeWithTexture:nextLevelTexture];
        self.nextLevel.position = CGPointMake(0, size.height/2-135);
        [self addChild:self.nextLevel];
        
        self.restartLevel = [SKSpriteNode spriteNodeWithTexture:restartLevelTexture];
        self.restartLevel.position = CGPointMake(0, size.height/2-180);
        [self addChild:self.restartLevel];
        
        self.mainMenu = [SKSpriteNode spriteNodeWithTexture:mainMenuTexture];
        self.mainMenu.position = CGPointMake(0, size.height/2-230);
        [self addChild:self.mainMenu];
    
    }
    
    return self;
}

-(id)initMenuAfterFailure:(CGSize)size {
    if ((self = [super init])) {
        self.userInteractionEnabled = YES;
        
        SKTexture *restartLevelTexture = [SKTexture textureWithImageNamed:@"replay.png"];
        SKTexture *mainMenuTexture = [SKTexture textureWithImageNamed:@"menu2.png"];
        
        SKSpriteNode *menuFailure = menuFailure = [SKSpriteNode spriteNodeWithImageNamed:@"levelEndLayerFailed.png"];
        menuFailure.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame));
        [self addChild:menuFailure];

        self.restartLevel = [SKSpriteNode spriteNodeWithTexture:restartLevelTexture];
        self.restartLevel.position = CGPointMake(0, size.height/2-160);
        [self addChild:self.restartLevel];
        
        self.mainMenu = [SKSpriteNode spriteNodeWithTexture:mainMenuTexture];
        self.mainMenu.position = CGPointMake(0, size.height/2-205);
        [self addChild:self.mainMenu];
    }
    
    return self;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    for (UITouch *touch in touches) {
        
        CGPoint location = [touch locationInNode:self];
        
        SKTexture *continuePlayTexture = [SKTexture textureWithImageNamed:@"continue_taped.png"];
        SKTexture *restartLevelTexture = [SKTexture textureWithImageNamed:@"replay_taped.png"];
        SKTexture *mainMenuTexture = [SKTexture textureWithImageNamed:@"menu2_taped.png"];
        SKTexture *nextLevelTexture = [SKTexture textureWithImageNamed:@"next_level_taped.png"];
        
        SKTexture *continuePlayTexture1 = [SKTexture textureWithImageNamed:@"continue.png"];
        SKTexture *restartLevelTexture1 = [SKTexture textureWithImageNamed:@"replay.png"];
        SKTexture *mainMenuTexture1 = [SKTexture textureWithImageNamed:@"menu2.png"];
        SKTexture *nextLevelTexture1 = [SKTexture textureWithImageNamed:@"next_level.png"];
        
        if (CGRectContainsPoint(self.continuePlay.frame, location) || CGRectContainsPoint(self.restartLevel.frame, location) || CGRectContainsPoint(self.mainMenu.frame, location) || CGRectContainsPoint(self.nextLevel.frame, location)) {
            if (CGRectContainsPoint(self.continuePlay.frame, location)) {
                self.continuePlay.texture = continuePlayTexture;
            }
            if (CGRectContainsPoint(self.restartLevel.frame, location)) {
                self.restartLevel.texture = restartLevelTexture;
            }
            if (CGRectContainsPoint(self.mainMenu.frame, location)) {
                self.mainMenu.texture = mainMenuTexture;
            }
            if (CGRectContainsPoint(self.nextLevel.frame, location)) {
                self.nextLevel.texture = nextLevelTexture;
            }
        }
        else {
            self.continuePlay.texture = continuePlayTexture1;
            self.restartLevel.texture = restartLevelTexture1;
            self.mainMenu.texture = mainMenuTexture1;
            self.nextLevel.texture = nextLevelTexture1;
        }
    }
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    for (UITouch *touch in touches) {
        
        CGPoint location = [touch locationInNode:self];
        
        SKTexture *continuePlayTexture = [SKTexture textureWithImageNamed:@"continue_taped.png"];
        SKTexture *restartLevelTexture = [SKTexture textureWithImageNamed:@"replay_taped.png"];
        SKTexture *mainMenuTexture = [SKTexture textureWithImageNamed:@"menu2_taped.png"];
        SKTexture *nextLevelTexture = [SKTexture textureWithImageNamed:@"next_level_taped.png"];
        
        SKTexture *continuePlayTexture1 = [SKTexture textureWithImageNamed:@"continue.png"];
        SKTexture *restartLevelTexture1 = [SKTexture textureWithImageNamed:@"replay.png"];
        SKTexture *mainMenuTexture1 = [SKTexture textureWithImageNamed:@"menu2.png"];
        SKTexture *nextLevelTexture1 = [SKTexture textureWithImageNamed:@"next_level.png"];
        
        if (CGRectContainsPoint(self.continuePlay.frame, location) || CGRectContainsPoint(self.restartLevel.frame, location) || CGRectContainsPoint(self.mainMenu.frame, location) || CGRectContainsPoint(self.nextLevel.frame, location)) {
            if (CGRectContainsPoint(self.continuePlay.frame, location)) {
                self.continuePlay.texture = continuePlayTexture;
            }
            if (CGRectContainsPoint(self.restartLevel.frame, location)) {
                self.restartLevel.texture = restartLevelTexture;
            }
            if (CGRectContainsPoint(self.mainMenu.frame, location)) {
                self.mainMenu.texture = mainMenuTexture;
            }
            if (CGRectContainsPoint(self.nextLevel.frame, location)) {
                self.nextLevel.texture = nextLevelTexture;
            }
        }
        else {
            self.continuePlay.texture = continuePlayTexture1;
            self.restartLevel.texture = restartLevelTexture1;
            self.mainMenu.texture = mainMenuTexture1;
            self.nextLevel.texture = nextLevelTexture1;
        }
    }
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    for (UITouch *touch in touches) {
        
        CGPoint location = [touch locationInNode:self];
        
        SKTexture *continuePlayTexture = [SKTexture textureWithImageNamed:@"continue.png"];
        SKTexture *restartLevelTexture = [SKTexture textureWithImageNamed:@"replay.png"];
        SKTexture *mainMenuTexture = [SKTexture textureWithImageNamed:@"menu2.png"];
        SKTexture *nextLevelTexture = [SKTexture textureWithImageNamed:@"next_level.png"];
        
        self.continuePlay.texture = continuePlayTexture;
        self.restartLevel.texture = restartLevelTexture;
        self.mainMenu.texture = mainMenuTexture;
        self.nextLevel.texture = nextLevelTexture;
        
        if (CGRectContainsPoint(self.continuePlay.frame, location)) {
            //ADD STH
            [self removeFromParent];
        }
        if (CGRectContainsPoint(self.restartLevel.frame, location)) {
            //ADD STH
            [self removeFromParent];
        }
        if (CGRectContainsPoint(self.mainMenu.frame, location)) {
            //ADD STH
            [self removeFromParent];
        }
        if (CGRectContainsPoint(self.nextLevel.frame, location)) {
            //ADD STH
           [self removeFromParent];
        }
    }
}

@end
