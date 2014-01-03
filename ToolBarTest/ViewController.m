//
//  ViewController.m
//  ToolBarTest
//
//  Created by SDT-1 on 2014. 1. 3..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end


@implementation ViewController
-(IBAction)handleBarButtonClick:(id)sender
{
    UIBarButtonItem *button = (UIBarButtonItem *)sender;
    if(1==button.tag)
    {
        NSLog(@"왼쪽버튼 클릭하셨습니다");
    }
    else
    {
        NSLog(@"오른쪽버튼 클릭하셨습니다");
    }
}
-(void)handleRefresh:(id)sender
{
    NSLog(@"Refresh!");
}
-(void)handleButton:(id)sender
{
    NSLog(@"Button Clicked!");
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	UIToolbar *toolbar = [[UIToolbar alloc] initWithFrame:CGRectMake(0, 160, 320, 60)];
    
    UIBarButtonItem *titleButton = [[UIBarButtonItem alloc] initWithTitle:@"Button" style:UIBarButtonItemStyleDone target:self action:@selector(handleButton:)];
    
    NSArray *segments = @[@"A", @"B", @"C"];
    UISegmentedControl *segment = [[UISegmentedControl alloc] initWithItems:segments];
    segment.segmentedControlStyle = UISegmentedControlStyleBar;
    segment.frame = CGRectMake(0, 0, 140, 44);
    UIBarButtonItem *segmentButton = [[UIBarButtonItem alloc] initWithCustomView:segment];
    
    UIBarButtonItem *space = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    
    UIBarButtonItem *refreshButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemRefresh target:self action:@selector(handleRefresh:)];
    
    NSArray *item = @[titleButton, segmentButton, space, refreshButton];
    [toolbar setItems:item];
    
    [self.view addSubview:toolbar];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
