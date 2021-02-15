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
    @State private var addLoyaltyDetails = false
    @State private var loyaltyNumber = ""
    let tipAmounts = [10, 15, 20, 25, 0]
    @State private var tipAmount = 15 // add property for storing selected tipAmount
    
    var body: some View {
        Form {
            Section {
                Picker("How do you want to pay?", selection: $paymentType) { // picker reads and writes values - two-way binding
                    ForEach(paymentTypes, id: \.self) {
                        Text($0)
                    }
                }
            }
            
            Toggle("Add iDine loyalty card", isOn: $addLoyaltyDetails.animation())
            if addLoyaltyDetails { // if loyalty has been toggled, show below
                TextField("Enter your iDine ID", text: $loyaltyNumber)
            }
            
            Section(header: Text("Add a tip?")) {
                Picker("Percentage:", selection: $tipAmount) { // selection tied to tipAmount
                    ForEach(tipAmounts, id: \.self) { // set id to own value
                        Text("\($0)%")
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
            }
            
            Section(header: Text("Total: $100")) {
                Button("Confirm order") {
                    // place order
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
