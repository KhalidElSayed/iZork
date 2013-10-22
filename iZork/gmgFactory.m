//
//  gmgFactory.m
//  iZork
//
//  Created by Greg Gauthier on 10/18/13.
//  Copyright (c) 2013 Greg Gauthier. All rights reserved.
//

#import "gmgFactory.h"
#import "gmgTile.h"

@implementation gmgFactory

-(NSArray *)tiles
{
    int noOfRows = 5;
    int noOfCols = 5;
    int noOfTiles = noOfRows * noOfCols;
    
    //this array will contain a list of all the columns we need
    NSMutableArray *colList = [[NSMutableArray alloc] initWithCapacity:noOfCols];
    
    //this loop populates the list with the individual column objects,
    //each column initialized to the size of the number of rows (or
    //'tiles' in each column
    for (int i = 0; i < noOfCols; i++) {
        //temporary column array, so we can add it to the mutable
        //array of all columns
        NSMutableArray *column = [[NSMutableArray alloc] initWithCapacity:noOfRows];

        //now we just add the column to our column list
        [colList addObject:(column) ];
    }
    
    //now it's just a matter of building our tile objects, and populating the requisite row in the column, found in the column list
    for (int i = 0; i < noOfTiles; i++) {
        //create a temporary tile object
        gmgTile *tempTile = [[gmgTile alloc] init];
        
        //build out the properties for the object
        tempTile.storyText = [NSString stringWithFormat:@"Story Board #%d", i];
        
        //add the tile object to the column object which it belongs
        //tile number divide by numberOfColumns gives you the column
        //it belongs in
        int colNum = i / noOfCols;
        [colList[colNum] addObject:(tempTile)];
        
    }
    
    NSArray *tiles = [[NSArray alloc] initWithArray:(colList)];
    
    return tiles;
    
}
/***********
 * Our Nested array structure will end up looking like this:
 * (Note: ZERO-based counts)
 *
 * colList[
 *      col[0]:[ 
 *          tile[0], 
 *          tile[1], 
 *          tile[2], 
 *          tile[3], 
 *          tile[4] 
 *          ],
 *      col[1]:[
 *          tile[0],
 *          tile[1],
 *          tile[2],
 *          tile[3],
 *          tile[4]
 *          ],
 *      col[2]:[
 *          tile[0],
 *          tile[1],
 *          tile[2],
 *          tile[3],
 *          tile[4]
 *          ],
 *      col[3]:[
 *          tile[0],
 *          tile[1],
 *          tile[2],
 *          tile[3],
 *          tile[4]
 *          ],
 *      col[4]:[
 *          tile[0],
 *          tile[1],
 *          tile[2],
 *          tile[3],
 *          tile[4]
 *          ]
 *     ]
 ***********/

@end
