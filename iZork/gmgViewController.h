//
//  gmgViewController.h
//  iZork
//
//  Created by Greg Gauthier on 10/18/13.
//  Copyright (c) 2013 Greg Gauthier. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface gmgViewController : UIViewController
/*********************************************************************
 * iVars                                                             *
 *********************************************************************/
@property (nonatomic) CGPoint currentPoint;
@property (strong, nonatomic) NSArray *tiles;

/*********************************************************************
 * Main View                                                         *
 *********************************************************************/
@property (strong, nonatomic) IBOutlet UIImageView *backgroundImageView;

/*********************************************************************
 * Character Panel                                                   *
 *********************************************************************/
@property (strong, nonatomic) IBOutlet UILabel *chracterName;
@property (strong, nonatomic) IBOutlet UILabel *characterRace;
@property (strong, nonatomic) IBOutlet UILabel *characterRole;
@property (strong, nonatomic) IBOutlet UIImageView *characterFace;

@property (strong, nonatomic) IBOutlet UILabel *characterHealth;
@property (strong, nonatomic) IBOutlet UILabel *characterDefense;
@property (strong, nonatomic) IBOutlet UILabel *characterAttack;

@property (strong, nonatomic) IBOutlet UILabel *armorName;
@property (strong, nonatomic) IBOutlet UILabel *weaponName;

/*********************************************************************
 * Story Panel                                                       *
 *********************************************************************/
@property (strong, nonatomic) IBOutlet UILabel *storyLabel;


/*********************************************************************
 * Action Panel                                                      *
 *********************************************************************/

//Outlets
@property (strong, nonatomic) IBOutlet UIButton *optionAButtonText;
@property (strong, nonatomic) IBOutlet UIButton *optionBButtonText;
@property (strong, nonatomic) IBOutlet UIButton *optionCButtonText;

@property (strong, nonatomic) IBOutlet UIButton *northButton;
@property (strong, nonatomic) IBOutlet UIButton *southButton;
@property (strong, nonatomic) IBOutlet UIButton *eastButton;
@property (strong, nonatomic) IBOutlet UIButton *westButton;

//Actions
- (IBAction)OptionAButtonAction:(UIButton *)sender;
- (IBAction)optionBButtonAction:(UIButton *)sender;
- (IBAction)OptionCButtonAction:(UIButton *)sender;

- (IBAction)northButtonAction:(UIButton *)sender;
- (IBAction)westButtonAction:(UIButton *)sender;
- (IBAction)eastButtonAction:(UIButton *)sender;
- (IBAction)southButtonAction:(UIButton *)sender;




@end
