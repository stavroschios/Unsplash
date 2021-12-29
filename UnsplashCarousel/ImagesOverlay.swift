//
//  ImagesOveraly.swift
//  UnsplashCarousel
//
//  Created by Stavros Pachoundakis on 2021-12-29.
//  Copyright © 2021 Stavros Pachoundakis. All rights reserved.
//

import Foundation
import SwiftUI

struct IconImage : View  {
    @Binding var selected : Int
    @Environment(\.colorScheme) var colorScheme

    var body : some View {
        Button(action: {self.selected = 0}) {
        Image("picb")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 30, height: 30)
            .clipShape(Circle())
            .shadow(color: Color.black.opacity(0.1), radius: 5, x: 5, y: 5)
            .padding(5)
            .background(Color.white)
            .clipShape(Circle())
        }
    }
    
}

struct BottomImage : View  {
    @State var image : String
    @Environment(\.colorScheme) var colorScheme

    var body : some View {
        Image(image)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 55, height: 55)
            .clipShape(Circle())
            .shadow(color: Color.black.opacity(0.1), radius: 5, x: 5, y: 5)
            .padding(5)
            .background(colorScheme == .light ? Color.black : Color.white)
            .clipShape(Circle())
            .offset(x: -15, y: 25)
        
      
    }
    
}

