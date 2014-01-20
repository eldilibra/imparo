//
//  ViewController.m
//  Imparo
//
//  Created by LD Libra on 1/13/14.
//  Copyright (c) 2014 LD Libra. All rights reserved.
//

#import "ViewController.h"
#import "Reachability.h"

@interface ViewController ()
@property (nonatomic) Reachability *hostReachability;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib
    currentCharacterIndex = 0;
    names = [[NSMutableArray alloc]init];
    weaponry = [[NSMutableArray alloc]init];
    [names addObject:@"Legolas"];
    [weaponry addObject:@"Longbow"];
    [names addObject:@"Frodo"];
    [weaponry addObject:@"Shortsword"];
    [names addObject:@"Gimli"];
    [weaponry addObject:@"Battleaxe"];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(configureUI:) name:kReachabilityChangedNotification object:nil];
    NSString *remoteHostName = @"www.google.com";
    self.hostReachability = [Reachability reachabilityWithHostName:remoteHostName];
    [self.hostReachability startNotifier];
  
    
}
-(void)configureUI:(NSNotification*)note {
    Reachability* curReach = [note object];
    NSParameterAssert([curReach isKindOfClass:[Reachability class]]);
    NetworkStatus netStatus = [curReach currentReachabilityStatus];
    if(netStatus == NotReachable) {
        //disable the UI
        [UIView animateWithDuration:1.0 animations:^ {
            self.nameBtn.alpha = 0.0;
            self.weaponBtn.alpha = 0.0;
        }];
        /*
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"UIAlertView"
                                                        message:@"You're not online!" delegate:self cancelButtonTitle:@"Cancel"
                                              otherButtonTitles:@"OK", nil];
        [alert show];
        */
    } else {
      [UIView animateWithDuration:1.0 animations:^ {
        self.nameBtn.alpha = 1.0;
        self.weaponBtn.alpha = 1.0;
      }];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)didClick:(id)sender {
    if (currentCharacterIndex > 2) {
      return;
    }
    [self.nameLabel setText:[names objectAtIndex:currentCharacterIndex]];
    currentCharacterIndex++;
}

- (IBAction)showWeapon:(id)sender {
    if (self.nameBtn.alpha == 1.0) {
      [UIView animateWithDuration:1.0 animations:^ {
        self.nameBtn.alpha = 0.0;
      }];
    } else {
      [UIView animateWithDuration:1.0 animations:^ {
        self.nameBtn.alpha = 1.0;
      }];
    }
    if (currentCharacterIndex == 0) {
        return;
    }
    [self.weaponLabel setText:[weaponry objectAtIndex:currentCharacterIndex - 1]];
}
@end
