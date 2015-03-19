//
//  ViewController.m
//  MultiButtonPageShift
//
//  Created by 高橋 誠二 on 2015/03/19.
//  Copyright (c) 2015年 高橋 誠二. All rights reserved.
//

#import "ViewController.h"
#import "NextViewController.h"

@interface ViewController ()
@property (nonatomic, strong) NSString *stringToPass;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonATapped:(id)sender {
    self.stringToPass = @"This is page A";
    [self performSegueWithIdentifier:@"NextViewController" sender:nil];
}

- (IBAction)buttonBTapped:(id)sender {
    self.stringToPass = @"This is page B";
    [self performSegueWithIdentifier:@"NextViewController" sender:nil];
    
}

- (IBAction)buttonCTapped:(id)sender {
    self.stringToPass = @"This is page C";
    [self performSegueWithIdentifier:@"NextViewController" sender:nil];
    
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    NextViewController *destinationController = segue.destinationViewController;
    destinationController.messageFromPrevious = self.stringToPass;
}

@end
