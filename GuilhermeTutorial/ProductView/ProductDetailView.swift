//
//  ProductDetailView.swift
//  GuilhermeTutorial
//
//  Created by Guilherme Fonseca on 15/07/23.
//

import SwiftUI

struct ProductDetailView: View {
    let product: ProductType
    var body: some View {
        Text(product.name)
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(product: storesMock[0].products[0])
    }
}
