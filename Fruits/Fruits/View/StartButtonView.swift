//
//  StartButtonView.swift
//  Fruits
//
//  Created by Ahmad AlSofi on 4/30/21.
//

import SwiftUI

struct StartButtonView: View {
    
    @AppStorage("isOnBoarding") var isOnBoarding: Bool?

    
    var body: some View {
        Button(action: {
            withAnimation(.spring(response: 10, dampingFraction: 10, blendDuration: 10)) {
                isOnBoarding = false
            }
        }){
            HStack {
                Text("Start")
                    .foregroundColor(Color.white)
                
                Image(systemName: "arrow.right.circle")
                    .foregroundColor(.white)
                
            } //: HStack
            .padding(.horizontal, 16)
            .padding(.vertical, 8)
            .background(
                Capsule()
                    .strokeBorder(Color.white,lineWidth: 1.25)
                    .foregroundColor(.white)
            )
        }
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
