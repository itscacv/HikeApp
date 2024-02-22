//
//  CustomListRowView.swift
//  HikeApp
//
//  Created by carlos velasco on 2/21/24.
//

import SwiftUI

struct CustomListRowView: View {
    // MARK: - Properties
//    @State var rowLabel: String
//    @State var rowIcon: String
//    @State var rowContent: String
//    @State var rowTintColor: Color
    
    var body: some View {
        LabeledContent {
            // Content
            Text("Hike")
                .foregroundColor(.primary)
                .fontWeight(.heavy)
        } label: {
            // Label
            HStack {
                ZStack {
                RoundedRectangle(cornerRadius: 8)
                        .frame(width: 30, height: 30)
                        .foregroundColor(.blue)
                Image(systemName: "apps.iphone")
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                    
                }
                Text("Application")
            }
        }    }
}

#Preview {
    List {
        CustomListRowView()
    }
   
}
