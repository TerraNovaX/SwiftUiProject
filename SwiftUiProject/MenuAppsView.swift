//
//  MenuAppsView.swift
//  SwiftUiProject
//
//  Created by WADOUACHI on 15/10/2024.
//

import SwiftUI


struct MenuAppsView:View {
  

    var body: some View {
        NavigationStack{
            VStack{
            
                Text ("Menu Apps")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.top, 10)
                    .foregroundColor(.black)
                
                ScrollView{
                    ForEach(availableApps.allCases, id: \.self){
                        application in NavigationLink(destination: application.link) {
                            IconView(image: application.image, name: application.title)
                        }
                    }
                }.frame(maxWidth:.infinity)
            }.background(AppParameters.backgroundMain)
        }
        
    }
}

#Preview {
    MenuAppsView()
}
