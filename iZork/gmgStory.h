//
//  gmgStory.h
//  iZork
//
//  Created by Greg Gauthier on 10/22/13.
//  Copyright (c) 2013 Greg Gauthier. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface gmgStory : NSObject

@property (strong, nonatomic) NSArray *storyBook;
@property (strong, nonatomic) NSString *chapter;
@property (strong, nonatomic) NSString *textFile;

-(void)loadStoryBook; 
-(NSString *)getChapter:(int)chapterNum;



@end
