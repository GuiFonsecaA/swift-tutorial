//
//  ProductType.swift
//  GuilhermeTutorial
//
//  Created by Guilherme Fonseca on 15/07/23.
//

import Foundation

struct ProductType: Identifiable {
    let id: Int
    let name: String
    let description: String
    let image: String
    let price: Double
    
    var formattedPrice: String {
        return "R$" + price.formatPrice()
    }
}
