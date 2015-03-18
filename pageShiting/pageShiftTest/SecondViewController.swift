//
//  SecondViewController.swift
//  pageShiftTest
//
//  Created by 高橋 誠二 on 2015/03/16.
//  Copyright (c) 2015年 高橋 誠二. All rights reserved.
//


import UIKit

class SecondViewController: UIViewController {
    var myButtonBack: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.blueColor()
        
        myButtonBack = UIButton(frame: CGRectMake(0, 0, 120, 50))
        myButtonBack.backgroundColor = UIColor.redColor()
        myButtonBack.layer.masksToBounds = true
        myButtonBack.setTitle("Back", forState: .Normal)
        myButtonBack.layer.cornerRadius = 20.0
        myButtonBack.layer.position = CGPoint(x: self.view.bounds.width/2, y: self.view.bounds.height-50)
        myButtonBack.addTarget(self, action: "onClickMyButton:", forControlEvents: .TouchUpInside)
        
        self.view.addSubview(myButtonBack);
    }
    
    func onClickMyButton(sender: UIButton) {
        let myViewController: FirstViewController = FirstViewController()
        
        myViewController.modalTransitionStyle = UIModalTransitionStyle.CrossDissolve
        self.presentViewController(myViewController, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}