//
//  ContentView.swift
//  ProtocalVIew
//
//  Created by Thongchai Subsaidee on 8/4/2564 BE.
//

import SwiftUI

struct ContentView: View {
    
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
                    guard let url = URL(string: "tel://" + self.customerVM.phoneNumber) else {return}
                    UIApplication.shared.open(url)
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
                    print(customerVM.emailAddress)
                    guard let url = URL(string: "mailto:" + self.customerVM.emailAddress) else {return}
                    UIApplication.shared.open(url)
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
