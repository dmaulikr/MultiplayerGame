//
//  TwoPlayersViewController.h
//  NumbeoUniversal
//
//  Created by paul favier on 10/03/14.
//  Copyright (c) 2014 MonCocoPilote. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TwoPlayersViewController : UIViewController
{
    
}


@property (nonatomic, retain) IBOutlet UILabel *numberTotal;

@property (nonatomic, retain) IBOutlet UIImageView *imgYourTurn;
@property (nonatomic, retain) IBOutlet UIImageView *imgYourTurn180;

@property (nonatomic, retain) IBOutlet UIImageView *imgTotal;

@property (nonatomic, retain) IBOutlet UIButton *btnNumber1;
@property (nonatomic, retain) IBOutlet UIButton *btnNumber2;
@property (nonatomic, retain) IBOutlet UIButton *btnNumber3;

@property (nonatomic, retain) IBOutlet UIButton *btnNumber1180;
@property (nonatomic, retain) IBOutlet UIButton *btnNumber2180;
@property (nonatomic, retain) IBOutlet UIButton *btnNumber3180;


-(IBAction)restartCmd:(id)sender;

-(IBAction)number1Cmd:(id)sender;
-(IBAction)number2Cmd:(id)sender;
-(IBAction)number3Cmd:(id)sender;

-(IBAction)number1Cmd180:(id)sender;
-(IBAction)number2Cmd180:(id)sender;
-(IBAction)number3Cmd180:(id)sender;

@end
