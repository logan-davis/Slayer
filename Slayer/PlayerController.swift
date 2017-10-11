//
//  PlayerController.swift
//  Slayer
//
//  Created by Logan Davis on 10/10/17.
//  Copyright © 2017 Mofoe Apps. All rights reserved.
//

import Foundation

class PlayerController {
    
    static let shared = PlayerController()
    var playerName: String = ""
    
    var currentPlayer: Player?
    
    let baseURL = URL(string: "https://www.tip.it/runescape/json/hiscore_user")
    
    func searchForRSN(by searchTerm: String, completion: @escaping(Player?) -> Void) {
        
        guard let unwrappedBaseURL = baseURL else { completion(nil); return}
        
        var urlComponents = URLComponents(url: unwrappedBaseURL, resolvingAgainstBaseURL: true)
        
        let queryItem1 = URLQueryItem(name: "old_stats", value: "1")
        let queryItem2 = URLQueryItem(name: "rsn", value: searchTerm)
        urlComponents?.queryItems = [queryItem1, queryItem2]
        
        guard let searchURL = urlComponents?.url else { completion(nil); return }
        
        var request = URLRequest(url: searchURL)
        
        request.httpMethod = "GET"
        request.httpBody = nil
        
        let dataTask = URLSession.shared.dataTask(with: request) { (data, _, error) in
            
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
                return
            }
            
            guard let data = data,
                let responseDataString = String(data: data, encoding: .utf8)
                else { completion(nil); return }
            print(responseDataString)
            
            guard let RSNDictionary = (try? JSONSerialization.jsonObject(with: data, options: .allowFragments)) as? [String:Any],
                let statsDictionary = RSNDictionary["stats"] as? [String:[String:Any]]
                else { completion(nil); return}
            
            let player = Player(dictionary: statsDictionary)
            
            self.currentPlayer = player
            
            completion(player)
        }
        dataTask.resume()
    }
    
    
}
