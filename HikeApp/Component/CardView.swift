//
//  CardView.swift
//  HikeApp
//
//  Created by carlos velasco on 2/7/24.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        // MARK: - Card
        ZStack {
            CustomBackgroundView()
            
            VStack {
                // MARK: - Header
                VStack(alignment: .leading) {
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(
                                LinearGradient(
                                    colors: [
                                        .customGrayLight,
                                        .customGrayMedium],
                                    startPoint: .top,
                                    endPoint: .bottom
                                )
                        )
                        Spacer()
                        Button {
                            //Action: show a sheet
                            print("the button was pressed")
                        } label: {
                            CustomButtonView()
                        }
                    }
                    Text("Fun and enjoyable outdoor activities for friends and families.")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.customGrayMedium)
                    
                }//: Header
                .padding(.horizontal, 30)
                // MARK: - Main Content
                ZStack {
                    Circle()
                        .fill(
                            LinearGradient(
                                colors: [
                                    Color("ColorIndigoMedium"),
                                    Color("ColorSalmonLight")
                                ], 
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing)
                        )
                        .frame(width: 256, height: 256)
                    
                    Image("image-1")
                        .resizable()
                    .scaledToFit()
                }
                // MARK: - Footer
            }
        } //: CARD
        .frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
}
