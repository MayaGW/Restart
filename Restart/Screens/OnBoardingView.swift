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
        ZStack {
            Color.accent
                .ignoresSafeArea(.all)
            VStack(spacing: 20) {
          //MARK: - HEADER
                Spacer()
                VStack(spacing: 0){
                    Text("Share")
                        .font(.system(size: 60))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                  Text("""
                    it is not how much we give but
                    how mush love we put into giving
                    """)
                  .font(.title3)
                  .fontWeight(.light)
                  .foregroundColor(.white)
                  .multilineTextAlignment(.center)
                  .padding(.horizontal,10)
                }//VSTACK
                //END OF HEADER
          //MARK: - CENTER
                ZStack{
                    CircleGroupView(shapeColor: .white,shapeOpacity: 0.2)
                    Image(.character1)
                        .resizable()
                        .scaledToFit()
                }
                //end of center
                Spacer()
          //MARK: - FOOTER
                ZStack{
                    //PART OF THE CUSTOM BUTTON
                    //1. BACKGROUND (STATIC)
                    Capsule()
                        .fill(Color.white.opacity(0.2))
                    Capsule()
                        .fill(Color.white.opacity(0.2))
                        .padding(8)
                    //2. CALL TO ACTION (STATIC)
                    Text("Get Started")
                        .font(.system(.title3, design: .rounded))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                        .offset(x: 20)
                    //3. CAPSUL( DYNAMIC WIDTH)
                    HStack{
                        Capsule()
                            .fill(.colorRed)
                            .frame(width: 80)
                        Spacer()
                    }
                    //4.CIRRCLE (DRAGGABLE)
                    HStack {
                        ZStack{
                            
                            Circle()
                                .fill(.colorRed)
                            Circle()
                                .fill(.black.opacity(0.15))
                                .padding(8)
                            Image(systemName: "chevron.right.2")
                                .font(.system(size: 24, weight: .bold))
                            
                        }//Zstack
                        .foregroundColor(.white)
                    .frame(width: 80, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .onTapGesture()
                        {
                            isOnBoardingViewActive = false
                        
                    }
                        Spacer()
                    }
                    
                }//Zstack FOOTER
                .frame(height: 80,alignment: .center)
                .padding()
            }//VStack
        }// Ztack
        .ignoresSafeArea(.all)
    }
}

#Preview {
    OnBoardingView()
}
