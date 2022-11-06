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
        ZStack {
            ScrollView {
                VStack {
                    HeaderComponent(title:"Workout")
                    NavigationView {
                        List {
                            ForEach(viewModel.workouts) {
                                workout in
                                Button {
                                    print("selected")
                                } label: {
                                    Text(workout.title)
                                        .font(.title3)
                                        .foregroundColor(Color(.label))
                                }
                            }
                        }
                    }
                    .navigationTitle(Text("Workouts"))
                    .toolbar {
                        Button {
                            modal = .add
                        } label: {
                            Label("Add workout", systemImage: "plus.circle")
                        }
                    }
                    
                }
                .sheet(item: $modal, onDismiss: {
                    Task {
                        do {
                            try await viewModel.fetchWorkouts()
                        } catch {
                            print("Error: KRRR \(error)")
                        }
                    }
                }) {
                    modal in
                    switch modal {
                    case .add: AddUpdateWorkout(viewModel: AddUpdateWorkoutViewModel())
                    case .update(let workout): AddUpdateWorkout(viewModel: AddUpdateWorkoutViewModel(currentWorkout: workout))
                    }
                }
                .onAppear {
                    Task {
                        do {
                            try await viewModel.fetchWorkouts()
                        }catch {
                            print("ERROR: KRRR \(error)")
                        }
                        
                    }
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
