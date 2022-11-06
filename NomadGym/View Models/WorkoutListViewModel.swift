//
//  WorkoutListViewModel.swift
//  NomadGym
//
//  Created by Damon De Letter on 06/11/2022.
//

import SwiftUI

class WorkoutListViewModel : ObservableObject {
    @Published var workouts = [Workout]()
    
    func fetchWorkouts() async throws {
        let urlString = Constants.baseURL + Endpoints.workouts
        
        guard let url = URL(string: urlString) else {
            throw HttpError.badURL
        }
        
        let workoutResponse : [Workout] = try await HttpClient.shared.fetch(url: url)
        
        DispatchQueue.main.async {
            self.workouts = workoutResponse
        }
    }
}
