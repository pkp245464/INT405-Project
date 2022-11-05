//
//  AIndiaVC.swift
//  PROJECT
//
//  Created by Student on 14/08/1944 Saka.
//  Copyright © 1944 Student. All rights reserved.
//

import UIKit

class AIndiaVC: UIViewController {

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
    var num = 0
    var imageStack: [UIImage] = [
        UIImage(named: "ASPPT.png")!,
        UIImage(named: "Assam.jpeg")!,
        UIImage(named: "HawaMahal.jpeg")!,
        UIImage(named: "RedFort.jpeg")!,
        UIImage(named: "Varanasi.jpeg")!
    ]
    @IBOutlet weak var imageSet: UIImageView!
    @IBAction func prev(_ sender: Any) {
        if(num == 0) {
            return
        }
        num -= 1
        imageSet.image = imageStack[num]
    }
    @IBAction func nextimage(_ sender: Any) {
        if(num == 4) {
            return
        }
        num += 1
        imageSet.image = imageStack[num]
    }
    @IBAction func startAnimations(_ sender: Any) {
        imageSet.animationImages = imageStack
        imageSet.animationDuration = 5
        imageSet.startAnimating()
    }
    @IBAction func stopAnimations(_ sender: Any) {
        imageSet.stopAnimating()
    }
    

}
