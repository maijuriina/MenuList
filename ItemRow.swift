//
//  ItemRow.swift
//  MenuList
//
//  Created by Maijuriina Mustonen on 15/02/2021.
//

import SwiftUI

struct ItemRow: View {
    let item: MenuItem // introduce MenuItem for calls
    
    var body: some View {
        Text(item.name)
    }
}

struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
        ItemRow(item: MenuItem.example)
    }
}
