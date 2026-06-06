//
//  CardView.swift
//  HikeApp
//
//  Created by Dhruv Patel on 04/06/26.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack {
            CustomBackgroundView()
            ZStack {
                Circle()
                    .fill(
                        LinearGradient(colors:[Color.colorIndigoMedium,Color.colorSalmonLight
                                              ],
                                       startPoint:.topLeading,
                                       endPoint: .bottomTrailing
                                      )
                    )
                    .frame(width: 256,height:256)
                Image("image-1")
                    .resizable()
                    .scaledToFit()
            }
        }// : CARD
        .frame(width:320,height:570)
    }
}

#Preview {
    CardView()
}
