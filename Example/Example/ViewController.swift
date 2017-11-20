//
//  ViewController.swift
//  Example
//
//  Created by JeffZhao on 2017-11-20.
//  Copyright © 2017年 JeffZhao. All rights reserved.
//

import UIKit

private var key: Void?

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.jz.setAssociatedObject(key: &key, value: "12");
        print(jz.getAssociatedObject(key: &key)!)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

