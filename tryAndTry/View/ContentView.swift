//
//  ContentView.swift
//  tryAndTry
//
//  Created by Diar Orynbek on 28.01.2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject var cartManager = CartManager()
    
    var body: some View {
        NavigationView {
            ScrollView {
                CoffeeList(products: Product.all)
                    .environmentObject(cartManager)
            }
            .navigationTitle("Coffee")
            .toolbar {
                NavigationLink {
                    CartView()
                        .environmentObject(cartManager)
                } label: {
                    CardButton(numberOfProduct: cartManager.products.count)
                }
            }
        }
        .navigationViewStyle(.stack)
    }
        
//        NavigationView {
//            ScrollView {
//                LazyVGrid(columns: column, spacing: 20) {
//                    ForEach(productList, id: \.id) { number in // здесь просто id: \.id
//                        //NavigationLink(destination: CoffeeList(product: productList[number]),
//                                       //label: ProductCard(product: number))
//                        ProductCard(product: number)
//                    }
//                }
//                .padding(10)
//            }
//            .navigationTitle("Shop")
//        }
//        .navigationViewStyle(StackNavigationViewStyle())
//    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
