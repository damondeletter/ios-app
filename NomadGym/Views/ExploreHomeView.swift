//
//  ExploreHomeView.swift
//  NomadGym
//
//  Created by Damon De Letter on 26/10/2022.
//

import SwiftUI

struct ExploreHomeView: View {
    var body: some View {
        ScrollView {
            content
        }
    }
    var content : some View {
        VStack(alignment: .leading, spacing: 0) {
            HeaderComponent(title: "Explore")
            VStack {
                ExploreHorizontalCard().padding(15)

            }
           
            Spacer()
        }
    }
}

struct ExploreHomeView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreHomeView()
    }
}
