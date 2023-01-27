//
//  Product.swift
//  tryAndTry
//
//  Created by Diar Orynbek on 28.01.2023.
//

import Foundation

struct Product: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let price: Int
}

extension Product  {
    static let all: [Product] = [
        Product(name: "Cappuccino", image: "sweater1", price: 54),
        Product(name: "Signature Hot Chocolate", image: "sweater2", price: 89),
        Product(name: "Something strange ;)", image: "sweater3", price: 79),
        Product(name: "Espresso Frappuccino", image: "sweater4", price: 94),
        Product(name: "Coffee Frappuccino", image: "sweater5", price: 99),
        Product(name: "Сок Rich Апельсин 330 мл", image: "sweater6", price: 65),
        Product(name: "Клаб-сэндвич", image: "sweater7", price: 54),
        Product(name: "Круассан с индейкой", image: "sweater8", price: 83)
    ]
}
