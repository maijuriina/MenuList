//
//  ContentView.swift
//  Shared
//
//  Created by Maijuriina Mustonen on 15/02/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                Text("Item")
                Text("Item")
                Text("Item")
            }
            .navigationTitle("Menu")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
