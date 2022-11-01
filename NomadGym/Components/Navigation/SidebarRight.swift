//
//  SidebarRight.swift
//  NomadGym
//
//  Created by Damon De Letter on 01/11/2022.
//

import SwiftUI

struct SidebarRight: View {
    @Binding var isSidebarVisible : Bool
    var body: some View {
        if isSidebarVisible {
            Text("Sidebar is visible")
                .bold()
        
        }
    }
}

struct SidebarRight_Previews: PreviewProvider {
    @State static var value = false
    static var previews: some View {
        SidebarRight(isSidebarVisible: $value)
    }
}
