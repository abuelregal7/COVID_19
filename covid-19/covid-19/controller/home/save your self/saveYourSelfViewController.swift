//
//  saveYourSelfViewController.swift
//  covid-19
//
//  Created by a7med abu elre9al on 5/3/20.
//  Copyright © 2020 a7med abu elre9al. All rights reserved.
//

import UIKit
import WebKit

class saveYourSelfViewController: UIViewController {
    @IBOutlet weak var webKitView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let url = URL(string: "https://youtu.be/O0OGdzpLi_U")
        let request = URLRequest(url: url!)
        webKitView.load(request)
        
    }
    
    @IBAction func backButtonAction(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
    

    

}
