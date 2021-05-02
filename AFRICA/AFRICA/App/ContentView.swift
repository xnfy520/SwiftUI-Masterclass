//
//  ContentView.swift
//  AFRICA
//
//  Created by Ahmad AlSofi on 5/1/21.
//

import SwiftUI

struct ContentView: View {
    
    var animals: [Animal] = Bundle.main.decode("animals.json")
    
    var body: some View {
        NavigationView {
            List {
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                    .padding(.bottom, 16)
                
                ForEach(animals) { item in
                    AnimalListItemView(animal: item)
                }
            } // : List
            .navigationBarTitle("Africa")
            .navigationBarTitleDisplayMode(.large)
        } // : NavigationView
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView( )
    }
}
