//
//  Jackpot.swift
//  SwiftUiProject
//
//  Created by WADOUACHI on 16/10/2024.
//

import SwiftUI

struct Jackpot: View {
    // Liste des symboles (ici des emojis pour simplifier)
    let symbols = ["1", "2", "3", "4", "5"]
    
    // Les rouleaux sont représentés par trois indices dans le tableau des symboles
    @State private var reel1 = 0
    @State private var reel2 = 0
    @State private var reel3 = 0
    
    // Pour suivre si l'utilisateur a gagné
    @State private var isWin = false
    @State private var message = ""

    var body: some View {
        VStack(spacing: 20) {
            Image("iconJackpot").frame(width: 300, height: 300)
            Text("Jackpot")
                .font(.largeTitle)
                .bold()
            
            // Les rouleaux du jackpot
            HStack {
                Text(symbols[reel1])
                    .font(.system(size: 80))
                    .padding()
                    .frame(width: 90, height: 100)
                    .border(Color.black, width: 5)
                Text(symbols[reel2])
                    .font(.system(size: 80))
                    .padding()
                    .frame(width: 90, height: 100)
                    .border(Color.black, width: 5)
                Text(symbols[reel3])
                    .font(.system(size: 80))
                    .padding()
                    .frame(width: 90, height: 100)
                    .border(Color.black, width: 5)
            }
            
            // Message de victoire ou autre
            Text(message)
                .foregroundColor(isWin ? .green : .red)
                
            if isWin {
                Text("🎉 You Win! 🎉").bold()
            } else {
                Text("Try Again!").bold()
            }
            // Bouton pour jouer
            Button(action: {
                // Tirage aléatoire des rouleaux
                reel1 = Int.random(in: 0..<symbols.count)
                reel2 = Int.random(in: 0..<symbols.count)
                reel3 = Int.random(in: 0..<symbols.count)
                
                // Vérification de la victoire
                checkWin()
            }) {
                Text("Réesayez")
                    .frame(width: 250, height: 44)
                    .background(.red)
                    .cornerRadius(10)
                    .foregroundColor(.white)
                    
            }
        }
        .frame(maxWidth: .infinity, maxHeight:  .infinity)
        .background(AppParameters.backgroundMain)
        
    }
    
    // Fonction pour vérifier si les rouleaux sont identiques (victoire)
    func checkWin() {
        if reel1 == reel2 && reel2 == reel3 {
            isWin = true
        } else {
            isWin = false
            
        }
    }
}

#Preview {
    Jackpot()
}

