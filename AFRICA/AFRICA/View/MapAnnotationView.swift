//
//  MapAnnotationView.swift
//  AFRICA
//
//  Created by Ahmad AlSofi on 5/2/21.
//

import SwiftUI

struct MapAnnotationView: View {
    
    @State var animation: Double = 0.0
    
    var body: some View {
        
        ZStack {
            
            Circle().stroke(Color.accentColor, lineWidth: 2)
                .frame(width: 54, height: 54)
                
            
            Circle()
                .stroke(Color.accentColor, lineWidth: 1)
                .frame(width: 54, height: 54)
                .opacity(1 - animation)
                .scaleEffect(CGFloat(animation) + 1)
            
            Image("lion")
                .resizable()
                .scaledToFit()
                .frame(width: 54, height: 54)
                .clipShape(Circle())
        }
        .onAppear(perform: {
            withAnimation(Animation.easeOut(duration: 2).repeatForever(autoreverses: false)) {
                animation = 1
            }
        })
    }
}

struct MapAnnotationView_Previews: PreviewProvider {
    static var previews: some View {
        MapAnnotationView()
            .previewLayout(.sizeThatFits)
    }
}
