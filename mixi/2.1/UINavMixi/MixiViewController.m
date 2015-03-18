//
//  MixiViewController.m
//  UINavMixi
//
//  Created by 高橋 誠二 on 2015/03/18.
//  Copyright (c) 2015年 高橋 誠二. All rights reserved.
//

#import "MixiViewController.h"

@interface MixiViewController ()

@end

@implementation MixiViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithTitle:@"pop"
                                                                    style:UIBarButtonItemStylePlain
                                                                   target:self
                                                                   action:@selector(pressPopButton)];
    self.navigationItem.rightBarButtonItem = rightButton;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pushButtonTapped:(id)sender {
    MixiViewController *viewController = [self.storyboard instantiateViewControllerWithIdentifier:@"MixiViewController"];
    [self.navigationController pushViewController:viewController animated:YES];
}

- (void)pressPopButton
{
    [self.navigationController popViewControllerAnimated:YES];
    NSLog(@"Yo");
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
