//
//  gmgArmor.h
//  iZork
//
//  Created by Greg Gauthier on 10/18/13.
//  Copyright (c) 2013 Greg Gauthier. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface gmgArmor : NSObject

@property (strong, nonatomic) NSString *armorName;
@property (nonatomic) int *armorCondition;
@property (nonatomic) int *armorDefense;

@end
