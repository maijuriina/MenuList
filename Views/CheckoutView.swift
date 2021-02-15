//
//  CheckoutView.swift
//  MenuList
//
//  Created by Maijuriina Mustonen on 15/02/2021.
//

import SwiftUI

struct CheckoutView: View {
    @EnvironmentObject var order: Order
    let paymentTypes = ["Cash", "Credit Card", "iDine Points"]
    @State private var paymentType = "Cash" // State watches changes for simple values, and is marked private
    
    var body: some View {
        Form {
            Section {
                Picker("How do you want to pay?", selection: $paymentType) { // picker reads and writes values - two-way binding
                    ForEach(paymentTypes, id: \.self) {
                        Text($0)
                    }
                }
            }
        }
        .navigationTitle("Payment")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct CheckoutView_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutView().environmentObject(Order()) // provide property for debugging
    }
}
