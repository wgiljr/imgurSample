//
//  BaseService.swift
//  imgurSampleApp
//
//  Created by Wagner Gil Junior on 22/02/20.
//  Copyright © 2020 Wagner Gil Junior. All rights reserved.
//

import Foundation


class BaseService {
    
    func makeRequest() {
        let urlString = AppConstants.baseUrl
        guard let url = URL(string: urlString) else { return }
        
        var request = URLRequest(url: url)
        request.setValue(AppConstants.headerParamAuthorization, forHTTPHeaderField: "Authorization")
        
        let session = URLSession.shared
        
        let task = session.dataTask(with: request) { data, response, error in
            if error != nil || (response as? HTTPURLResponse)?.statusCode != 200 {
                print("")
                return
            }
            
        }
        
    }
}
