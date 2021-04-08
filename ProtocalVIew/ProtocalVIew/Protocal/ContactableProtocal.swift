//
//  ContactableProtocal.swift
//  ProtocalVIew
//
//  Created by Thongchai Subsaidee on 8/4/2564 BE.
//

import SwiftUI

enum ContactMethod {
    case phone(String)
    case email(String)
    
    var urlString: String {
        return prefix + value
    }
    
    private var prefix: String {
        switch self {
        case .phone:
            return "tel://"
        case .email:
            return "mailto:"
        }
    }
    
    private var value: String {
        switch self {
        case let .phone(value):
            return value
        case let .email(value):
            return value
        }
    }
    
}

protocol ContactableProtocal {
    func contact(method: ContactMethod)
}

extension ContactableProtocal {
    
    func contact(method: ContactMethod) {
        guard let url = URL(string: method.urlString) else {return}
        UIApplication.shared.open(url)
    }
}
