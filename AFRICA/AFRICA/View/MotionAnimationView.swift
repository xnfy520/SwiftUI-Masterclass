//
//  MotionAnimationView.swift
//  AFRICA
//
//  Created by Ahmad AlSofi on 5/2/21.
//

import SwiftUI

struct MotionAnimationView: View {
    
    @State var randomCircle = Int.random(in: 12...16)
    @State var isAnimating = false
    
    
    func randomCoordinate(max: CGFloat) -> CGFloat {
        return CGFloat.random(in: 0...max)
    }
    
    func randomSize() -> CGFloat {
        return CGFloat(Int.random(in: 10...300))
    }
    
    func randomScale() -> CGFloat {
        return CGFloat(Double.random(in: 0.1...2.0))
    }
    
    func randomSpeed() -> Double {
        return Double.random(in: 0.025...1.0)
    }
    
    func randomDelay() -> Double {
        return Double.random(in: 0.5...2.0)
    }
    
    var body: some View {
        GeometryReader { geo in
            ZStack {
                ForEach(0...randomCircle, id: \.self) { i in
                    Circle()
                        .frame(width: randomSize(), height: randomSize())
                        .opacity(0.5)
                        .foregroundColor(.gray)
                        .scaleEffect(isAnimating ?  randomScale() : 1)
                        .position(
                            x: randomCoordinate(max: geo.size.width),
                            y: randomCoordinate(max: geo.size.height))
                        .animation(
                            Animation.interpolatingSpring(stiffness: 0.5, damping: 0.5)
                                .repeatForever()
                                .speed(randomSpeed())
                                .delay(randomDelay())
                        )
                        .onAppear(perform: {
                            isAnimating = true
                        })
                }
            }
            .drawingGroup()
        }.ignoresSafeArea(.all)
    }
}

struct MotionAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        MotionAnimationView()
    }
}
