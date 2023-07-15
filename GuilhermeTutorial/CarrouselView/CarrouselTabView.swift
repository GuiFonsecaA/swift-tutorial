//
//  CarrouselTabView.swift
//  GuilhermeTutorial
//
//  Created by Guilherme Fonseca on 14/07/23.
//

import SwiftUI

struct CarrouselTabView: View {
    let ordersMock: [OrderType] = [
        OrderType(id: 1, name: "", image: "barbecue-banner"),
        OrderType(id: 2, name: "", image: "brazilian-meal-banner"),
        OrderType(id: 3, name: "", image: "pokes-banner"),
    ]
    var body: some View {
        TabView {
            ForEach(ordersMock){ mock in
                CarrouselItemView(order: mock)
            }
        }
        .frame(height: 180)
        .tabViewStyle(.page(indexDisplayMode: .always))
    }
}

struct CarrouselTabView_Previews: PreviewProvider {
    static var previews: some View {
        CarrouselTabView()
    }
}
