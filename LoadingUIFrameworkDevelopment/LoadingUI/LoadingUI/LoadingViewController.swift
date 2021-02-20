//
//  LoadingViewController.swift
//  LoadingUI
//
//  Created by Jeff Kang on 2/17/21.
//

import UIKit

public class LoadingViewController: UIViewController {
    
    private var loadingView: IndeterminateLoadingView?

    public override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    public override func viewWillAppear(_ animated: Bool = true) {
        let widthCenter = view.frame.width / 2 - 100
        let heightCenter = self.view.frame.size.height / 2 - 100
        loadingView = IndeterminateLoadingView(frame: CGRect(x: widthCenter, y: heightCenter, width: 200, height: 200))
        guard let loadingView = loadingView else { return }
        self.view.addSubview(loadingView)
        loadingView.startAnimating()
    }
    
    public override func viewWillDisappear(_ animated: Bool = true) {
        guard let loadingView = loadingView else { return }
        loadingView.stopAnimating()
    }

}
