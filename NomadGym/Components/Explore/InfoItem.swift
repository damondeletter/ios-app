//
//  InfoItem.swift
//  NomadGym
//
//  Created by Damon De Letter on 02/11/2022.
//

import SwiftUI

struct InfoItem: View {
    var namespace: Namespace.ID
    @Binding var show: Bool
    
    var body: some View {
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
}

struct InfoItem_Previews: PreviewProvider {
    @Namespace static var namespace
    static var previews: some View {
        InfoItem(namespace: namespace,show: .constant(true))
    }
}
