//
//  gmgTile.h
//  iZork
//
//  Created by Greg Gauthier on 10/19/13.
//  Copyright (c) 2013 Greg Gauthier. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "gmgArmor.h"
#import "gmgWeapon.h"


@interface gmgTile : NSObject

/*********************************************************************
 * Main View                                                         *
 *********************************************************************/
@property (strong, nonatomic) UIImage *backgroundImage;


/*********************************************************************
 * Character Panel                                                   *
 *********************************************************************/
@property (strong, nonatomic) gmgArmor *armorObject;
@property (strong, nonatomic) gmgWeapon *weaponObject;

@property (nonatomic) int healthModifier;
@property (nonatomic) int attackModifier;
@property (nonatomic) int defenseModifier;


/*********************************************************************
 * Story Panel                                                       *
 *********************************************************************/
@property (strong, nonatomic) NSString *storyText;


/*********************************************************************
 * Action Panel                                                      *
 *********************************************************************/
@property (strong, nonatomic) NSString *optionAButtonText;
@property (strong, nonatomic) NSString *optionBButtonText;
@property (strong, nonatomic) NSString *optionCButtonText;


@end
