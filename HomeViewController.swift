//
//  HomeViewController.swift
//  SmartCleaner
//
//  Created by RAJVI K CHAVDA on 08/12/22.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet var pet: UIButton!
    @IBOutlet var cleaning: UIButton!
    
    @IBOutlet var gardening: UIButton!
    
    @IBOutlet var child: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        configerButtons()
        // Do any additional setup after loading the view.
    }
    
    func configerButtons(){
        
        child.layer.cornerRadius = 0.5 * child.bounds.size.width
        child.clipsToBounds = true
        
        gardening.layer.cornerRadius = 0.5 * gardening.bounds.size.width
        gardening.clipsToBounds = true
        
        cleaning.layer.cornerRadius = 0.5 * cleaning.bounds.size.width
        cleaning.clipsToBounds = true
        
        pet.layer.cornerRadius = 0.5 * pet.bounds.size.width
        pet.clipsToBounds = true
        
        
    }
    

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
