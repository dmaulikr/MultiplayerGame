//
//  FourPlayersViewController.m
//  NumbeoUniversal
//
//  Created by paul favier on 10/03/14.
//  Copyright (c) 2014 MonCocoPilote. All rights reserved.
//

#import "FourPlayersViewController.h"
#import "PulsingHaloLayer.h"

@interface FourPlayersViewController ()
{
    int total;
}
@property (nonatomic, strong) PulsingHaloLayer *halo;
@end

@implementation FourPlayersViewController
@synthesize numberTotal;
@synthesize btnNumber1,btnNumber1180,btnNumber2,btnNumber2180,btnNumber3,btnNumber3180,btnNumber190CW,btnNumber390CW,btnNumber290CW,btnNumber190CWW,btnNumber290CWW,btnNumber390CWW;

@synthesize imgYourTurn,imgYourTurn180,imgYourTurn190CW,imgYourTurn190CWW,imgTotal;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    total = 21;
    [btnNumber1180 setEnabled:NO];
    [btnNumber2180 setEnabled:NO];
    [btnNumber3180 setEnabled:NO];
    [btnNumber190CW setEnabled:NO];
    [btnNumber290CW setEnabled:NO];
    [btnNumber390CW setEnabled:NO];
    [btnNumber190CWW setEnabled:NO];
    [btnNumber290CWW setEnabled:NO];
    [btnNumber390CWW setEnabled:NO];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)restartCmd:(id)sender
{
    total = 21;
    numberTotal.text = [NSString stringWithFormat:@"%d",total];
    [imgYourTurn setAlpha:1];
    [imgYourTurn180 setAlpha:0];
    [imgYourTurn190CW setAlpha:0];
    [btnNumber1 setEnabled:YES];
    [btnNumber2 setEnabled:YES];
    [btnNumber3 setEnabled:YES];
    [btnNumber1180 setEnabled:NO];
    [btnNumber2180 setEnabled:NO];
    [btnNumber3180 setEnabled:NO];
    [btnNumber190CW setEnabled:NO];
    [btnNumber290CW setEnabled:NO];
    [btnNumber390CW setEnabled:NO];
}

-(IBAction)number1Cmd:(id)sender
{
    [btnNumber1 setEnabled:NO];
    [btnNumber2 setEnabled:NO];
    [btnNumber3 setEnabled:NO];
    total = total - 1;
    if (total <= 0) {
        total = 0;
        numberTotal.text = [NSString stringWithFormat:@"%d",total];
        [self endGamePlayer1];
    }
    
    self.halo = [PulsingHaloLayer layer];
    self.halo.position = self.imgTotal.center;
    UIColor *color = [UIColor redColor];
    self.halo.backgroundColor = color.CGColor;
    self.halo.radius = 100;
    [self.view.layer insertSublayer:self.halo below:self.imgTotal.layer];
    numberTotal.text = [NSString stringWithFormat:@"%d",total];
    
    
    [UIView beginAnimations:@"player1" context:NULL];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDuration:1];
    [imgYourTurn setAlpha:0];
    [imgYourTurn180 setAlpha:0];
    [imgYourTurn190CWW setAlpha:0];
    [imgYourTurn190CW setAlpha:1];
    
    [UIView setAnimationDidStopSelector:@selector(animationFinished:finished:context:)];
    [UIView commitAnimations];
    
    
}
-(IBAction)number2Cmd:(id)sender
{
    [btnNumber1 setEnabled:NO];
    [btnNumber2 setEnabled:NO];
    [btnNumber3 setEnabled:NO];
    total = total - 2;
    if (total <= 0) {
        total = 0;
        numberTotal.text = [NSString stringWithFormat:@"%d",total];
        [self endGamePlayer1];
    }
    self.halo = [PulsingHaloLayer layer];
    self.halo.position = self.imgTotal.center;
    UIColor *color = [UIColor redColor];
    self.halo.backgroundColor = color.CGColor;
    self.halo.radius = 100;
    [self.view.layer insertSublayer:self.halo below:self.imgTotal.layer];
    numberTotal.text = [NSString stringWithFormat:@"%d",total];
    
    
    [UIView beginAnimations:@"player1" context:NULL];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDuration:1];
    [imgYourTurn setAlpha:0];
    [imgYourTurn180 setAlpha:0];
    [imgYourTurn190CWW setAlpha:0];
    [imgYourTurn190CW setAlpha:1];
    
    [UIView setAnimationDidStopSelector:@selector(animationFinished:finished:context:)];
    [UIView commitAnimations];
    
}
-(IBAction)number3Cmd:(id)sender
{
    [btnNumber1 setEnabled:NO];
    [btnNumber2 setEnabled:NO];
    [btnNumber3 setEnabled:NO];
    total = total - 3;
    if (total <= 0) {
        total = 0;
        numberTotal.text = [NSString stringWithFormat:@"%d",total];
        [self endGamePlayer1];
    }
    self.halo = [PulsingHaloLayer layer];
    self.halo.position = self.imgTotal.center;
    UIColor *color = [UIColor redColor];
    self.halo.backgroundColor = color.CGColor;
    self.halo.radius = 100;
    [self.view.layer insertSublayer:self.halo below:self.imgTotal.layer];
    numberTotal.text = [NSString stringWithFormat:@"%d",total];
    
    
    [UIView beginAnimations:@"player1" context:NULL];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDuration:1];
    [imgYourTurn setAlpha:0];
    [imgYourTurn180 setAlpha:0];
    [imgYourTurn190CWW setAlpha:0];
    [imgYourTurn190CW setAlpha:1];
    
    [UIView setAnimationDidStopSelector:@selector(animationFinished:finished:context:)];
    [UIView commitAnimations];
    
}

