//
//  ViewController.swift
//  light
//
//  Created by Alexandria West on 2/19/19.
//  Copyright © 2019 Alexandria West. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var lightOn = true
    var lightYellow = false
    var lightGreen = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateYellow()
        updateGreen()
        updateUI()
    }
    @IBAction func yellowButton(_ sender: Any) {
        lightYellow = !lightYellow
        updateYellow()
        
    }
    @IBAction func buttonPressed(_ sender: Any) {
        lightOn = !lightOn
        updateUI()
    }
    @IBAction func greenButton(_ sender: Any) {
        lightGreen = !lightGreen
        updateGreen()
    }
    func updateUI() {
       view.backgroundColor = lightOn ? .white : .black
      }
    func updateYellow() {
        view.backgroundColor = lightYellow ? .yellow : .black
    }
    func updateGreen()  {
        view.backgroundColor = lightGreen ? .green : .black
    }

}

