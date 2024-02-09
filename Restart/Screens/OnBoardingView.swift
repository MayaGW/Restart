//
//  OnBoardingView.swift
//  Restart
//
//  Created by Maya Ghamloush on 09/02/2024.
//

import SwiftUI

struct OnBoardingView: View {
    //MARK: _ PROBERTIES
   @AppStorage("onBoarding") var isOnBoardingViewActive: Bool = true

    
    
    var body: some View {
        VStack(spacing: 20) {
            Text("On Boarding")
                .font(.largeTitle)
            Button(action: {
                print("Action Pressed")
                isOnBoardingViewActive = false
            }, label: {
                Text("Start")
            })
        }
    }
}

#Preview {
    OnBoardingView()
}
