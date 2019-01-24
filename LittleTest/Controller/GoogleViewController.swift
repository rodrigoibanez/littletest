//
//  GoogleViewController.swift
//  LittleTest
//
//  Created by Rodrigo Ibañez on 1/24/19.
//  Copyright © 2019. All rights reserved.
//

import UIKit
import WebKit

class GoogleViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        loadGooglePage()
    }

    func loadGooglePage() {
        let url = URL(string: "https://www.google.com/")!
        webView.load(URLRequest(url: url))
    }
}
