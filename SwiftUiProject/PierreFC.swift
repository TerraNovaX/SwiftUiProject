//
//  PierreFC.swift
//  SwiftUiProject
//
//  Created by WADOUACHI on 16/10/2024.
//

import SwiftUI

struct PierreFC: View {
    @StateObject var viewModel = PierreFCViewModel()
    
    let choices = ["👊🏼", "✋🏼", "✌🏼"]

    @State private var appChoice = Int.random(in: 0...2)
    @State private var playerChoice = 0
    @State private var resultMessage: Bool = false
    
    var body: some View {
        VStack(spacing:30) {
            Text("Pierre, Feuille, Ciseaux")
                .font(.title)
                .bold()
            HStack{
                VStack{
                    Text("\(choices[appChoice])").font(.system(size: 80))
                    Text("Joueur Mystére").bold()
                }
                
                Text("VS").bold()
                VStack{
                    Text("\(choices[playerChoice])").font(.system(size: 80))
                    Text("Vous").bold()
                }
                
            }
            VStack{
                Text("Faite votre choix").padding(.bottom)
                    .foregroundColor(.white)
                    .font(.title3)
                    .bold()
                HStack {
                    ForEach(0..<choices.count, id: \.self) { index in
                        Button(action: {
                            playerChoice = index
                            appChoice = Int.random(in: 0...2)
                            viewModel.playGame(player: playerChoice, app: appChoice )
                        }) {
                
                            Text(choices[index])
                                .font(.system(size: 80))
                        }
                    }
                }
            }
            .frame(width: 320 , height:  240)
            .background(LinearGradient(colors: [.red, .orange], startPoint: .top, endPoint: .bottom))
            .clipShape(RoundedRectangle(cornerRadius: 20))
            

            if viewModel.resultMessage == true {
                Text("Vous avez gagner 🚀").bold().foregroundColor(.green)
            } else {
                Text("Vous avez perdu ☠️").bold().foregroundColor(.red)
            }
            
            Button(action: {
                viewModel.restartGame(appChoice: appChoice)
                appChoice = Int.random(in: 0...2)
            }) {
                Text("Rejouer").foregroundColor(.white)
                   
            }
            .frame(width:100 , height: 50)
            .background(.red)
            .clipShape(RoundedRectangle(cornerRadius: 10))
                
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(AppParameters.backgroundMain)
    }

}

#Preview{
    PierreFC()
}
