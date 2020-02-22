//
//  AppConstants.swift
//  imgurSampleApp
//
//  Created by Wagner Gil Junior on 22/02/20.
//  Copyright © 2020 Wagner Gil Junior. All rights reserved.
//

import Foundation

struct AppConstants {
    
    static let httpProtocol : String = "https://"
    static let apiVersion : String = "/3"
    static let domain : String = "api.imgur.com"
    static let keySearch : String = "/gallery/search/?q=cats"
    static let headerParamAuthorization : String = "Client-ID 1ceddedc03a5d71"
    static let headerParamClientSecret: String  = "63775118a9f912fd91ed99574becf3b375d9eeca"
    static let baseUrl : String = AppConstants.httpProtocol + AppConstants.domain + AppConstants.apiVersion + AppConstants.keySearch
    
}
