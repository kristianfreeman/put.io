//
//  SecondViewController.swift
//  put.io
//
//  Created by Kristian Freeman on 11/25/14.
//  Copyright (c) 2014 Kristian Freeman. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    var apiKey: String?
    @IBOutlet weak var apiKeyLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        apiKeyLabel.text = apiKey
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func setAPIKey(key: String) {
        apiKey = key
    }
    
}

