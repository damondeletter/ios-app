//
//  ExploreHomeView.swift
//  NomadGym
//
//  Created by Damon De Letter on 26/10/2022.
//

import SwiftUI

struct ExploreHomeView: View {
    @State var hasScrolled = false
    @Namespace var namespace
    @State var show = false
    var body: some View {
        ZStack {
            
            
            ScrollView {
                HeaderComponent(title:"Explore")
                
                if !show {
                    InfoItem(namespace: namespace, show: $show)
                        .onTapGesture {
                            withAnimation(.spring(response: 0.6, dampingFraction: 0.8)) {
                                show.toggle()
                            }
                            
                        }
                }
            }
            .coordinateSpace(name: "scroll")
            .safeAreaInset(edge: .top, content: { Color.clear.frame(height: 70)
            })
            
            if show {
                InfoSegment(namespace: namespace, show: $show)
            }
        }
        .background(LinearGradient(gradient: Gradient(colors: [.white,Color.hexColour(hexValue: 0xF3F4FA),Color.hexColour(hexValue: 0xbb94fe)]), startPoint: .top, endPoint: .bottom)).ignoresSafeArea()
        .padding(0)
    }
}

struct ExploreHomeView_Previews: PreviewProvider {
    
    static var previews: some View {
        ExploreHomeView()
    }
}
