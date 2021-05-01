//
//  FruitCardView.swift
//  Fruits
//
//  Created by Ahmad AlSofi on 4/30/21.
//

import SwiftUI

struct FruitCardView: View {
    
    @State private var isAnimating: Bool = false
    var fruit: Fruit
    
    var body: some View {
        VStack(spacing: 20) {
           
            Spacer().frame(height: 32)
            
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: fruit.gradientColor[1], radius: 10, x: 2, y: 2)
                .padding(.horizontal, 16)
                .scaleEffect(isAnimating ? 1 : 0.6)
                .frame(maxHeight: 280)
            
            Text(fruit.title)
                .foregroundColor(.white)
                .font(.largeTitle)
                .fontWeight(.heavy)
            
            Text(fruit.headLine)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 16)
                .frame(maxWidth: 480)
            
            StartButtonView()
                .padding(.top, 24)
        } //: VStack
        .onAppear {
            withAnimation(.easeOut(duration: 0.8)) {
                isAnimating = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0,maxHeight: .infinity)
        .background(
            LinearGradient(gradient: Gradient(colors: fruit.gradientColor), startPoint: .top, endPoint: .bottom)
        )
        .cornerRadius(16)
        .padding(.horizontal, 12)
        .padding(.top, 16)
    }
}

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit: fruitsData[0])
    }
}