-(IBAction)number1Cmd180:(id)sender
{
    [btnNumber1180 setEnabled:NO];
    [btnNumber2180 setEnabled:NO];
    [btnNumber3180 setEnabled:NO];
    total = total - 1;
    if (total <= 0) {
        total = 0;
        numberTotal.text = [NSString stringWithFormat:@"%d",total];
        [self endGamePlayer3];
    }
    
    
    self.halo = [PulsingHaloLayer layer];
    self.halo.position = self.imgTotal.center;
    UIColor *color = [UIColor redColor];
    self.halo.backgroundColor = color.CGColor;
    self.halo.radius = 100;
    [self.view.layer insertSublayer:self.halo below:self.imgTotal.layer];
    numberTotal.text = [NSString stringWithFormat:@"%d",total];
    
    
    [UIView beginAnimations:@"player3" context:NULL];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDuration:1];
    [imgYourTurn setAlpha:0];
    [imgYourTurn190CWW setAlpha:1];
    [imgYourTurn180 setAlpha:0];
    
    [UIView setAnimationDidStopSelector:@selector(animationFinished:finished:context:)];
    [UIView commitAnimations];
    
}
-(IBAction)number2Cmd180:(id)sender
{
    [btnNumber1180 setEnabled:NO];
    [btnNumber2180 setEnabled:NO];
    [btnNumber3180 setEnabled:NO];
    total = total - 2;
    if (total <= 0) {
        total = 0;
        numberTotal.text = [NSString stringWithFormat:@"%d",total];
        [self endGamePlayer3];
    }
    self.halo = [PulsingHaloLayer layer];
    self.halo.position = self.imgTotal.center;
    UIColor *color = [UIColor redColor];
    self.halo.backgroundColor = color.CGColor;
    self.halo.radius = 100;
    [self.view.layer insertSublayer:self.halo below:self.imgTotal.layer];
    numberTotal.text = [NSString stringWithFormat:@"%d",total];
    
    
    [UIView beginAnimations:@"player3" context:NULL];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDuration:1];
    [imgYourTurn setAlpha:0];
    [imgYourTurn190CWW setAlpha:1];
    [imgYourTurn180 setAlpha:0];
    
    [UIView setAnimationDidStopSelector:@selector(animationFinished:finished:context:)];
    [UIView commitAnimations];
}
-(IBAction)number3Cmd180:(id)sender
{
    [btnNumber1180 setEnabled:NO];
    [btnNumber2180 setEnabled:NO];
    [btnNumber3180 setEnabled:NO];
    total = total - 3;
    if (total <= 0) {
        total = 0;
        numberTotal.text = [NSString stringWithFormat:@"%d",total];
        [self endGamePlayer3];
    }
    self.halo = [PulsingHaloLayer layer];
    self.halo.position = self.imgTotal.center;
    UIColor *color = [UIColor redColor];
    self.halo.backgroundColor = color.CGColor;
    self.halo.radius = 100;
    [self.view.layer insertSublayer:self.halo below:self.imgTotal.layer];
    numberTotal.text = [NSString stringWithFormat:@"%d",total];
    
    
    [UIView beginAnimations:@"player3" context:NULL];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDuration:1];
    [imgYourTurn setAlpha:0];
    [imgYourTurn190CWW setAlpha:1];
    [imgYourTurn180 setAlpha:0];
    
    [UIView setAnimationDidStopSelector:@selector(animationFinished:finished:context:)];
    [UIView commitAnimations];
}

