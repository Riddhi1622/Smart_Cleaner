//
//  TableViewCell.swift
//  SmartCleaner
//
//  Created by Lyubov Korovina on 2022-12-03.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    //MARK:- Outlets
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var profileDescription: UILabel!
    @IBOutlet weak var profileName: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
