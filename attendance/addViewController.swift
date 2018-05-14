//
//  addViewController.swift
//  attendance
//
//  Created by Marina Goto on 2018/04/29.
//  Copyright © 2018年 lifeistech. All rights reserved.
//

import UIKit

class addViewController: UIViewController {
    
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var NameLabel: UILabel!
    @IBOutlet var reasonLabel: UILabel!
    
    var date: [NSDate] = []
    var name: [String] = []
    var reason: [String] = []
    var nowNumber: Int = 0
    
    let saveData = UserDefaults.standard
    
    @IBOutlet var datepicker: UIDatePicker!
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var reasonTextField: UITextField!
    
    @IBAction func saveD() {
        let dateInfo = datepicker.date
        let nameInfo = nameTextField.text!
        let reasonInfo = reasonTextField.text!
            
        date.append(dateInfo as NSDate)
        name.append(nameInfo)
        reason.append(reasonInfo)
        saveData.set(date, forKey: "schedule.date")
        saveData.set(name, forKey: "schedule.name")
        saveData.set(reason, forKey: "schedule.reason")

        let alert = UIAlertController (
            title: "保存完了",
            message: "イベントの登録が完了しました",
            preferredStyle: UIAlertControllerStyle.alert)
        
        let action = UIAlertAction(
            title: "OK",
            style: .default,
            handler: {action in self.dismiss(animated: true, completion: nil)})
        
        alert.addAction(action)
        
        
        //self.performSegue(withIdentifier: "toAdd", sender: nil)

        self.present(alert, animated: true, completion: nil)
//        nameTextField.text = ""
//        reasonTextField.text = ""

    }

    override func viewDidLoad() {
        super.viewDidLoad()
        if saveData.array(forKey: "schedule.date") != nil {
            date = saveData.array(forKey: "schedule.date") as! [NSDate]
            name = saveData.array(forKey: "schedule.name") as! [String]
            reason = saveData.array(forKey: "schedule.reason") as! [String]

        }
        
        


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
