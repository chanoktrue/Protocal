//
//  ContactableProtocal.swift
//  ProtocalVIew
//
//  Created by Thongchai Subsaidee on 8/4/2564 BE.
//

import SwiftUI

protocol ContactableProtocal {
    func call(phoneNumber: String)
    func email(emailAddress: String)
}

extension ContactableProtocal {
    func call(phoneNumber: String) {
        guard let url = URL(string: "tel://" + phoneNumber) else {return}
        UIApplication.shared.open(url)
    }
    
    func email(emailAddress: String) {
        guard let url = URL(string: "mailto:" + emailAddress) else {return}
        UIApplication.shared.open(url)
    }
}
