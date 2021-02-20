//
//  ViewController.swift
//  LoadingUITest
//
//  Created by Jeff Kang on 2/17/21.
//

import UIKit
import LoadingUI

class ViewController: UIViewController {
    
    let loadingVC = LoadingViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func animateButtonTapped(_ sender: UIBarButtonItem) {
        self.present(loadingVC, animated: true, completion: nil)
    }
    
}

