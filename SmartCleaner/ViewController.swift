//
//  ViewController.swift
//  SmartCleaner
//
//  Created by Lyubov Korovina on 2022-11-29.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func sendRequest(_ sender: UIButton) {
        
        let vc = UIViewController()
        vc.view.backgroundColor = .yellow
        
        navigationController?.pushViewController(vc, animated: true)
    }
    
}

