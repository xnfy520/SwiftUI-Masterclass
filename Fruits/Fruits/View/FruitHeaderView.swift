//
//  FruitHeaderView.swift
//  Fruits
//
//  Created by Ahmad AlSofi on 4/30/21.
//

import SwiftUI

struct FruitHeaderView: View {
    
    @State var isAnimating: Bool = false
    var fruit: Fruit
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: fruit.gradientColor), startPoint: .top, endPoint: .bottom)
            
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .padding(.vertical, 16)
                .padding(.top, 8)
                .scaleEffect(isAnimating ? 1.0 : 0.6)
        }// : ZStack
        .frame(height: 440 )
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        })
        
    }
}

struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitsData.first!)
            .previewLayout(.sizeThatFits)
    }
}
