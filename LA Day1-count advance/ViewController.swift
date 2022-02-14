//
//  ViewController.swift
//  LA Day1-count advance
//
//  Created by Motonari Sakuma on 2022/02/14.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet var gradientView: UIView!
    
    @IBOutlet var countLabel: UILabel!
    
    @IBOutlet var tapPlusButton: UIButton!
    
    @IBOutlet var tapMinusButton: UIButton!
    
    @IBOutlet var tapResetButton: UIButton!
    
    var tapCount = 0
    
    let plusButtonPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "drumSound")!.data)
    
    let minusButtonPlayer = try! AVAudioPlayer(data: NSDataAsset(name: "pafu")!.data)
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        gradientView.backgroundColor = .clear
        let gradientLayer: CAGradientLayer = CAGradientLayer()
        gradientLayer.frame.size = gradientView.frame.size
        gradientLayer.colors = [UIColor.orange.cgColor,UIColor.red.cgColor]
        gradientView.layer.insertSublayer(gradientLayer, at: 0)
        
        tapPlusButton.layer.cornerRadius = 42
        tapMinusButton.layer.cornerRadius = 42
    }

    @IBAction func tapTapPlusButton() {
        tapCount = tapCount + 1
        countLabel.text = String(tapCount)
    }
    @IBAction func touchDownTapPlusButton(){
        plusButtonPlayer.currentTime = 0
        plusButtonPlayer.play()
    }
    
    @IBAction func tapTapMinusButton() {
        tapCount = tapCount - 1
        countLabel.text = String(tapCount)
    }
    @IBAction func touchDownMinusPlusButton(){
        minusButtonPlayer.currentTime = 0
        minusButtonPlayer.play()
    }
    
    @IBAction func tapTapResetButton() {
        tapCount = 0
        countLabel.text = String(tapCount)
    }
}

