//
//  ViewController.swift
//  G-Fit YouTube
//
//  Created by ian oliver on 2/17/23.
//

import UIKit

class ViewController: UIViewController {

    var model = Model()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        model.getVideos()
    }


}

