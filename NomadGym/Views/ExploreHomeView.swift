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
                content
            }
        }
    }
        
    var content : some View {
        ZStack {
            VStack(alignment: .leading, spacing: 0) {
                HeaderComponent(title: "Explore")
                VStack(alignment: .leading, spacing: 0) {
                    Text("Video feed").frame(width: .infinity ,alignment: .leading).foregroundColor(Color.hexColour(hexValue: 0x19213F))
                        .fontWeight(.bold)
                }
                .padding(.horizontal, 20)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20) {
                        ForEach(videos) { video in
                            ExploreVerticalCard(video: video)
                        }
                    }
                    .padding(20)
                }
                VStack {
                    Text("Workout")
                        .frame(maxWidth: .greatestFiniteMagnitude, alignment: .leading).padding(.horizontal, 20).foregroundColor(Color.hexColour(hexValue: 0x19213F))
                        .fontWeight(.bold)
                    
                    VStack(spacing: 20) {
                        ExploreHorizontalCard().padding(15)
                    }
                    
                }
                
                Spacer()
                ZStack {
                    ScrollView {
                        if !show {
                            InfoItem(namespace: namespace, show: $show)
                                .onTapGesture {
                                    withAnimation(.spring(response: 0.6, dampingFraction: 0.8)) {
                                        show.toggle()
                                    }
                                }
                        }
                        
                    }
                }
                if show {
                    InfoView(namespace: namespace, show: $show)
                }
                
            }
        }
        
    }
}

struct ExploreHomeView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreHomeView()
    }
}
