//
//  Data.swift
//  UnsplashCarousel
//
//  Created by Stavros Pachoundakis on 2021-12-29.
//  Copyright © 2021 Stavros Pachoundakis. All rights reserved.
//

import Foundation
import SwiftUI

// Post Model and Data

struct Names : Identifiable {
    var id = UUID().uuidString
    var pic : String
    var creatorpic: String
    var coypright: String
    var name: String
    
}

var images = [
    Names(pic: "p1", creatorpic: "p11", coypright: "@philipmyr", name: "Philip Myrtorp"),
    Names(pic: "p2", creatorpic: "p22", coypright: "@dpidhrushnyi", name: "Dmytro Pidhrushnyi"),
    Names(pic: "p3", creatorpic: "p33", coypright: "@pawel_czerwinski", name: "Pawel Czerwinski"),
    Names(pic: "p4", creatorpic: "p44", coypright: "@yana_hurskaya", name: "Яна Гурская"),
    Names(pic: "p5", creatorpic: "p55", coypright: "@akramhuseyn", name: "Akram Huseyn"),
    Names(pic: "p6", creatorpic: "p66", coypright: "@shklyaevmax", name: "Maxim Shklyaev"),
    Names(pic: "p7", creatorpic: "p77", coypright: "@dani_franco", name: "Danie Franco")
]