-(IBAction)number1Cmd90CW:(id)sender
{
    [btnNumber190CW setEnabled:NO];
    [btnNumber290CW setEnabled:NO];
    [btnNumber390CW setEnabled:NO];
    total = total - 1;
    if (total <= 0) {
        total = 0;
        numberTotal.text = [NSString stringWithFormat:@"%d",total];
        [self endGamePlayer2];
    }
    
    self.halo = [PulsingHaloLayer layer];
    self.halo.position = self.imgTotal.center;
    UIColor *color = [UIColor redColor];
    self.halo.backgroundColor = color.CGColor;
    self.halo.radius = 100;
    [self.view.layer insertSublayer:self.halo below:self.imgTotal.layer];
    numberTotal.text = [NSString stringWithFormat:@"%d",total];
    
    
    [UIView beginAnimations:@"player2" context:NULL];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDuration:1];
    [imgYourTurn setAlpha:0];
    [imgYourTurn190CW setAlpha:0];
    [imgYourTurn180 setAlpha:1];
    
    [UIView setAnimationDidStopSelector:@selector(animationFinished:finished:context:)];
    [UIView commitAnimations];
    
    
}

-(IBAction)number2Cmd90CW:(id)sender
{
    [btnNumber190CW setEnabled:NO];
    [btnNumber290CW setEnabled:NO];
    [btnNumber390CW setEnabled:NO];
    total = total - 2;
    if (total <= 0) {
        total = 0;
        numberTotal.text = [NSString stringWithFormat:@"%d",total];
        [self endGamePlayer2];
    }
    
    self.halo = [PulsingHaloLayer layer];
    self.halo.position = self.imgTotal.center;
    UIColor *color = [UIColor redColor];
    self.halo.backgroundColor = color.CGColor;
    self.halo.radius = 100;
    [self.view.layer insertSublayer:self.halo below:self.imgTotal.layer];
    numberTotal.text = [NSString stringWithFormat:@"%d",total];
    
    
    [UIView beginAnimations:@"player2" context:NULL];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDuration:1];
    [imgYourTurn setAlpha:0];
    [imgYourTurn190CW setAlpha:0];
    [imgYourTurn180 setAlpha:1];
    
    [UIView setAnimationDidStopSelector:@selector(animationFinished:finished:context:)];
    [UIView commitAnimations];
    
    
}

-(IBAction)number3Cmd90CW:(id)sender
{
    [btnNumber190CW setEnabled:NO];
    [btnNumber290CW setEnabled:NO];
    [btnNumber390CW setEnabled:NO];
    total = total - 3;
    if (total <= 0) {
        total = 0;
        numberTotal.text = [NSString stringWithFormat:@"%d",total];
        [self endGamePlayer4];
    }
    
    self.halo = [PulsingHaloLayer layer];
    self.halo.position = self.imgTotal.center;
    UIColor *color = [UIColor redColor];
    self.halo.backgroundColor = color.CGColor;
    self.halo.radius = 100;
    [self.view.layer insertSublayer:self.halo below:self.imgTotal.layer];
    numberTotal.text = [NSString stringWithFormat:@"%d",total];
    
    
    [UIView beginAnimations:@"player2" context:NULL];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDuration:1];
    [imgYourTurn setAlpha:0];
    [imgYourTurn190CW setAlpha:0];
    [imgYourTurn180 setAlpha:1];
    
    [UIView setAnimationDidStopSelector:@selector(animationFinished:finished:context:)];
    [UIView commitAnimations];
    
    
}

