//
//  Workout.swift
//  NomadGym
//
//  Created by Damon De Letter on 06/11/2022.
//

import Foundation

struct Workout : Identifiable, Codable {
    let id: UUID?
    var title: String
}
