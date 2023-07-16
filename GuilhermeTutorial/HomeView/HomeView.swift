//
//  HomeView.swift
//  GuilhermeTutorial
//
//  Created by Guilherme Fonseca on 15/07/23.
//

import SwiftUI

struct HomeView: View {
    
    @State private var isAnimating = false
    
    var body: some View {
        VStack {
            Text("Chefe Delivery")
                .font(.system(size:40))
                .fontWeight(.heavy)
                .foregroundColor(Color("ColorRed"))
                .opacity(isAnimating ? 1 : 0)
                .offset(y: isAnimating ? 0 : -40)
            
            Text("Peça as suas comidas no conforto do seu lar.")
                .font(.title2)
                .padding()
                .multilineTextAlignment(.center)
                .foregroundColor(.black.opacity(0.7))
                .opacity(isAnimating ? 1 : 0)
                .offset(y: isAnimating ? 0 : -40)
            
            
            Spacer()
        }
        .onAppear{
            withAnimation(.easeInOut(duration: 1.5)){
                isAnimating = true
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
