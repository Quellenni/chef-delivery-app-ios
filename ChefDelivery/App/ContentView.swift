//
//  ContentView.swift
//  ChefDelivery
//
//  Created by Quellenni Barreto on 30/06/23.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: - Atributes
    
    private var service = HomeService()
    
    //MARK: - View
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                NavigationBarView()
                    .padding(.horizontal, 15)
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 20) {
                        OrderTypeGridView()
                        CarouselTabView()
                        StoresContainerView()
                    }
                }
               
            }
        }
        .onAppear {
            service.fetchData()
        }
    }
    
    // MARK: - Methods
    
   
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewLayout(.sizeThatFits)
    }
}
