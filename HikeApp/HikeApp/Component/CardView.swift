//
//  CardView.swift
//  HikeApp
//
//  Created by Dhruv Patel on 04/06/26.
//

import SwiftUI

struct CardView: View {
    // MARK: - PROPERTIES
    
    @State private var imageNumber: Int = 1
    @State private var randomNumber: Int = 1
    
    // MARK: - Functions
    
    func randomImage() {
        randomNumber = Int.random(in: 1...5)
        imageNumber = randomNumber

    }
    
    var body: some View {
        ZStack {
            CustomBackgroundView()
            VStack {
                // MARK:  - HEADER
                VStack(alignment:.leading) {
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(
                                LinearGradient(
                                    colors:[
                                        .customGrayLight,.customGrayMedium],
                                    startPoint: .top,
                                    endPoint: .bottom)
                            )
                        Spacer()
                        Button {
                          //Action Show a Sheet
                            print("The Button was pressed.")
                        } label: {
                            CustomButtonView()
                        }
                    }
                    Text("Fun and enjoyable outdoor activity for friends and families.")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.customGrayMedium)
                } //: HEADER
                .padding(.horizontal,30)
                // MARK: - MAIN CONTENT
                
                
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
                    Image("image-\(imageNumber)")
                        .resizable()
                        .scaledToFit()
                }
                //MARK: - FOOTER
                Button {
                  //Action: Generate a Random Number
                    print("The Button was pressed.")
                    randomImage()
                } label: {
                    Text("Explore More")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(
                            LinearGradient( colors:[
                                .customGreenLight,.customGreenMedium
                            ],
                                    startPoint: .top,
                                    endPoint: .bottom)
                        )
                        .shadow(color: .black.opacity(0.25), radius:0.25,x:1,y:2)
                }
                .buttonStyle(GradientButton())
            } // : ZStack
        }// : CARD
        .frame(width:320,height:570)
    }
}

#Preview {
    CardView()
}
