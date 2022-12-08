//
//  ProfileViewController.swift
//  SmartCleaner
//
//  Created by Divya Bhamerkar on 2022-12-08.
//

import UIKit

class ProfileViewController: UIViewController {
    
    var profileInfo: Profile? = nil

    
    //MARK:- IBOutlets
    @IBOutlet weak var profileImage: UIImageView!
    var selectedImage : String?
    @IBOutlet weak var profileName: UILabel!
    @IBOutlet weak var profileDescription: UILabel!
    @IBOutlet weak var availability: UILabel!
    @IBOutlet weak var services: UILabel!
    @IBOutlet weak var wagePerHour: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        profileName.text = profileInfo?.name
        profileDescription.text = profileInfo?.description
        availability.text = profileInfo?.availability
        services.text = profileInfo?.services
        wagePerHour.text = profileInfo?.wage
        if let imageToLoad = selectedImage {
            profileImage.image = UIImage(named: imageToLoad)
        }
        //profileImage.image = UIImage(named: profileInfo?.image ?? "")
        
    }
    
}
