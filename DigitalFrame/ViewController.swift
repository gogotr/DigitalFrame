//
//  ViewController.swift
//  DigitalFrame
//
//  Created by 이상묵 on 2018. 8. 4..
//  Copyright © 2018년 이상묵. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var startFlag = false
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var speedSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let iphoneImages = [UIImage(named: "1.jpg")!,
                            UIImage(named: "2.jpg")!,
                            UIImage(named: "3.jpeg")!,
                            UIImage(named: "4.jpg")!,
                            UIImage(named: "5.jpg")!,
                            UIImage(named: "6.jpg")!,
                            ]

        imgView.animationImages = iphoneImages
        imgView.animationDuration = 12
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func startAction(_ sender: Any) {
        if !imgView.isAnimating
        {
            imgView.startAnimating()
            startButton.setTitle("Stop", for: UIControlState.normal)
        }else
        {
            imgView.stopAnimating()
            startButton.setTitle("Start", for: UIControlState.normal)
        }
        
    }
    
    @IBAction func sliderValueChanged(_ sender: Any) {
        imgView.animationDuration = Double(speedSlider.value)
        if startButton.currentTitle != "Start"{
            imgView.startAnimating()
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

