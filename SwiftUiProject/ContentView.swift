//
//  ContentView.swift
//  SwiftUiProject
//
//  Created by WADOUACHI on 15/10/2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = MainViewModel()
    
    @State var login: String = ""
    @State var password: String = ""
    @State var alert: Bool = false
    @State private var isLoggedIn: Bool = false
    

    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                //Text("Text").padding(20).goldenFrame()
                
                if !viewModel.isValid {
                    VStack {
                        Image("console")
                            .resizable()
                            .frame(width: 230, height: 230)
                        Text("Jeux Multiple")
                            .font(.title)
                            .fontWeight(.bold)
                        TextField("Login", text: $login)
                            .frame(width: 246, height: 44)
                            .background(AppParameters.backgroundMain)

                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        TextField("Password", text: $password)
                            .frame(width: 246, height: 44)
                            .background(AppParameters.backgroundMain)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        Button {
                            if login.isEmpty || password.isEmpty {
                                alert = true
                            } else {
                                viewModel.checkConnection(login: login, password: password)
                                isLoggedIn = true
                            }
                        } label: {
                            Text("Connexion")
                                .font(.title2)
                                .frame(width: 250, height: 44)
                                .foregroundColor(.white).background(.red)
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                                .padding(.top, 40)
                        }
                        NavigationLink(destination: MenuAppsView(), isActive: $isLoggedIn) {
                            EmptyView()
                        }
                    }
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .alert(isPresented: $alert){
                Alert(title: Text("Alerte"), message: Text("Vous devez rentrer un login"))
            }
            .background(AppParameters.backgroundMain)

        }
    }
}
#Preview {
    ContentView()
}
