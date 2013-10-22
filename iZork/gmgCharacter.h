//
//  gmgCharacter.h
//  iZork
//
//  Created by Greg Gauthier on 10/18/13.
//  Copyright (c) 2013 Greg Gauthier. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "gmgWeapon.h"
#import "gmgArmor.h"

@interface gmgCharacter : NSObject

@property (strong, nonatomic) NSString *characterName;
@property (strong, nonatomic) NSString *characterRace;
@property (strong, nonatomic) NSString *chararacterRole;
@property (strong, nonatomic) UIImage *characterFace;

@property (nonatomic) int attackStrength;
@property (nonatomic) int defendStrength;
@property (nonatomic) int healthPoints;

@property (strong, nonatomic) gmgWeapon *weaponName;
@property (strong, nonatomic) gmgArmor *armorName;

@end
