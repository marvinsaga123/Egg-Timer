//
//  ViewController.swift
//  Egg Timer
//
//  Created by Marvin Sagastume on 10/16/18.
//  Copyright © 2018 Innovaze. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer = Timer()
    @IBOutlet weak var timerSecondsRemaing: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func resumeTimer(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.decreaseByOneSecond), userInfo: nil, repeats: true)
    }
    
    @IBAction func pauseTimer(_ sender: Any) {
        timer.invalidate()
    }
    
    @IBAction func resetTimer(_ sender: Any) {
        timerSecondsRemaing.text = String(210)
    }
    
    @IBAction func removeTenSeconds(_ sender: Any) {
        if (Int(timerSecondsRemaing.text!)! >= 10) {
            timerSecondsRemaing.text = String(Int(timerSecondsRemaing.text!)! - 10)
        }
    }
    
    @IBAction func addTenSeconds(_ sender: Any) {
        timerSecondsRemaing.text = String(Int(timerSecondsRemaing.text!)! + 10)
    }
    
    @objc func decreaseByOneSecond() {
        if (timerSecondsRemaing.text != "0") {
            timerSecondsRemaing.text = String(Int(timerSecondsRemaing.text!)! - 1)
        }
    }
}
