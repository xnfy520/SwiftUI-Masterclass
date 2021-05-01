//
//  FruitNutrientsView.swift
//  Fruits
//
//  Created by Ahmad AlSofi on 4/30/21.
//

import SwiftUI

struct FruitNutrientsView: View {
    
    var fruit: Fruit
    let nutrients: [String] = ["Protein", "Carbohydrate", "Ethanol", "Fat"]
    @State private var topExpanded: Bool = false

    var body: some View {
        
        GroupBox {
            DisclosureGroup("Nature's Value per 10KG",isExpanded: $topExpanded) {
                ForEach(0 ..< nutrients.count, id: \.self) { index in
                    
                    Divider()
                        .padding(.vertical, 6)
                    HStack {
                        
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[index])
                        }
                        .foregroundColor(Color.blue)
                        .font(Font.system(.body).bold())
                        
                        Spacer()
                        Text(nutrients[index])
                    }
                }
            }.onTapGesture {
                withAnimation(.easeIn(duration: 0.3)) {
                    topExpanded.toggle()
                }
            }
        }
    }
}

struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: fruitsData.first!)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
