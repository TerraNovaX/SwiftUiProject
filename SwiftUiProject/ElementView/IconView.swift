//
//  IconView.swift
//  SwiftUiProject
//
//  Created by WADOUACHI on 16/10/2024.
//


import SwiftUI

struct IconView: View {
    
    let image: Image
    let name: String
    
    var body: some View {
        VStack {
            Text(name)
                .bold()
                .font(.title2)
                .foregroundColor(.black)
                .padding()
            image
                .resizable()
                .frame(width: 200, height: 200)
                .clipShape(RoundedRectangle(cornerRadius: 20))
        }
        .frame(width: 320 , height:  240)
        .padding()
        
        .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}

#Preview {
    IconView(image: Image("Mystery"), name: "Jeu")
}
