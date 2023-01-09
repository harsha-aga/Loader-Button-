//
//  ViewController.swift
//  Weather App
//
//  Created by Harsha Agarwal on 03/01/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onClickAction(_ sender: LoaderButton) {
        sender.isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2)) {
            sender.isLoading = false
        }
    }
    
}

