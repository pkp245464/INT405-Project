//
//  FeedBackFormVC.swift
//  PROJECT
//
//  Created by Student on 08/11/22.
//  Copyright © 2022 Student. All rights reserved.
//

import UIKit

class FeedBackFormVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func darkModeB(_ sender: UISwitch) {
        if(sender.isOn == true) {
            view.backgroundColor = UIColor.black
        }
        else {
            view.backgroundColor = UIColor.white
        }
    }
    
    
    @IBOutlet var l1: UITextField!
    @IBOutlet var l2: UITextField!
    @IBOutlet var l3: UITextField!
    
    @IBOutlet var la1: UILabel!
    @IBAction func sl(_ sender: UISlider) {
        la1.text = String(Int(sender.value))
    }
    
    @IBOutlet var lg1: UILabel!
    @IBAction func sc1(_ sender: UISegmentedControl) {
        var arr = ["Male","Female","Other"]
        let ind = sender.selectedSegmentIndex
        let ans = arr[ind]
        lg1.text = "\(ans)"
    }
    
    
    
    
    @IBAction func sub(_ sender: Any) {
        let a = String(l1.text!)
        let b = String(l2.text!)
        let c = String(l3.text!)
        
        if(a.count > 0 && b.count > 0 && c.count > 0) {
            performSegue(withIdentifier: "IDTHY", sender: self)
        }
        else {
            let createAlert = UIAlertController(title: "Complete The Form", message: "Try Again", preferredStyle: .alert)
            createAlert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            createAlert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
            self.present(createAlert,animated: true,completion: nil)
        }
        
    }
    
   

}
