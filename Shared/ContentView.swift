//
//  ContentView.swift
//  Shared
//
//  Created by Maijuriina Mustonen on 15/02/2021.
//

import SwiftUI

struct ContentView: View {
    let menu = Bundle.main.decode([MenuSection].self, from: "menu.json") // get data from json
    var body: some View {
        NavigationView {
            List {
                ForEach(menu) { section in
                    Section(header: Text(section.name)) { // get category as a List header
                        ForEach(section.items) { item in
                            ItemRow(item: item) // creates new ItemRow for each item in section
                        }
                    }
                }
            }
            .navigationTitle("Menu")
            .listStyle(InsetGroupedListStyle())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
