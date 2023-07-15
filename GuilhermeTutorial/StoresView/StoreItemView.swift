//
//  StoreItemView.swift
//  GuilhermeTutorial
//
//  Created by Guilherme Fonseca on 14/07/23.
//

import SwiftUI

struct StoreItemView: View {
    
    let order: OrderType
    
    var body: some View {
        HStack{
            Image(order.image)
                .resizable()
                .scaledToFit()
                .cornerRadius(25)
                .frame(width: 50, height: 50)
            VStack {
                Text(order.name)
                    .font(.subheadline)
            }
            
            Spacer()
            
            }
        .onTapGesture {
            print("clicou em \(order.name)")
        }
    }
}

struct StoreItemView_Previews: PreviewProvider {
    static var previews: some View {
        StoreItemView(order: OrderType(id: 1, name: "Monstro Burgue", image: "monstro-burger-logo"))
            .previewLayout(.sizeThatFits)
    }
}
