//
//  StoreType.swift
//  GuilhermeTutorial
//
//  Created by Guilherme Fonseca on 15/07/23.
//

import Foundation

struct StoreType: Identifiable{
    let id: Int
    let name: String
    let logoImage: String
    let headerImage: String
    let location: String
    let stars: Int
    let products: [ProductType]
}
