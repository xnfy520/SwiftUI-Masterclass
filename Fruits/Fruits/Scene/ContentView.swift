//
//  ContentView.swift
//  Fruits
//
//  Created by Ahmad AlSofi on 4/30/21.
//

import SwiftUI

struct ContentView: View {
    
    var fruits: [Fruit]
    @State var isShowingSettings: Bool = false
    
    var body: some View {
        initState()
        return NavigationView {
            List {
                ForEach(fruits) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item))
                    {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 8)
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(
            trailing:
                Button(action: {
                    isShowingSettings.toggle()
                }, label: {
                   Image(systemName: "slider.horizontal.3")
                }) //: Button
                .sheet(isPresented: $isShowingSettings) {
                    SettingsView()
                }
            )
        } //: NavigationView
        .navigationViewStyle(StackNavigationViewStyle())
        
    }
    
    func initState() {
        UINavigationBar.appearance().tintColor = .black
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
