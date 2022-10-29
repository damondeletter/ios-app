//
//  HeaderComponent.swift
//  NomadGym
//
//  Created by Damon De Letter on 27/10/2022.
//

import SwiftUI

struct HeaderComponent: View {
    
    var body: some View {
        HStack {
            Title()
            Spacer()
            Button {
                print("test")
            }label: {
                Profile()
            }
            
        }
        .frame(height: 70)
        .frame(maxHeight: .infinity, alignment: .top)
        
        
    }
}

struct Title : View {
    @State var textColor = Color.hexColour(hexValue: 0x19213F)
    let title = "Explore"
    var body : some View {
            Text(title)
                .font(.system(size: 40).weight(.bold))
                .padding(.leading, 30)
                .foregroundColor(textColor)
                .frame(maxWidth: .infinity, alignment: .leading)
                
    }
}

struct Profile : View {
    var colorIcon = Color.hexColour(hexValue: 0x9D8977)
    var colorCircle = Color.hexColour(hexValue: 0xD9D9D9)
    var body : some View {
            Image(systemName: "person.circle")
                .resizable()
                .scaledToFit()
                .frame(width:40, height: 40)
                .clipShape(Circle())
                .padding(30)
                .foregroundColor(colorIcon)
                .background(
                    Circle()
                        .foregroundColor(colorCircle)
                        .frame(width: 80, height: 80)
                )
        
        
    }
}

struct HeaderComponent_Previews: PreviewProvider {
    static var previews: some View {
        HeaderComponent()
    }
}
