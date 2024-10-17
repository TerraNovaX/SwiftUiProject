//
//  MysteryViewModel.swift
//  SwiftUiProject
//
//  Created by WADOUACHI on 17/10/2024.
//

import Foundation

class MysteryViewModel: ObservableObject {
    var playerGuess = ""
    @Published var resultMessage = ""
    @Published var mysteryNumber = 0
    func checkGuess(mysteryNumber: Int, playerGuess: String) {
        
        guard let guess = Int(playerGuess) else {
            return resultMessage = "Veuillez entrer un nombre valide."
        }
        if guess < mysteryNumber {
            return resultMessage = "C'est plus !"
        } else if guess > mysteryNumber {
            return resultMessage = "C'est moins !"
        } else {
            return resultMessage = "Bravo ! Vous avez trouvé le nombre mystère !"
        }
    }
    
    func restartGame()-> (String, String, Int) {
        mysteryNumber = 0
        playerGuess = ""
        resultMessage = ""
        return (playerGuess, resultMessage, mysteryNumber)
   
    }
}
