//
//  ProductDetailView.swift
//  ChefDelivery
//
//  Created by Quellenni Barreto on 01/07/23.
//

import SwiftUI

struct ProductDetailView: View {
    
    let product: ProductType
    @State private var productQuantity = 1
   
    var body: some View {
        VStack {
            
            ProductDetailHeaderView(product: product)
           
            Spacer()
    
            ProductDetailQuanttyView(productQuantity: $productQuantity)
            
            
            
            
             Spacer()
            
            ProductDetailBottomView()
        }
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(product: storesMock[0].products[0])
    }
}

struct ProductDetailBottomView: View {
    var body: some View {
        Button {
            print("O botão foi pressionado")
        } label: {
            HStack {
                Image(systemName: "cart")
                
                Text("Adicionar ao carrinho")
            }
            .padding(.horizontal, 32)
            .padding(.vertical, 16)
            .font(.title3)
            .bold()
            .background(Color("ColorRed"))
            .foregroundColor(.white)
            .cornerRadius(32)
            .shadow(color: Color("ColorRedDark").opacity(0.5), radius: 18, x: 6, y: 8)
        }
    }
}
