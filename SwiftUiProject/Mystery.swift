//
//  Mystery.swift
//  SwiftUiProject
//
//  Created by WADOUACHI on 16/10/2024.
//

import SwiftUI

struct Mystery: View {
    @StateObject var viewModel = MysteryViewModel()
    
    @State private var mysteryNumber = Int.random(in: 1...100)
    @State private var playerGuess = ""
    @State private var resultMessage = ""
    @State private var attempts = 0
    
    var body: some View {
        VStack(spacing: 30) {
            Image("point")
            Text("Nombre Mystère").font(.title).bold()
                

            Text("Devinez un nombre entre 1 et 100").bold()
                

            TextField("Votre devinette", text: $playerGuess)
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(10)
                .frame(width: 200)
            
            
            Button(action: {
                viewModel.checkGuess(mysteryNumber: mysteryNumber, playerGuess: playerGuess)
               
            }) {
                Text("Deviner")
                    .frame(width: 250, height: 44)
                    .background(.red)
                    .cornerRadius(10)
                    .foregroundColor(.white)
            }

            Text(viewModel.resultMessage)
                
                .foregroundColor(viewModel.resultMessage == "Bravo ! Vous avez trouvé le nombre mystère !" ? .green : .red)
            
            Button(action: {
                viewModel.restartGame()
                mysteryNumber = Int.random(in: 1...100)
            }) {
                Text("Rejouer")
                    .frame(width: 250, height: 44)
                    .background(.red)
                    .cornerRadius(10)
                    .foregroundColor(.white)
                   
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(AppParameters.backgroundMain)
    }
    
    
}

#Preview {
    Mystery()
}
