//
//  HomeView.swift
//  Restart
//
//  Created by Maya Ghamloush on 09/02/2024.
//

import SwiftUI

struct HomeView: View {
    @AppStorage("onBoarding") var isOnBoardingViewActive: Bool = false
    var body: some View {
        VStack(spacing: 20) {
            Text("HOmeee")
                .font(.largeTitle)
            
            Button(action: {
                isOnBoardingViewActive = true
            }, label: {
                Text("Restart")
            })
        }
    }
}

#Preview {
    HomeView()
}
