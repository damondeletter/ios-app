//
//  VIdeoFeedView.swift
//  NomadGym
//
//  Created by Damon De Letter on 26/10/2022.
//

import SwiftUI
import WebKit

struct VideoFeedView: View {
    var body: some View {
        ZStack {
            
            
            ScrollView {
                HeaderComponent(title: "Video feed")
                    
                
            }
            
        }
        .background(LinearGradient(gradient: Gradient(colors: [.white,Color.hexColour(hexValue: 0xF3F4FA),Color.hexColour(hexValue: 0xbb94fe)]), startPoint: .top, endPoint: .bottom))
      
    }
    
}



struct VideoFeedView_Previews: PreviewProvider {
    static var previews: some View {
        VideoFeedView()
    }
}
