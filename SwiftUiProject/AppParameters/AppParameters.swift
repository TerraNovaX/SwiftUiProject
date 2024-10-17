//
//  AppParameters.swift
//  SwiftUiProject
//
//  Created by WADOUACHI on 15/10/2024.
//

import SwiftUI

class AppParameters {
    static let backgroundColor: Color = Color.orange
    static let backgroundMain: Color = Color(red: 250 / 255, green: 238 / 255, blue: 231 / 255)
    static let colorSecondary: Color = Color(red: 167 / 255, green: 134 / 255, blue: 223 / 255)
    static let colorTertiary: Color = Color(red: 229 / 255, green: 49 / 255, blue: 112 / 255)

    static var isValid:Bool = true
}

enum availableApps: String{
    static let allCases:[availableApps] = [.mystery, .jackpot, .pierreFeuilleCiseau]
    
    case mystery = "Mystery"
    case jackpot = "Jackpot"
    case pierreFeuilleCiseau =  "Pierre Feuille Ciseau"
    
    var image:Image{
        switch self {
            case .mystery: return Image("boite")
            case .jackpot: return Image("jackpot")
            case .pierreFeuilleCiseau: return Image("PierreFC")
        }
    }
    var title:String{
        switch self {
        case .mystery: return "Mystery"
        case .jackpot: return "Jackpot"
        case .pierreFeuilleCiseau: return "Pierre Feuiille Ciseau"
            
        }
    }
    var link: AnyView{
        switch self {
        case .mystery: return AnyView(Mystery())
        case .jackpot: return AnyView(Jackpot())
        case .pierreFeuilleCiseau: return AnyView(PierreFC())
        }
    }
}
