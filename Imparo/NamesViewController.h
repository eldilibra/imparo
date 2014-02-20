//
//  NamesViewController.h
//  Imparo
//
//  Created by LD Libra on 1/20/14.
//  Copyright (c) 2014 LD Libra. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NamesViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *namesTableView;

@end
