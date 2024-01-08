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
    @State private var storesType: [StoreType] = []
    
    @State private var isLoading = true
    
    //MARK: - View
    var body: some View {
        NavigationView {
            VStack(spacing: 0) {
                if isLoading {
                    ProgressView()
                } else {
                    NavigationBarView()
                        .padding(.horizontal, 15)
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(spacing: 20) {
                            OrderTypeGridView()
                            CarouselTabView()
                            StoresContainerView(stores: storesType)
                        }
                    }
                }
            }
        }
        .onAppear {
            Task {
                await getStores()
            }
            getStoresWithAlamofire()
        }
    }
    
    // MARK: - Methods
    
    func getStores() async {
        do {
            let result = try await service.fetchData()
            switch result {
            case.success(let stores):
                self.storesType = stores
                self.isLoading = false
            case.failure(let error):
                print(error.localizedDescription)
                self.isLoading = false
            }
        } catch {
            print(error.localizedDescription)
            self.isLoading = false
        }
    }
    
    func getStoresWithAlamofire() {
        service.fetchDataWthAlamofire { stores, error in
            print(stores)
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewLayout(.sizeThatFits)
    }
}
