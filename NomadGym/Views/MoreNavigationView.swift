//
//  MoreNavigationView.swift
//  NomadGym
//
//  Created by Damon De Letter on 28/10/2022.
//

import SwiftUI

struct MoreNavigationView: View {
    var body: some View {
        VStack {
            HeaderComponent(title: "More")
            Text("Test").frame(maxWidth:.infinity, alignment: .leading).padding(20)
        }
    }
}



struct MoreNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        MoreNavigationView()
    }
}


