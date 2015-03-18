//
//  MixiSampleViewController.m
//  MixiFirstProject
//
//  Created by 高橋 誠二 on 2015/03/18.
//  Copyright (c) 2015年 高橋 誠二. All rights reserved.
//

#import "MixiSampleViewController.h"
#import "MySecondViewController.h"

@interface MixiSampleViewController ()

@end

@implementation MixiSampleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.label.text = @"test";
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonTapped:(id)sender {
    self.label.text = @"Tapped!!";
}

- (IBAction)secondButtonTapped:(id)sender {
    MySecondViewController *secondViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"MySecondViewController"];
    secondViewController.delegate = self;
    [self presentViewController:secondViewController animated:YES completion:nil];
}

- (void)secondViewControllerButtonTapped {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)unwindToSampleViewController:(UIStoryboardSegue *)segue {
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
