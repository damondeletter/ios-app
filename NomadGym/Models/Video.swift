//
//  Video.swift
//  NomadGym
//
//  Created by Damon De Letter on 01/11/2022.
//

import SwiftUI

struct Video: Identifiable {
    var id = UUID()
    var title : String
    var contentCreator: String
    var image: Image
    var color: Color
    var duration : String
}

var videos = [
    Video(title: "My new coach | The hardest chest workout", contentCreator: "Chris Bumstead", image: Image("cbum"), color: Color.hexColour(hexValue: 0x94CCFE), duration: "2 days"),
    Video(title: "Sharing my secrets | ARM DAY W. VAUGHHN", contentCreator: "Chris Bumstead", image: Image("cbum"), color: Color.hexColour(hexValue: 0x94ACFE), duration: "2:39"),
    Video(title: "Sharing my secrets | ARM DAY W. VAUGHHN", contentCreator: "Chris Bumstead", image: Image("cbum"), color: Color.hexColour(hexValue: 0x94ACFE), duration: "2:39")
]