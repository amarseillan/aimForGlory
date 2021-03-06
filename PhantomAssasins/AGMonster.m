//
//  PAMonster.m
//  PhantomAssasins
//
//  Created by Agustin Marseillan on 10/3/13.
//  Copyright (c) 2013 Agustin Marseillan. All rights reserved.
//

#import "AGMonster.h"

@implementation AGMonster

int _hp;
int _maxHp;

+(id) initWithHp:(int)hp{
    if( (self = [super spriteWithFile:@"monster.png"]) ){
        _hp = hp;
        _maxHp = hp;
    }
    return self;
}


-(int) hp{
    return _hp;
}

-(int) maxHp{
    return _maxHp;
}

-(BOOL) getHit:(AGProjectile*)projectile{
    _hp -= [projectile damage];
    return _hp <= 0;
}

@end
