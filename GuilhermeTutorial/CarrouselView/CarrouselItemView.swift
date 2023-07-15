//
//  CarrouselItemView.swift
//  GuilhermeTutorial
//
//  Created by Guilherme Fonseca on 14/07/23.
//

import SwiftUI

struct CarrouselItemView: View {
    let order: OrderType
    var body: some View {
        
        Image(order.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

struct CarrouselItemView_Previews: PreviewProvider {
    static var previews: some View {
        CarrouselItemView(order: OrderType(id: 1, name: "", image: "barbecue-banner"))
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
