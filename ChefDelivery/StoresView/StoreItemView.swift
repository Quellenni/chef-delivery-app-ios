//
//  StoreItemView.swift
//  ChefDelivery
//
//  Created by Quellenni Barreto on 30/06/23.
//

import SwiftUI

struct StoreItemView: View {
    
    var store: StoreType
    
    var body: some View {
        HStack {
            Image(store.logoImage)
                .resizable()
                .scaledToFit()
                .cornerRadius(25)
                .frame(width: 50, height: 50)
        
            VStack {
                Text(store.name)
                    .font(.subheadline)
            }
            
            Spacer()
        }
    }
}

struct StoreItemView_Previews: PreviewProvider {
    static var previews: some View {
        StoreItemView(store: storesMock[0])
        .previewLayout(.sizeThatFits)
    }
}


