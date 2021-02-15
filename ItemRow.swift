//
//  ItemRow.swift
//  MenuList
//
//  Created by Maijuriina Mustonen on 15/02/2021.
//

import SwiftUI

struct ItemRow: View {
    let item: MenuItem // introduce MenuItem for calls
    let colors: [String: Color] = ["D": .purple, "G": .black, "N": .red, "S": .blue, "V": .green] // create dictionary for allergen categories and assign their colours
    
    var body: some View {
        HStack {
            Image(item.thumbnailImage)
                //.cornerRadius(6.0)
                .clipShape(Circle())
            //.overlay(Circle().stroke(Color.gray, lineWidth: 2))
            
            VStack(alignment: .leading) {
                Text(item.name)
                    .font(.headline)
                Text("$\(item.price)")
            }
            Spacer()
            
            ForEach(item.restrictions, id: \.self) { restriction in // loop restrictions for each item using string itself as identifier
                Text(restriction)
                    .font(.caption)
                    .fontWeight(.black)
                    .padding(6)
                    .background(colors[restriction, default: .black]) // find colors from array
                    .clipShape(Circle())
                    .foregroundColor(.white)
            }
            
        }
    }
}

struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
        ItemRow(item: MenuItem.example)
    }
}
