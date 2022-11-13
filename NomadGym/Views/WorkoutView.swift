//
//  WorkoutView.swift
//  NomadGym
//
//  Created by Damon De Letter on 26/10/2022.
//

import SwiftUI

struct WorkoutView: View {
    @StateObject var viewModel = WorkoutListViewModel()
    
    @State var modal: ModalType? = nil
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.workouts) {
                    workout in
                    Button {
                        modal = .update(workout)
                    } label: {
                        Text(workout.title)
                            .font(.title3)
                            .foregroundColor(Color(.label))
                    }
                }
            }
            .navigationTitle(Text("Workouts"))
            .toolbar {
                Button {
                    modal = .add
                } label: {
                    Label("Add Workout", systemImage: "plus.circle")
                }
            }
        }
        .sheet(item: $modal, onDismiss: {
            Task {
                do {
                    try await viewModel.fetchWorkouts()
                } catch {
                    print("❌ Error: \(error)")
                }
            }
        }) { modal in
            switch modal {
            case .add:
                AddUpdateWorkout(viewModel: AddUpdateWorkoutViewModel())
            case .update(let workout):
                AddUpdateWorkout(viewModel: AddUpdateWorkoutViewModel(currentWorkout: workout))
            }
        }
        .onAppear {
            Task {
                do {
                    try await viewModel.fetchWorkouts()
                } catch {
                    print("❌ Error: \(error)")
                }
            }
        }
        
    }
}

struct WorkoutView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutView()
    }
}
