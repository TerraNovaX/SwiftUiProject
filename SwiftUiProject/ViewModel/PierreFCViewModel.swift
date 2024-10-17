//
//  PierreFCViewModel.swift
//  SwiftUiProject
//
//  Created by WADOUACHI on 17/10/2024.
//

import Foundation

class PierreFCViewModel: ObservableObject {
    
    
    @Published var resultMessage: Bool = false
    func playGame(player: Int, app: Int) {
        
        if (player == 0 && app == 2) || // Pierre bat Ciseaux
            (player == 2 && app == 1) || // Ciseaux bat Feuille
            (player == 1 && app == 0) {  // Feuille bat Pierre
            return resultMessage = true
        } else if player == app{
            return resultMessage = false
        } else {
            return resultMessage = false
        }
    }
    
    func restartGame(appChoice: Int) {
        return resultMessage = false
    }
}
