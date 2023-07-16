//
//  CarrouselTabView.swift
//  GuilhermeTutorial
//
//  Created by Guilherme Fonseca on 14/07/23.
//

import SwiftUI

struct CarrouselTabView: View {
    
    @State private var currentIndex = 1
    
    let ordersMock: [OrderType] = [
        OrderType(id: 1, name: "", image: "barbecue-banner"),
        OrderType(id: 2, name: "", image: "brazilian-meal-banner"),
        OrderType(id: 3, name: "", image: "pokes-banner"),
    ]
    var body: some View {
        TabView(selection: $currentIndex) {
            ForEach(ordersMock){ mock in
                CarrouselItemView(order: mock)
                    .tag(mock.id)
            }
        }
        .frame(height: 180)
        .tabViewStyle(.page(indexDisplayMode: .always))
        .onAppear {
            Timer.scheduledTimer(withTimeInterval: 3, repeats: true) { _ in
                
                withAnimation(.easeInOut(duration: 1)){
                    if currentIndex > ordersMock.count {
                        currentIndex = 1
                    }
                    currentIndex += 1
                }
            }
        }
    }
}

struct CarrouselTabView_Previews: PreviewProvider {
    static var previews: some View {
        CarrouselTabView()
    }
}
