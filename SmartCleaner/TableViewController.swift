//
//  TableViewController.swift
//  SmartCleaner
//
//  Created by Lyubov Korovina on 2022-12-01.
//

import UIKit

class TableViewController: UITableViewController {
    
    //MARK-: IBOutlets
    @IBOutlet weak var searchBar: UISearchBar!
    
    let profiles = DBHelper().profiles
    var getProgiles: [Profile]!

    override func viewDidLoad() {
        super.viewDidLoad()
        getProgiles = profiles

        title = "All Profiles"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return getProgiles.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "profiles", for: indexPath) as! TableViewCell

        let i = indexPath.row

        let profile = getProgiles[i]
        cell.profileName.text = profile.name
        cell.profileDescription.text = profile.description
        cell.profileImage.image = UIImage(named: profile.image)

        return cell
    }

}
