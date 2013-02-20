//
//  ViewController.m
//  CustomNavBarTitle
//
//  Created by Jeffrey Johnston on 2/18/13.
//  Copyright (c) 2013 Jeff Johnston. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    [self.navigationController.navigationBar setBarStyle:UIBarStyleBlackOpaque];
    
    
    //Create custom UIView with border and add as subview to navigation bar
    UIView* customView = [[UIView alloc] initWithFrame:CGRectMake(80,7,158,30)];
    customView.layer.borderColor = [[UIColor redColor] CGColor];
    customView.layer.borderWidth = 2.0;
    customView.layer.cornerRadius = 8.0;
    [self.navigationController.navigationBar addSubview:customView];
    
    /*
    //Create a border for the navigation bar itself
    self.navigationController.navigationBar.layer.borderColor = [[UIColor redColor] CGColor];
    self.navigationController.navigationBar.layer.borderWidth = 2.0;
    self.navigationController.navigationBar.layer.cornerRadius = 8.0;
    */
       
    
    //Create custom UILabel for the navigation bar and set as titleView
    UILabel *title = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 50, 40)];
    title.backgroundColor = [UIColor clearColor];
    title.textColor = [UIColor whiteColor];
    title.font = [UIFont fontWithName:@"Helvetica-Bold" size:20];
    title.text = @"Jeff Johnston";
    
    
    //Render a shadow on the title view's Core Animation layer
    title.layer.shadowColor = [[UIColor redColor] CGColor];
    title.layer.shadowOffset = CGSizeMake(1.0, -1.0);
    title.layer.shadowOpacity = 1.0;
    
    
    self.navigationItem.titleView = title;
    

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
