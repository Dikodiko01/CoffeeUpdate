//
//  CoffeeView.swift
//  tryAndTry
//
//  Created by Diar Orynbek on 28.01.2023.
//

import SwiftUI

struct CoffeeView: View {
    var product: Product
    
    var body: some View {
        VStack {
            HStack(alignment: .top) {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
            }
        
            VStack {
                Text(product.name)
                    .bold()
                Text("Some interesting information and et c. Some interesting information and et c Some interesting information and et c Some interesting information and et c")
                    .padding()
            }
        
        }
    }
}

struct CoffeeView_Previews: PreviewProvider {
    static var previews: some View {
        CoffeeView(product: Product.all[0])
    }
}
