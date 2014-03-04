//
//  SKAnimatedCharacter.m
//


#import "SKAnimatedCharacter.h"

@implementation SKAnimatedCharacter



-(id)initWithIdleAnimation:(NSString *)idleAtlas withRunAnimation:(NSString *)runAtlas withJumpAnimation:(NSString *)jumpAtlas withRunLoopDuration:(CGFloat)runDuration withIdleLoopDuration:(CGFloat)idleDuration withJumpLoopDuration:(CGFloat)jumpDuration {
    
    if (self = [super init]) {
        
        _idleSprite = [SKAnimatedSprite animatedSpriteWithTextureAtlas:idleAtlas withNumberOfFrames:6 withInitialLoopDuration:idleDuration];
        [self addChild:_idleSprite];
        
        _runSprite = [SKAnimatedSprite animatedSpriteWithTextureAtlas:runAtlas withNumberOfFrames:6 withInitialLoopDuration:runDuration];
        [self addChild:_runSprite];
        _runSprite.hidden = YES;
        
        _jumpSprite = [SKAnimatedSprite animatedSpriteWithTextureAtlas:jumpAtlas withNumberOfFrames:6 withInitialLoopDuration:jumpDuration];
        [self addChild:_jumpSprite];
        _jumpSprite.hidden = YES;
        

        
    }
    
    return self;
    
    
}

-(void) startIdleAnimation {

    
    [_runSprite stopAnimation];
    [_jumpSprite stopAnimation];
    
    [_idleSprite startAnimation];
    _idleSprite.hidden = NO;
    _runSprite.hidden = YES;
    _jumpSprite.hidden = YES;
}

-(void) startRunAnimation {
    
    [_idleSprite stopAnimation];
    [_jumpSprite stopAnimation];
    
    [_runSprite startAnimation];
    _runSprite.hidden = NO;
    _idleSprite.hidden = YES;
    _jumpSprite.hidden = YES;
}

-(void)startJumpAnimation {
    
    [_idleSprite stopAnimation];
    [_runSprite stopAnimation];
    
    [_jumpSprite startAnimationOnce];
    _jumpSprite.hidden = NO;
    _idleSprite.hidden = YES;
    _runSprite.hidden = YES;
    
}

@end
