//
//  InfoSegment.swift
//  NomadGym
//
//  Created by Damon De Letter on 02/11/2022.
//

import SwiftUI

struct InfoSegment: View {
    var namespace : Namespace.ID
    @Binding var show : Bool
    var body: some View {
        ZStack {
            ScrollView {
                cover
            }
            .ignoresSafeArea()
            
            Button {
                withAnimation(.spring(response: 0.6, dampingFraction: 0.8)) {
                    show.toggle()
                }
            }label: {
                Image(systemName: "xmark")
                    .font(.body.weight(.bold))
                    .foregroundColor(.green)
                    .padding(8)
                    .background(.ultraThinMaterial, in: Circle())
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
            .padding(30)
            .ignoresSafeArea()
        }
        
    }
    var cover: some View {
        VStack{
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .frame(height: 500)
        .foregroundStyle(.black)
        .background(Image("lifter")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .matchedGeometryEffect(id: "image", in: namespace)
        )
        .background(
            Image("color2")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .matchedGeometryEffect(id: "background", in: namespace)
        )
        .mask(RoundedRectangle(cornerRadius: 30, style: .continuous)
            .matchedGeometryEffect(id: "mask", in: namespace)
        )
        .overlay(
            VStack(alignment: .leading, spacing: 12) {
                Text("SwiftUI")
                    .font(.largeTitle.weight(.bold))
                    .matchedGeometryEffect(id: "title", in: namespace)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Text("20 sections - 3 hours".uppercased())
                    .font(.footnote.weight(.semibold))
                    .matchedGeometryEffect(id: "subtitle", in: namespace)
                Text("Build an iOS app for iOS 15 with custom layouts, animations and...")
                    .font(.footnote)
                    .matchedGeometryEffect(id: "text", in: namespace)
                Divider()
                HStack {
                    Image("Profile")
                        .resizable()
                        .frame(width: 26, height:26)
                        .cornerRadius(10)
                        .padding(9)
                        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 18, style:.continuous))
                    Text("Taught by damon")
                        .font(.footnote)
                }
                
            }
                .padding(20)
                .background(Rectangle()
                    .fill(.ultraThinMaterial)
                    .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
                    .matchedGeometryEffect(id: "blur", in: namespace)
                )
                .offset(y: 250)
                .padding(20)
        ).onTapGesture {
            withAnimation(.spring(response: 0.6, dampingFraction: 0.9)) {
                show.toggle()
            }
        }
    }
    
}

struct InfoSegment_Previews: PreviewProvider {
    @Namespace static var namespace
    
    static var previews: some View {
        InfoSegment(namespace: namespace, show: .constant(true))
    }
}

/* The logic behind the popup screen is from a tutorial around transitions:
 https://www.youtube.com/watch?v=I9O1n4s96v4
 */
