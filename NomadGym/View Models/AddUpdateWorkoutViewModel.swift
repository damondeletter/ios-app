//
//  AddUpdateSongViewModel.swift
//  NomadGym
//
//  Created by Damon De Letter on 06/11/2022.
//

import SwiftUI

final class AddUpdateWorkoutViewModel: ObservableObject {
    @Published var workoutTitle = ""
    
    var workoutID : UUID?
    
    var isUpdating: Bool {
        workoutID != nil
    }
    
    var buttonTitle : String {
        workoutID != nil ? "Update workout" : "Add workout"
    }
    
    //adding a new workout
    init() {}
    
    init(currentWorkout: Workout) {
        self.workoutTitle = currentWorkout.title
        self.workoutID = currentWorkout.id
    }
    
    func addWorkout() async throws {
        let urlString = Constants.baseURL + Endpoints.workouts
        
        guard let url = URL(string: urlString) else {
            throw HttpError.badURL
        }
        
        //let workout = Workout(id: nil, title: workoutTitle)
        
        //try await HttpClient.shared.sendData(to: url, object: workout, httpMethod: HttpMethods.POST.rawValue)
    }
    
    func addUpdateAction(completion: @escaping () -> Void) {
        Task {
            do {
                if isUpdating {
                    try await updateWorkout()
                } else {
                   try await addWorkout()
                }
            }catch {
                print("Error \(error)")
            }
           completion()
        }
    }
    
    func updateWorkout() async throws {
        let urlString = Constants.baseURL + Endpoints.workouts
        guard let url = URL(string : urlString) else {
            throw HttpError.badURL
        }
        //let workoutToUpdate = Workout(id: workoutID, title: workoutTitle)
        //try await HttpClient.shared.sendData(to: url, object: workoutToUpdate, httpMethod: HttpMethods.PUT.rawValue)
    }
}
