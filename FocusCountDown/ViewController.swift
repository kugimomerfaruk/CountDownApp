//
//  ViewController.swift
//  FocusCountDown
//
//  Created by ST1 on 3.10.2017.
//  Copyright © 2017 Kugim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var second = 5
    var timer = Timer()
    
    @IBOutlet weak var countDownLabel: UILabel!
    @IBOutlet var progressBarOutlet: UIProgressView!
    @IBOutlet weak var stepperOutlet: UIStepper!
    @IBOutlet weak var actionViewOutlet: UIView!
    
    
    
    @IBAction func stepperAction(_ sender: UIStepper) {
        
    countDownLabel.text = String(Int(sender.value))
        print(sender.value)
        //progressBarOutlet.progress = 0.0
        
        
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //print("Ekrana Dokundun")
        actionViewOutlet.isHidden = true
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: (#selector(ViewController.timerFunc)), userInfo: nil, repeats: true)
        
    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        //print("Elini Çektin")
        timer.invalidate()
        actionViewOutlet.isHidden = false
        
    }
    func timerFunc() {
        print("Çalışıyor")
        if second <= 0 {
        timer.invalidate()
            second = 0
            print("Harika Tamamladınız")
            return
            //timer Durdur
            
            
            
        }
        second -= 1
        
        print(second)
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

