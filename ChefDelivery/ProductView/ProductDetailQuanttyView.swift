//
//  ProductDetailQuanttyView.swift
//  ChefDelivery
//
//  Created by Quellenni Barreto on 11/09/23.
//

import SwiftUI

struct ProductDetailQuanttyView: View {
    
    @Binding var productQuantity: Int
    
    var body: some View {
        VStack(spacing: 16) {
            Text("Quantidade")
                .font(.title3)
                .bold()
            
            HStack {
                Button {
                    if productQuantity > 1 {
                        productQuantity -= 1
                    }
                } label: {
                    Image(systemName: "minus.circle.fill")
                        .font(.title)
                        .bold()
                }
                
                Text("\(productQuantity)")
                    .font(.title2)
                    .bold()
                
                Button {
                    productQuantity += 1
                } label: {
                    Image(systemName: "plus.circle.fill")
                        .font(.title)
                        .bold()
                }
            }
            
        }
    }
}

struct ProductDetailQuanttyView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailQuanttyView(productQuantity: .constant(1))
    }
}