-(IBAction)number1Cmd90CWW:(id)sender
{
    [btnNumber190CWW setEnabled:NO];
    [btnNumber290CWW setEnabled:NO];
    [btnNumber390CWW setEnabled:NO];
    total = total - 1;
    if (total <= 0) {
        total = 0;
        numberTotal.text = [NSString stringWithFormat:@"%d",total];
        [self endGamePlayer4];
    }
    
    self.halo = [PulsingHaloLayer layer];
    self.halo.position = self.imgTotal.center;
    UIColor *color = [UIColor redColor];
    self.halo.backgroundColor = color.CGColor;
    self.halo.radius = 100;
    [self.view.layer insertSublayer:self.halo below:self.imgTotal.layer];
    numberTotal.text = [NSString stringWithFormat:@"%d",total];
    
    
    [UIView beginAnimations:@"player4" context:NULL];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDuration:1];
    [imgYourTurn setAlpha:1];
    [imgYourTurn190CW setAlpha:0];
    [imgYourTurn180 setAlpha:0];
    [imgYourTurn190CWW setAlpha:0];
    
    [UIView setAnimationDidStopSelector:@selector(animationFinished:finished:context:)];
    [UIView commitAnimations];
    
    
}

-(IBAction)number2Cmd90CWW:(id)sender
{
    [btnNumber190CWW setEnabled:NO];
    [btnNumber290CWW setEnabled:NO];
    [btnNumber390CWW setEnabled:NO];
    total = total - 2;
    if (total <= 0) {
        total = 0;
        numberTotal.text = [NSString stringWithFormat:@"%d",total];
        [self endGamePlayer4];
    }
    
    self.halo = [PulsingHaloLayer layer];
    self.halo.position = self.imgTotal.center;
    UIColor *color = [UIColor redColor];
    self.halo.backgroundColor = color.CGColor;
    self.halo.radius = 100;
    [self.view.layer insertSublayer:self.halo below:self.imgTotal.layer];
    numberTotal.text = [NSString stringWithFormat:@"%d",total];
    
    
    [UIView beginAnimations:@"player4" context:NULL];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDuration:1];
    [imgYourTurn setAlpha:1];
    [imgYourTurn190CW setAlpha:0];
    [imgYourTurn180 setAlpha:0];
    [imgYourTurn190CWW setAlpha:0];
    
    [UIView setAnimationDidStopSelector:@selector(animationFinished:finished:context:)];
    [UIView commitAnimations];
    
    
}

-(IBAction)number3Cmd90CWW:(id)sender
{
    [btnNumber190CWW setEnabled:NO];
    [btnNumber290CWW setEnabled:NO];
    [btnNumber390CWW setEnabled:NO];
    total = total - 3;
    if (total <= 0) {
        total = 0;
        numberTotal.text = [NSString stringWithFormat:@"%d",total];
        [self endGamePlayer4];
    }
    
    self.halo = [PulsingHaloLayer layer];
    self.halo.position = self.imgTotal.center;
    UIColor *color = [UIColor redColor];
    self.halo.backgroundColor = color.CGColor;
    self.halo.radius = 100;
    [self.view.layer insertSublayer:self.halo below:self.imgTotal.layer];
    numberTotal.text = [NSString stringWithFormat:@"%d",total];
    
    
    [UIView beginAnimations:@"player4" context:NULL];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationDuration:1];
    [imgYourTurn setAlpha:1];
    [imgYourTurn190CW setAlpha:0];
    [imgYourTurn180 setAlpha:0];
    [imgYourTurn190CWW setAlpha:0];
    
    [UIView setAnimationDidStopSelector:@selector(animationFinished:finished:context:)];
    [UIView commitAnimations];
    
    
}



