//
//  gmgStory.m
//  iZork
//
//  Created by Greg Gauthier on 10/22/13.
//  Copyright (c) 2013 Greg Gauthier. All rights reserved.
//

#import "gmgStory.h"

@implementation gmgStory

-(void)loadStoryBook
{
    NSString *filePath =  [[NSBundle mainBundle] pathForResource:@"chapters" ofType:@"txt"];
    NSError *error;
    NSString *fileContents = [NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:&error];
    
    if (error)
        NSLog(@"Error reading file: %@", error.localizedDescription);
    
    // maybe for debugging...
    //NSLog(@"contents: %@", fileContents);
    
    self.storyBook = [fileContents componentsSeparatedByString:@"\n"];
    //NSLog(@"items = %d", [self.storyBook count]);
}

-(NSString *)getChapter:(int)chapterNum
{
    //stuff
    return self.storyBook[chapterNum];
    //return @"dummy";
}

@end
