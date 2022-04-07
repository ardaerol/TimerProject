//
//  ViewController.swift
//  TimerProject
//
//  Created by Arda Erol on 28.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    var timer = Timer()
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        counter = 20
        timeLabel.text = "Time: \(counter)"
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunc), userInfo: nil, repeats: true)
    }
    
    @objc func timerFunc(){
        timeLabel.text = "Time: \(counter)"
        counter -= 1
        
        if counter == 0 {
            timer.invalidate()
            timeLabel.text = "time s over"
        }
    }


    @IBAction func buttonClicked(_ sender: Any) {
        print("button clicked")
    }


}
