//
//  MenuListApp.swift
//  Shared
//
//  Created by Maijuriina Mustonen on 15/02/2021.
//

import SwiftUI

@main
struct MenuListApp: App {
    @StateObject var order = Order() // give order as property which is created when app is started and kept alive regardless of what view is shown
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(order) // pass order to ContentView struct
        }
    }
}
