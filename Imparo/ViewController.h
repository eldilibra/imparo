//
//  ViewController.h
//  Imparo
//
//  Created by LD Libra on 1/13/14.
//  Copyright (c) 2014 LD Libra. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (IBAction)didClick:(id)sender;
- (IBAction)showWeapon:(id)sender;


@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *weaponLabel;
@property (weak, nonatomic) IBOutlet UIButton *nameBtn;
@property (weak, nonatomic) IBOutlet UIButton *weaponBtn;
@end
