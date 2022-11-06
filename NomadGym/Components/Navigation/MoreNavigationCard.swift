//
//  MoreNavigationCard.swift
//  NomadGym
//
//  Created by Damon De Letter on 04/11/2022.
//

import SwiftUI

struct MoreNavigationCard: View {
    var body: some View {
        
            HStack(spacing: 20) {
                VStack(alignment: .leading, spacing:7) {
                    HStack{
                        Button {
                        }label: {
                            
                        }
                        Spacer()
                    }
                }
                Divider()
                
            }
            .padding(30)
            .frame(maxWidth: .infinity, maxHeight: 150)
            .foregroundColor(.black)
            .background(Color.hexColour(hexValue: 0x77BAFE))
            .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
        }
    }


struct MoreNavigationCard_Previews: PreviewProvider {
    static var previews: some View {
        MoreNavigationCard()
    }
}
