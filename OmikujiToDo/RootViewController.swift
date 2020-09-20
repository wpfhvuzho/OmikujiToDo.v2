//
//  RootViewController.swift
//  OmikujiToDo
//
//  Created by 高橋　龍 on 2020/07/12.
//  Copyright © 2020 Takahashi sir. All rights reserved.
//

import UIKit


class RootViewController: UIViewController {
    
    @IBOutlet var taskCounted: UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func allTaskCount() {
        taskCounted?.text = String(taskCount)
    }
    
    
    
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
