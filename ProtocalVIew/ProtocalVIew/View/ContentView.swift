//
//  ContentView.swift
//  ProtocalVIew
//
//  Created by Thongchai Subsaidee on 8/4/2564 BE.
//

import SwiftUI

struct ContentView: View, ContactableProtocal {

    @ObservedObject private var customerVM = CustomerViewModel()
    
    var body: some View {
        VStack {
            // Call Customer
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.green)
                .frame(width: 200, height: 50)
                .overlay(
                    Text("Call Customer")
                        .foregroundColor(.white)
                )
                .shadow(radius: 3)
                .onTapGesture {
                    self.contact(method: .phone(self.customerVM.phoneNumber))
                }
            
            // Email Customer
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.green)
                .frame(width: 200, height: 50)
                .overlay(
                    Text("Email Customer")
                        .foregroundColor(.white)
                )
                .shadow(radius: 3)
                .onTapGesture {
                    self.contact(method: .email(self.customerVM.emailAddress))
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
