//
//  AddUpdateWorkout.swift
//  NomadGym
//
//  Created by Damon De Letter on 06/11/2022.
//

import SwiftUI

struct AddUpdateWorkout : View {
    
    @ObservedObject var viewModel : AddUpdateWorkoutViewModel
    @Environment(\.dismiss) var presentationMode
    
    var body: some View {
        VStack {
            TextField("workout title", text: $viewModel.workoutTitle)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Button {
                viewModel.addUpdateAction {
                    presentationMode()
                }
            } label: {
                Text(viewModel.buttonTitle)
            }
        }
    }
}


struct AddUpdateWorkout_Previews: PreviewProvider {
    static var previews: some View {
        AddUpdateWorkout(viewModel: AddUpdateWorkoutViewModel())
    }
}

