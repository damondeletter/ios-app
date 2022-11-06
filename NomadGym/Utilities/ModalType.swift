//
//  ModalType.swift
//  NomadGym
//
//  Created by Damon De Letter on 06/11/2022.
//

import Foundation

enum ModalType: Identifiable {
    var id: String {
        switch self {
        case .add: return "add"
        case .update: return "update"
        }
    }
    
    case add
    case update(Workout)
}
