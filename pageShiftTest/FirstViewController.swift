//
//  FirstViewController.swift
//  pageShiftTest
//
//  Created by 高橋 誠二 on 2015/03/16.
//  Copyright (c) 2015年 高橋 誠二. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    var myButtonNext: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.greenColor()
        
        myButtonNext = UIButton(frame: CGRectMake(0, 0, 120, 50))
        myButtonNext.backgroundColor = UIColor.redColor()
        myButtonNext.layer.masksToBounds = true
        myButtonNext.setTitle("Next", forState: .Normal)
        myButtonNext.layer.cornerRadius = 20.0
        myButtonNext.layer.position = CGPoint(x: self.view.bounds.width/2, y: self.view.bounds.height-50)
        myButtonNext.addTarget(self, action: "onClickMyButton:", forControlEvents: .TouchUpInside)
        
        self.view.addSubview(myButtonNext);
    }
    
    func onClickMyButton(sender: UIButton) {
        let mySecondViewController: SecondViewController = SecondViewController()
        
        mySecondViewController.modalTransitionStyle = UIModalTransitionStyle.CrossDissolve
        self.presentViewController(mySecondViewController, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}