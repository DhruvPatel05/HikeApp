//
//  MotionAnimationView.swift
//  HikeApp
//
//  Created by Dhruv Patel on 07/06/26.
//

import SwiftUI

struct MotionAnimationView: View {
    // MARK: - PROPERTIES
    
    @State private var randomCircle: Int = Int.random(in: 6...12)
    @State private var isAnimating: Bool = false
    // MARK: - Functions
    // 1. RANDOM COORDINATE
    func randomCoordinate() -> CGFloat {
        return CGFloat.random(in: 0...256)
    }
    // 2. RANDOM SIZE
    func randomSize() -> CGFloat {
        return CGFloat(Int.random(in: 4...80))

    }
    // 3. RANDOM SCALE
    
    // 4. RANDOM SPEED
    // 5. RANDOM DELAY
    
    var body: some View {
        ZStack {
            
            ForEach(0...randomCircle, id: \.self) { item in
                Circle()
                    .foregroundColor(.white)
                    .opacity(0.25)
                    .frame(width:randomSize())
                    .position(x:randomCoordinate(),y:randomCoordinate())
                    .onAppear(perform: {
                        withAnimation(.interpolatingSpring(stiffness: 0.25, damping: 0.25)
                            .repeatForever()) {
                                isAnimating = true
                            }
                    })
            }
        }//: ZSTACK
        .frame(width: 256,height: 256)
    }
}

struct MotionAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.teal.ignoresSafeArea()
            MotionAnimationView()
        }
    }
}