- (void)animationFinished:(NSString *)animationID finished:(BOOL)finished context:(void *)context
{
    if ([animationID isEqualToString:@"player1"])
    {
        [btnNumber1180 setEnabled:NO];
        [btnNumber2180 setEnabled:NO];
        [btnNumber3180 setEnabled:NO];
        [btnNumber1 setEnabled:NO];
        [btnNumber2 setEnabled:NO];
        [btnNumber3 setEnabled:NO];
        [btnNumber190CW setEnabled:YES];
        [btnNumber290CW setEnabled:YES];
        [btnNumber390CW setEnabled:YES];
        [btnNumber190CWW setEnabled:NO];
        [btnNumber290CWW setEnabled:NO];
        [btnNumber390CWW setEnabled:NO];
        [self.halo removeFromSuperlayer];
    }
    else if ([animationID isEqualToString:@"player2"])
    {
        [UIView setAnimationDuration:1];
        [btnNumber190CW setEnabled:NO];
        [btnNumber290CW setEnabled:NO];
        [btnNumber390CW setEnabled:NO];
        [btnNumber1180 setEnabled:YES];
        [btnNumber2180 setEnabled:YES];
        [btnNumber3180 setEnabled:YES];
        [btnNumber1 setEnabled:NO];
        [btnNumber2 setEnabled:NO];
        [btnNumber3 setEnabled:NO];
        [btnNumber190CWW setEnabled:NO];
        [btnNumber290CWW setEnabled:NO];
        [btnNumber390CWW setEnabled:NO];
        [self.halo removeFromSuperlayer];
    }
    else if ([animationID isEqualToString:@"player3"])
    {
        [UIView setAnimationDuration:1];
        [btnNumber190CWW setEnabled:YES];
        [btnNumber290CWW setEnabled:YES];
        [btnNumber390CWW setEnabled:YES];
        [btnNumber1 setEnabled:NO];
        [btnNumber2 setEnabled:NO];
        [btnNumber3 setEnabled:NO];
        [btnNumber1180 setEnabled:NO];
        [btnNumber2180 setEnabled:NO];
        [btnNumber3180 setEnabled:NO];
        [btnNumber190CW setEnabled:NO];
        [btnNumber290CW setEnabled:NO];
        [btnNumber390CW setEnabled:NO];
        [self.halo removeFromSuperlayer];
    }
    else if ([animationID isEqualToString:@"player4"])
    {
        [UIView setAnimationDuration:1];
        [btnNumber1 setEnabled:YES];
        [btnNumber2 setEnabled:YES];
        [btnNumber3 setEnabled:YES];
        [btnNumber1180 setEnabled:NO];
        [btnNumber2180 setEnabled:NO];
        [btnNumber3180 setEnabled:NO];
        [btnNumber190CW setEnabled:NO];
        [btnNumber290CW setEnabled:NO];
        [btnNumber390CW setEnabled:NO];
        [btnNumber190CWW setEnabled:NO];
        [btnNumber290CWW setEnabled:NO];
        [btnNumber390CWW setEnabled:NO];
        [self.halo removeFromSuperlayer];
    }

    //NSLog(@"test fin");
    
    
}

-(void)endGamePlayer1
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"End" message:@"Player 1 Loose !" delegate:self cancelButtonTitle:nil otherButtonTitles:@"Cool !", nil];
    [alert show];
    [self restartCmd:self];
}

-(void)endGamePlayer2
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"End" message:@"Player 2 Loose !" delegate:self cancelButtonTitle:nil otherButtonTitles:@"Cool !", nil];
    [alert show];
    [self restartCmd:self];
}
-(void)endGamePlayer3
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"End" message:@"Player 3 Loose !" delegate:self cancelButtonTitle:nil otherButtonTitles:@"Cool !", nil];
    [alert show];
    [self restartCmd:self];
}

-(void)endGamePlayer4
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"End" message:@"Player 4 Loose !" delegate:self cancelButtonTitle:nil otherButtonTitles:@"Cool !", nil];
    [alert show];
    [self restartCmd:self];
}


@end
