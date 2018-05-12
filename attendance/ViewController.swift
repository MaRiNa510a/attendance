//
//  ViewController.swift
//  attendance
//
//  Created by Marina Goto on 2018/04/29.
//  Copyright © 2018年 lifeistech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func checkButtonTapped() {
        let saveData = UserDefaults.standard
        
        if let saveData = saveData.array(forKey: "schedule") {
            if saveData.count == 0 {
                self.performSegue(withIdentifier: "toAddView", sender: nil)
            }
        }
                
        let alert: UIAlertController = UIAlertController(
                    title: "登録",
                    message: "まずは「登録」をタップしてイベント登録してください。",
                    preferredStyle: .alert
                )
                
        alert.addAction(UIAlertAction(
                    title: "OK",
                    style: .default,
                    handler: nil
                ))
        
                self.present(alert, animated: true, completion: nil)
            
            }
        }
        


    


