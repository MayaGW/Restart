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
            //MARK: - Header
        Spacer()
            ZStack {
                CircleGroupView(shapeColor: .gray, shapeOpacity: 0.1)
                
                
                
                Image(.character2)
                    .resizable()
                    .scaledToFit()
                .padding()
            }//ZSTACK
            //MARK: - Center
            Text("The time that leads to mastery is dependent on the intensity of our focus.")
                .font(.title3)
                .fontWeight(.light)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding()
            //MARK: - FOOTER
            
          Spacer()
            Button(action: {
                isOnBoardingViewActive = true
            }, label: {
                Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                    .imageScale(.large)
                Text("Restart")
                    .font(.system(.title3, design: .rounded))
                    .fontWeight(.bold)
            })//BUTTON
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)
        }
    }
}

#Preview {
    HomeView()
}
