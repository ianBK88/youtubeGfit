//
//  Model.swift
//  G-Fit YouTube
//
//  Created by ian oliver on 3/9/23.
//

import Foundation

class Model {
    
    func getVideos (){
        
         // create URL Object
        let url = URL(string: Constants.API_URL)
        
        guard url != nil else{
            return
        }
        // Get URLSession object
        let session = URLSession.shared
        // Get a data task from URLSession obj
        let dataTask = session.dataTask(with: url!) { (data, response, error) in
            
            // check for errors
            if error != nil || data == nil {
                return
            }
            do {
                // parsing data into video objects
                let decoder = JSONDecoder()
                decoder.dateDecodingStrategy = .iso8601
                
                let response = try decoder.decode(Response.self, from: data!)
                
                dump(response)
            }
            catch{
            }
           
        }
        
       
        // Kick off task
        dataTask.resume()
    }
}
