//
//  ItemDetail.swift
//  MenuList
//
//  Created by Maijuriina Mustonen on 15/02/2021.
//

import SwiftUI

struct ItemDetail: View {
    let item: MenuItem
    @EnvironmentObject var order: Order // pass order property as EnvironmentObject to make it watch for changes and refresh its UI when change announcement comes through
    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                Image(item.mainImage)
                    .resizable()
                    .scaledToFit() // these two make it so that the image runs edge to edge on all screen sizes
                Text("Photo: \(item.photoCredit)")
                    .padding(4)
                    .background(Color.black)
                    .font(.caption)
                    .foregroundColor(.white)
                    .offset(x: -5, y: -5)
            }

            Text(item.description)
                .padding()
            Button("Order this") {
                order.add(item: item)
            }
            .font(.headline)
            Spacer()
        }
        .navigationTitle(item.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ItemDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ItemDetail(item: MenuItem.example).environmentObject(Order()) // for debugging
        }
    }
}
