//
//  SettingsView.swift
//  HikeApp
//
//  Created by carlos velasco on 2/15/24.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        
        List {
            HStack {
                Spacer()
                Image(systemName: "laurel.leading")
                    .font(.system(size: 80, weight: .black))
                Text("Hike")
                    .font(.system(size: 66, weight: .black))
                Image(systemName: "laurel.trailing")
                    .font(.system(size: 80, weight: .black))
                Spacer()
            }
            .foregroundStyle(
                LinearGradient(
                colors: [
                    .customGreenLight,
                    .customGreenMedium,
                    .customGreenDark
                ],
                startPoint: .top,
                endPoint: .bottom
                )
            )
            .padding(.top, 8)
        }
    }
}

#Preview {
    SettingsView()
}
