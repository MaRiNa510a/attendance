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
    
//    @IBAction func changeDate(sender: UIDatePicker) {
//        datelabel.text = self.format(date: datePicker.date)
//    }
//
//    func format(date:Date) ->String {
//        let dateformatter = DateFormatter()
//        dateformatter.dateFormat = "yyyy/mm/dd"
//        let strDate = dateformatter.string(from: date)
//
//        return strDate
//
//    }


    override func viewDidLoad() {
        super.viewDidLoad()

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
