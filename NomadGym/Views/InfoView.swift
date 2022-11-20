//
//  InfoView.swift
//  NomadGym
//
//  Created by Damon De Letter on 02/11/2022.
//

import SwiftUI

struct InfoView: View {
    var namespace : Namespace.ID
    @Binding var show : Bool
    var body: some View {
        ScrollView {
            VStack {
                Spacer()
            }
            .frame(maxWidth: .infinity)
            
            .frame(height: 500)
            .foregroundColor(.white)
            .background(Image("lifter").resizable().aspectRatio(contentMode: .fit).matchedGeometryEffect(id: "image", in: namespace))
            .background(
                Image("color2").resizable().aspectRatio(contentMode: .fill).matchedGeometryEffect(id: "background", in: namespace))
            .mask(RoundedRectangle(cornerRadius: 30, style: .continuous).matchedGeometryEffect(id: "mask", in: namespace))
            .overlay(
                VStack(alignment: .leading, spacing:12) {
                    Text("How to bulk in the most efficient way?")
                        .font(.footnote)
                        .matchedGeometryEffect(id: "text", in: namespace)
                    Text("5 minute read".uppercased())
                        .font(.footnote.weight(.semibold))
                        .matchedGeometryEffect(id: "subtitle", in: namespace)
                    Text("Bulking")
                        .font(.largeTitle)
                        .matchedGeometryEffect(id: "title", in: namespace)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Divider()
                    HStack {
                        Image("Profile")
                            .resizable()
                            .frame(width: 26, height: 26)
                            .cornerRadius(10)
                            .padding(8)
                            .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 18, style: .continuous))
                         Text("Taught by Damon")
                            .font(.footnote)
                    }
                }
                    .padding(20)
                    .background(
                        Rectangle().fill(.ultraThinMaterial)
                            .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
                            .matchedGeometryEffect(id: "blur", in: namespace)
                    )
                    .offset(y: 250)
                    .padding(20)
            )
        }
    }
    
    var infoCover : some View {
        VStack {
            Spacer()
        }
        
    }
    
}

struct InfoView_Previews: PreviewProvider {
    @Namespace static var namespace
    static var previews: some View {
        InfoView(namespace : namespace, show: .constant(true))
    }
}
