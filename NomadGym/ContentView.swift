//
//  ContentView.swift
//  NomadGym
//
//  Created by Damon De Letter on 26/10/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var isSidebarOpened = false
    @State private var selection = ""
    var body: some View {
        ZStack {
            BottomNavigationComponent()
        }
        SidebarRight(isSidebarVisible: $isSidebarOpened)
             
        /* more bestaat uit: settings, forum page voor te zeggen
         hoe druk,.., contact page voor email?*/
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



