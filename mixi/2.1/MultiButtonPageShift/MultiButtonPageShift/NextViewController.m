//
//  NextViewController.m
//  MultiButtonPageShift
//
//  Created by 高橋 誠二 on 2015/03/19.
//  Copyright (c) 2015年 高橋 誠二. All rights reserved.
//

#import "NextViewController.h"

@interface NextViewController ()
@property (strong, nonatomic) IBOutlet UILabel *pageName;
@end

@implementation NextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.pageName.text = self.messageFromPrevious;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
