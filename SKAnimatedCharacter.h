//
//  SKAnimatedCharacter.h
//


#import <SpriteKit/SpriteKit.h>
#import "SKAnimatedSprite.h"

@interface SKAnimatedCharacter : SKNode

@property (nonatomic, strong) SKAnimatedSprite *idleSprite;
@property (nonatomic, strong) SKAnimatedSprite *runSprite;
@property (nonatomic, strong) SKAnimatedSprite *jumpSprite;


-(id)initWithIdleAnimation:(NSString *)idleAtlas withRunAnimation:(NSString *)runAtlas withJumpAnimation:(NSString *)jumpAtlas withRunLoopDuration:(CGFloat)runDuration withIdleLoopDuration:(CGFloat)idleDuration withJumpLoopDuration:(CGFloat)jumpDuration;

-(void) startIdleAnimation;
-(void) startRunAnimation;
-(void)startJumpAnimation;

@end
