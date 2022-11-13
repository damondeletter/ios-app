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
    var muscleGroup: String
        var date : Date
        var duration: Duration
        var exercises : [Exercise]
        struct Exercise : Codable {
            var id: Int
            var exerciseName: String
            var sets : [Set]
            struct Set : Codable {
                var amountOfReps : Int
            }
            var intensity: Int
        }
}
