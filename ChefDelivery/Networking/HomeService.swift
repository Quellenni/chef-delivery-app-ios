//
//  Home Service.swift
//  ChefDelivery
//
//  Created by quellenni.barreto on 28/12/23.
//

import Foundation

struct HomeService {
    func fetchData() {
        guard let url = URL(string: "https://private-e3f50-quellenni.apiary-mock.com/home") else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            if let error = error {
                print(error.localizedDescription)
            }
            else if let data = data {
                let storesObjects = try? JSONDecoder().decode([StoreType].self, from: data)
                print(storesObjects)
            }
        }.resume()
    }
}
