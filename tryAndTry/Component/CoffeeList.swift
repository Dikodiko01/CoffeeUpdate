//
//  CoffeeList.swift
//  tryAndTry
//
//  Created by Diar Orynbek on 28.01.2023.
//

import SwiftUI

struct CoffeeList: View {
    @EnvironmentObject var cartManager: CartManager
    var products: [Product]
    
    var body: some View {
        VStack {
            HStack {
                Text("\(products.count) coffees")
                    .font(.headline)
                    .fontWeight(.medium)
                    .opacity(0.7)
                
            Spacer()
                
            }
            
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing: 15)]) {
                ForEach(products) { product in
                    NavigationLink(destination: CoffeeView(product: product)) {
                        ProductCard(product: product)
                            .environmentObject(cartManager)
                    }
                }
            }
            .padding(.top)
        }
        .padding(.horizontal)
//        VStack {
//            LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing: 15)]) {
//                ForEach(products) { recipe in
//                    NavigationLink(destination: CoffeeView(product: products)) {
//                        ProductCard(product: product)
//                    }
//                }
//            }
//        }
        
        
//        VStack {
//            HStack(alignment: .top) {
//                Image(product.image)
//                    .resizable()
//                    .scaledToFit()
//            }
//
//            VStack {
//                Text(product.name)
//                    .bold()
//                Text("Some interesting information and et c. Some interesting information and et c Some interesting information and et c Some interesting information and et c")
//                    .padding()
//            }
//
//        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        CoffeeList(products: Product.all)
    }
}
