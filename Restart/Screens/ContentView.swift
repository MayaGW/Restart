//
//  ContentView.swift
//  Restart
//
//  Created by Maya Ghamloush on 09/02/2024.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("onBoarding") var isOnBoardingViewActive: Bool = true
    
    
    
    var body: some View {
        VStack {
            if isOnBoardingViewActive{
                OnBoardingView()
            }
            else{
                HomeView()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
