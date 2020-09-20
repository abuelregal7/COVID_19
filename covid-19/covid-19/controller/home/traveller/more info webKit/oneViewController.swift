//
//  oneViewController.swift
//  covid-19
//
//  Created by a7med abu elre9al on 5/4/20.
//  Copyright © 2020 a7med abu elre9al. All rights reserved.
//

import UIKit
import WebKit

class oneViewController: UIViewController {

    @IBOutlet weak var webKitView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let url = URL(string: "https://apps.who.int/iris/bitstream/handle/10665/331003/WHO-2019-nCoV-POEmgmt-2020.1-ara.pdf")
        let request = URLRequest(url: url!)
        webKitView.load(request)
        
    }
    
    @IBAction func backButtonAction(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
    

    

}
