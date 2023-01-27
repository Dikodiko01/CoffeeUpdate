//
//  CartManager.swift
//  tryAndTry
//
//  Created by Diar Orynbek on 28.01.2023.
//

import Foundation

class CartManager: ObservableObject {
    @Published private(set) var products: [Product] = []
    @Published private(set) var total: Int = 0
    
    func addCart(product: Product) {
        products.append(product)
        total += product.price
    }
    func removeFromCard(product: Product) {
        products = products.filter { $0.id != product.id }
        total -= product.price
    }
}
