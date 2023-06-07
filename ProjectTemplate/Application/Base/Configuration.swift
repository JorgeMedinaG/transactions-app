//
//  Environment.swift
//  ProjectTemplate
//
//  Created by Koombea on 4/11/22.
//

import Foundation

struct Configuration {
    
    enum Environment: String {
        case development
        case staging
        case production
    }
    
    static let environment: Environment = {
        let configuration = (Bundle.main.object(forInfoDictionaryKey: "Configuration") as? String)?.lowercased() ?? ""
        return Environment(rawValue: configuration) ?? .development
    }()
}
