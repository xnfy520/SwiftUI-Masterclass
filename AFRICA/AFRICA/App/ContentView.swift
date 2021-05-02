//
//  ContentView.swift
//  AFRICA
//
//  Created by Ahmad AlSofi on 5/1/21.
//

import SwiftUI

struct ContentView: View {
    
    var animals: [Animal] = Bundle.main.decode("animals.json")
    
    @State var isGridViewActive: Bool = false
    let hapticImpact = UIImpactFeedbackGenerator(style: .light)
    
    @State var gridLayout: [GridItem] = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    @State var gridColumn: Int =  1
    @State var toolBarIcon: String =  "square.grid.2x2"
    
    func gridSwitch() {
        gridLayout = Array(repeating: GridItem(.flexible()), count: Int(gridLayout.count % 3 + 1))
        gridColumn = gridLayout.count
        switch gridColumn {
            case 1:
                toolBarIcon = "rectangle.grid.1x2"
            case 2:
                toolBarIcon = "square.grid.2x2"
            case 3:
                toolBarIcon = "square.grid.3x2"
            default:
                toolBarIcon = "square.grid.2x2"
        }
    }
    
    var body: some View {
        NavigationView {
            Group {
                if !isGridViewActive {
                    List {
                        CoverImageView()
                            .frame(height: 300)
                            .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                            .padding(.bottom, 16)
                        
                        ForEach(animals) { item in
                            AnimalListItemView(animal: item)
                        } //: LOOP
                    } // : LIST
                } else {
                    ScrollView(.vertical, showsIndicators: false) {
                        LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10) {
                            ForEach(animals) { item in
                                AnimalGridItemView(animal: item)
                            }//:  ForEach
                        } //: LazyVGrid
                        .padding()
                    } //: ScrollView
                } //: CONDITION
            } //: GROUP
            .navigationBarTitle("Africa")
            .navigationBarTitleDisplayMode(.large)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack {
                        
                        Button(action: {
                            isGridViewActive = false
                            hapticImpact.impactOccurred()
                        }) {
                            Image(systemName: "square.fill.text.grid.1x2")
                                .font(.title2)
                                .foregroundColor(isGridViewActive ? .primary : .accentColor)
                        }
                        
                        Button(action: {
                            isGridViewActive = true
                            hapticImpact.impactOccurred()
                            gridSwitch()
                        }) {
                            Image(systemName: toolBarIcon)
                                .font(.title2)
                                .foregroundColor(isGridViewActive ? .accentColor : .primary)
                        }
                        
                    }
                }
            }
        } // : NavigationView
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView( )
    }
}
