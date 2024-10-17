//
//  MainViewModel.swift
//  SwiftUiProject
//
//  Created by WADOUACHI on 15/10/2024.
//

import Foundation

class MainViewModel: ObservableObject{
    

    @Published var isValid : Bool = false

    func checkConnection(login: String, password: String) {
        let passwordTest = DataController.registeredUsers[login]
        if let realPassword = DataController.registeredUsers[login] { // L'index existe-t-il ?
            if realPassword == password { // Le mot de passe est-il bon ?
                isValid = true
            } else {
                isValid = false
                // TODO: Messages d'erreur
            }
        } else {
            isValid = false
            // TODO: Messages d'erreurs
        }
    }
    func additionne(_ a: Int,et b: Int) -> Int{
        return a + b
    }
}
