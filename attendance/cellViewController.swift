//
//  cellViewController.swift
//  attendance
//
//  Created by Marina Goto on 2018/04/29.
//  Copyright © 2018年 lifeistech. All rights reserved.
//

import UIKit

class cellViewController: UIViewController {
    
    @IBOutlet var datelabel: UILabel!
    @IBOutlet var namelabel: UILabel!
    @IBOutlet var reasonlabel: UILabel!

    var cellIndex: Int!
    var label1: UILabel!
    var NameArray: [String]!
    var label2: UILabel!
    var ReasonArray: [String]!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        NameArray = savedata.array(forkey: "schedule.name") as! [String]
        label1 = NameArray[cellIndex]
        
        ReasonArray = savedata.array(forkey: "schedule.reason") as! [String]
        label2 = ReasonArray[cellIndex]

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
