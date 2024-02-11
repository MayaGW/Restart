//
//  CircleGroupView.swift
//  Restart
//
//  Created by Maya Ghamloush on 11/02/2024.
//

import SwiftUI

struct CircleGroupView: View {
    //MARK: - PROPERTY
    @State var shapeColor: Color
    @State var shapeOpacity: Double
    
    
    
    var body: some View {
        ZStack{
          Circle()
                .stroke(shapeColor.opacity(shapeOpacity),lineWidth: 40)
                .frame(width: 260, height: 260, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Circle()
                .stroke(shapeColor.opacity(shapeOpacity),lineWidth: 80)
                .frame(width: 260, height: 260, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
          
        }//Zstack
    }
}

#Preview {
    ZStack {
        Color(.colorBlue)
            .ignoresSafeArea()
        CircleGroupView(shapeColor: .colorRed, shapeOpacity: 0.5)
            
    }
    
}
