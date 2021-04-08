//
//  CustomerViewModel.swift
//  ProtocalVIew
//
//  Created by Thongchai Subsaidee on 8/4/2564 BE.
//

import SwiftUI

class CustomerViewModel: ObservableObject {
    
    var customer: Customer = Customer()
    
    @Published var phoneNumber: String = ""
    @Published var emailAddress: String = ""
    
    init() {
        phoneNumber = customer.prhoneNumber
        emailAddress = customer.emailAddress
    }
    
    
}

