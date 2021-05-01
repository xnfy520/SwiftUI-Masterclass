//
//  FruitDetailView.swift
//  Fruits
//
//  Created by Ahmad AlSofi on 4/30/21.
//

import SwiftUI

struct FruitDetailView: View {
    
    var fruit: Fruit
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    // Header
                    FruitHeaderView(fruit: fruit)
                    
                    VStack(alignment: .leading, spacing: 10.0) {
                        // TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColor.first)
                        
                        // Head Line
                        Text(fruit.headLine)
                            .font(.headline)
                        
                        // Nutrition
                        FruitNutrientsView(fruit: fruit)
                        
                        // Sub Head Line
                        Text("Learn More About " + fruit.title.uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColor.first)
                        
                        // Description
                        Text(fruit.description)
                        
                        // source
                        SourceLinkView()
                            .padding(.bottom, 20)
                        
                    }.padding(.horizontal, 16)
                }

                .navigationBarHidden(true)
            }
            .edgesIgnoringSafeArea(.top)
        }.navigationViewStyle(StackNavigationViewStyle())
        
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData.first!)
    }
}
