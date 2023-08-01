//
//  ViewController.swift
//  LightTraffic
//
//  Created by Nguyễn Ngọc Sơn on 01/08/2023.
//

import UIKit

class ViewController: UIViewController {
    
    var isCheck: Bool = false
    
    @IBOutlet weak var redButton: UIButton!
    @IBOutlet weak var yellowButton: UIButton!
    @IBOutlet weak var greenButton: UIButton!
    
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView.backgroundColor = .gray
        redView.layer.cornerRadius = redView.frame.width/2
        yellowView.backgroundColor = .gray
        yellowView.layer.cornerRadius = yellowView.frame.width/2
        greenView.backgroundColor = .gray
        greenView.layer.cornerRadius = greenView.frame.width/2
    }
    @IBAction func onRed(_ sender: Any) {
        isCheck = !isCheck
        if isCheck {
            redView.backgroundColor = .red
            yellowView.backgroundColor = .gray
            greenView.backgroundColor = .gray
            
        } else {
            redView.backgroundColor = .gray
        }
    }
    
    @IBAction func onYellow(_ sender: Any) {
        isCheck = !isCheck
        if isCheck {
            yellowView.backgroundColor = .yellow
            redView.backgroundColor = .gray
            greenView.backgroundColor = .gray
        } else {
            yellowView.backgroundColor = .gray
        }
    }
    @IBAction func onGreen(_ sender: Any) {
        isCheck = !isCheck
        if isCheck {
            greenView.backgroundColor = .green
            redView.backgroundColor = .gray
            yellowView.backgroundColor = .gray
        } else {
            greenView.backgroundColor = .gray
        }
    }
}

