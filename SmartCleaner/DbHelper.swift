//
//  DbHelper.swift
//  SmartCleaner
//
//  Created by Divya Bhamerkar on 2022-12-08.
//

import Foundation

struct Profiles: Codable {
    let profiles: [Profile]
}

struct Profile: Codable {
    var id: Int = 0
    var name: String = ""
    var description: String = ""
    var wage: String = ""
    var image: String = ""
}

class DBHelper {
    var profiles: [Profile] {
        loadJson()!
    }
    
    private func loadJson() -> [Profile]? {
        if let url = Bundle.main.url(forResource: "smart_cleaner_data", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode(Profiles.self, from: data)
                
                return jsonData.profiles
            } catch {
                print("error:\(error)")
            }
        }
        return nil
    }
}

