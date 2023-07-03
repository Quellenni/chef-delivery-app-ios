//
//  NavigationBar.swift
//  ChefDelivery
//
//  Created by Quellenni Barreto on 30/06/23.
//

import SwiftUI

struct NavigationBarView: View {
    var body: some View {
        HStack{
            Spacer()
            Button("R.Vergueiro, 3185") {
            }
            .font(.subheadline)
            .fontWeight(.semibold)
            .foregroundColor(.black)
            
            Spacer()
            
            Button(action: {}) {
                Image(systemName: "bell.badge")
                    .font(.title3)
                    .foregroundColor(.red)
                
            }
            
        }
    }
}

struct NavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
