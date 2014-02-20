//
//  WeaponsViewController.m
//  Imparo
//
//  Created by LD Libra on 1/20/14.
//  Copyright (c) 2014 LD Libra. All rights reserved.
//

#import "WeaponsViewController.h"
#import "ImparoData.h"

@interface WeaponsViewController ()

@end

@implementation WeaponsViewController

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
    self.weaponsTableView.delegate = self;
    self.weaponsTableView.dataSource = self;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *) indexPath
{
    UITableViewCell *cell = [[UITableViewCell alloc] init];
    [cell.textLabel setText: [[[ImparoData getSingleton] ArmsListing].allValues objectAtIndex: indexPath.row]];
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [[ImparoData getSingleton] ArmsListing].allKeys.count;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
