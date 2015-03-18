//
//  MySecondViewController.h
//  MixiFirstProject
//
//  Created by 高橋 誠二 on 2015/03/18.
//  Copyright (c) 2015年 高橋 誠二. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol MySecondViewControllerDelegate <NSObject>
- (void)secondViewControllerButtonTapped;
@end


@interface MySecondViewController : UIViewController
@property (nonatomic, weak) id<MySecondViewControllerDelegate> delegate;

@end

