//
//  FirstViewController.swift
//  put.io
//
//  Created by Kristian Freeman on 11/25/14.
//  Copyright (c) 2014 Kristian Freeman. All rights reserved.
//

import UIKit
import Alamofire

class FirstViewController: UIViewController {
    @IBOutlet weak var urlString: UILabel!
    @IBOutlet weak var downloadButton: UIButton!
    var currentUrl: NSURL?
    var apiKey: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let appDelegate = UIApplication.sharedApplication().delegate as AppDelegate
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func setURL(url: NSURL) {
        currentUrl = url
        urlString.text = "Loaded."
        enableButton()
    }
    
    func setAPIKey(key: String) {
        apiKey = key
    }
    
    func enableButton() {
        downloadButton.hidden = false
    }
    
    @IBAction func download(sender: AnyObject) {
        constructTransfer()
    }
    
    func constructTransfer() {
        let manager = Alamofire.Manager.sharedInstance
        manager.session.configuration.HTTPAdditionalHeaders = [
            "Accept": "application/json"
        ]
        
        let parameters = [
            "url": currentUrl!.absoluteString!,
        ]
        
        var url = "https://api.put.io/v2/transfers/add?oauth_token=" + apiKey!
        
        println(parameters)
        manager.request(.POST, url, parameters: parameters)
                 .responseJSON { (request, response, JSON, error) in
                     println(request.URLString)
                     println(response)
                     println(JSON)
                     println(error)
                 }
        
        currentUrl = nil
        urlString.text = nil
        downloadButton.hidden = true

    }
}

