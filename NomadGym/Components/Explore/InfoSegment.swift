//
//  InfoSegment.swift
//  NomadGym
//
//  Created by Damon De Letter on 02/11/2022.
//

import SwiftUI

struct InfoSegment: View {
    @Namespace var namespace
    @State var show = false
    var body: some View {
        ZStack {
            if !show {
                VStack{
                    Spacer()
                    VStack(alignment: .leading, spacing:12)  {
                        Text("Bulking")
                            .font(.largeTitle)
                            .matchedGeometryEffect(id: "title", in: namespace)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Text("5 minute read".uppercased())
                            .font(.footnote.weight(.semibold))
                            .matchedGeometryEffect(id: "subtitle", in: namespace)
                        Text("How to bulk in the most efficient way?")
                            .font(.footnote)
                            .matchedGeometryEffect(id: "text", in: namespace)
                    }
                    .padding(20)
                    .background(
                        Rectangle().fill(.ultraThinMaterial)
                            .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
                            .blur(radius: 30)
                            .matchedGeometryEffect(id: "blur", in: namespace)
                    )
                    
                }
                
                .foregroundColor(.white)
                .background(Image("lifter").resizable().aspectRatio(contentMode: .fit).matchedGeometryEffect(id: "image", in: namespace))
                .background(Image("color2").resizable().aspectRatio(contentMode: .fill).matchedGeometryEffect(id: "background", in: namespace))
                .mask(RoundedRectangle(cornerRadius: 30, style: .continuous).matchedGeometryEffect(id: "mask", in: namespace))
                .frame(height: 300)
                .padding(20)
            }
            else {
            }
        }.onTapGesture {
            withAnimation(.spring(response: 0.6, dampingFraction: 0.8)) {
                show.toggle()
            }
        }
    }
    
}

struct InfoSegment_Previews: PreviewProvider {
    static var previews: some View {
        InfoSegment()
    }
}

/* The logic behind the popup screen is from a tutorial around transitions:
 https://www.youtube.com/watch?v=I9O1n4s96v4
 */
