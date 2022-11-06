//
//  ExploreVerticalCard.swift
//  NomadGym
//
//  Created by Damon De Letter on 01/11/2022.
//

import SwiftUI

struct ExploreVerticalCard: View {
    var video : Video
    var body: some View {
        VStack(alignment: .leading, spacing: 1) {
            Image("Cbum_thumb").resizable().overlay(
                ZStack{
                    Text(video.duration).foregroundColor(.white).padding(6)
                }, alignment: .bottomTrailing)
            Text(video.contentCreator)
                .opacity(0.8)
                .foregroundColor(Color.hexColour(hexValue: 0x808080))
                .frame(maxWidth: .infinity, alignment: .center)
            Text(video.title)
                .frame(maxWidth: 170, alignment: .center)
                .fontWeight(.bold)
                .foregroundColor(.black)
                .layoutPriority(1)
                .multilineTextAlignment(.center)
            
        

        }
        .foregroundColor(.white)
                .padding(30)
                .frame(width: 230, height: 250)
                .background(video.color)
                .mask(RoundedRectangle(cornerRadius: 50, style: .continuous))
                .shadow(color: video.color.opacity(0.3), radius: 8, x: 0, y: 12)
                
    }
}

struct ExploreVerticalCard_Previews: PreviewProvider {
    static var previews: some View {
        ExploreVerticalCard(video: videos[1])
    }
}
