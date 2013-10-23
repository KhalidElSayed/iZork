//
//  gmgViewController.m
//  iZork
//
//  Created by Greg Gauthier on 10/18/13.
//  Copyright (c) 2013 Greg Gauthier. All rights reserved.
//

#import "gmgViewController.h"
#import "gmgFactory.h"
#import "gmgTile.h"

@interface gmgViewController ()

@end

@implementation gmgViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    gmgFactory *factory = [[gmgFactory alloc] init];
    self.tiles = [factory tiles];
    self.currentPoint = CGPointMake(0,0); //starting point
    
    [self updateTile];
    [self updateDirectionButtons];
    //[self spawnCharacter];
	
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
}

- (IBAction)OptionAButtonAction:(UIButton *)sender {
}

- (IBAction)optionBButtonAction:(UIButton *)sender {
}

- (IBAction)OptionCButtonAction:(UIButton *)sender {
}

- (IBAction)northButtonAction:(UIButton *)sender
{
    self.currentPoint = CGPointMake(
                                    self.currentPoint.x,
                                    self.currentPoint.y + 1);
    [self updateDirectionButtons];
    [self updateTile];
}

- (IBAction)westButtonAction:(UIButton *)sender
{
    self.currentPoint = CGPointMake(
                                    self.currentPoint.x - 1,
                                    self.currentPoint.y);
    [self updateDirectionButtons];
    [self updateTile];
    
}

- (IBAction)eastButtonAction:(UIButton *)sender
{
    self.currentPoint = CGPointMake(
                                    self.currentPoint.x + 1,
                                    self.currentPoint.y);
    [self updateDirectionButtons];
    [self updateTile];
    
}

- (IBAction)southButtonAction:(UIButton *)sender
{
    self.currentPoint = CGPointMake(
                                    self.currentPoint.x,
                                    self.currentPoint.y - 1);
    [self updateDirectionButtons];
    [self updateTile];
}

/*********************************************************************
 * Helper Methods                                                    *
 *********************************************************************/

- (void)updateTile
{
    gmgTile *tileModel = [[self.tiles objectAtIndex:(self.currentPoint.x)]
                          objectAtIndex:(self.currentPoint.y)];
    
    self.storyLabel.text = tileModel.storyText;
    self.backgroundImageView.image = tileModel.backgroundImage;
}

- (void)updateDirectionButtons
{
    self.westButton.hidden = [self tileExistsAtPoint:(CGPointMake(self.currentPoint.x - 1, self.currentPoint.y))];

    self.eastButton.hidden = [self tileExistsAtPoint:(CGPointMake(self.currentPoint.x + 1, self.currentPoint.y))];

    self.northButton.hidden = [self tileExistsAtPoint:(CGPointMake(self.currentPoint.x, self.currentPoint.y + 1))];

    self.southButton.hidden = [self tileExistsAtPoint:(CGPointMake(self.currentPoint.x, self.currentPoint.y - 1))];

}

- (bool)tileExistsAtPoint:(CGPoint)point
{
    if (point.x >= 0
        && point.y >= 0
        && point.x < [self.tiles count]
        && point.y < [[self.tiles objectAtIndex:(point.x)] count])
    {
        return false;
    }
    else{
        return true;
    }
    
}

@end
