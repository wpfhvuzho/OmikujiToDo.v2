//
//  ViewController.swift
//  WordList
//
//  Created by 高橋　龍 on 2020/07/09.
//  Copyright © 2020 Takahashi sir. All rights reserved.
//

import UIKit

var count = 0

class ViewController: UIViewController {

    @IBOutlet var resultUnsei: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        if count == 1 {
            if unsei == 0 {
                resultUnsei.text = "大凶"
            }else if unsei == 1 {
                resultUnsei.text = "末凶"
            }else if unsei == 2 {
                resultUnsei.text = "半凶"
            }else if unsei == 3 {
                resultUnsei.text = "小凶"
            }else if unsei == 4 {
                resultUnsei.text = "凶"
            }else if unsei == 5 {
                resultUnsei.text = "末小"
            }else if unsei == 6 {
                resultUnsei.text = "末吉"
            }else if unsei == 7 {
                resultUnsei.text = "半吉"
            }else if unsei == 8 {
                resultUnsei.text = "吉"
            }else if unsei == 9 {
                resultUnsei.text = "小吉"
            }else if unsei == 10 {
                resultUnsei.text = "中吉"
            }else if unsei == 11 {
                resultUnsei.text = "大吉"
            }else if unsei == 12 {
                resultUnsei.text = "超吉"
            }
        }
    }
    
    


    
    
}

