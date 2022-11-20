//
//  VideoModel.swift
//  NomadGym
//
//  Created by Damon De Letter on 13/11/2022.
//

import Foundation

class VideoModel {
    func getVideos() {
        let url = URL(string: Constants.API_URL)
        
        guard url != nil else {
            return
        }
        
        let session = URLSession.shared
        
        let dataTask = session.dataTask(with: url!) { (data,response, error) in
        
            if error != nil || data == nil {
                return
            }
            
        }
        dataTask.resume()
        
    }
}
