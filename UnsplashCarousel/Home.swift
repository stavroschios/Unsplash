//
//  Home.swift
//  UnsplashCarousel
//
//  Created by Stavros Pachoundakis on 2021-12-29.
//  Copyright © 2021 Stavros Pachoundakis. All rights reserved.
//

import Foundation
import SwiftUI

struct Home: View {
    @Environment(\.colorScheme) var colorScheme

    @State var selected: Int = 0
    var width = UIScreen.main.bounds.width
    var height = UIScreen.main.bounds.height
    
    var body: some View {
      
        NavigationView {
            ZStack(alignment: .topLeading){
                VStack(alignment: .leading, spacing: 10){
                Text("The internet’s source of freely-usable images.")
                        .font(.footnote)
                        .opacity(0.9)
                Text("Powered by creators everywhere.")
                        .font(.footnote)
                        .opacity(0.9)
                }.padding(.leading, 20)
        TabView(selection: $selected) {
            
            // Images
            ForEach(images, id: \.id) { image in
                ZStack(alignment: Alignment(horizontal: .trailing, vertical: .bottom), content: {
                    
                    // Geometry Reader for Parallax Effect
                    GeometryReader { reader in
                        
                        Image("\(image.pic)")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                        // moving view in opposite side when user starts to swipe
                        // this will create parallax effect
                            .offset(x: -reader.frame(in: .global).minX)
                            .frame(width: width, height: height / 2)
                        
                    }
                    
                    .frame(height: height / 2)
                    .cornerRadius(15)
                    .padding(10)
                    .background(colorScheme == .light ? Color.black : Color.white)
                    .cornerRadius(15)
                    // shadow
                    .shadow(color: Color.black.opacity(0.2), radius: 5, x: 5, y: 5)
                    .shadow(color: Color.black.opacity(0.2), radius: 5, x: -5, y: -5)
                    // decreasing width by Padding so outer view only decreased
                    // inner image will be full width
                    
                    // Bottom Image
                    BottomImage(image: "\(image.creatorpic)")
                    HStack{
            
                    Text("\(image.coypright)")
                            .underline()
                    }
                        .frame(alignment: .leading)
                        .offset(x:  -width / 2 , y: 25)
                        .foregroundColor(colorScheme == .light ? Color.black : Color.white)
                    
//                        .underline()
//                        .frame(alignment: .leading)
//                        .offset(x:  -width / 2 , y: 50)
//                        .foregroundColor(colorScheme == .light ? Color.black : Color.white)
//
                    
                   
                })
                
                .padding(.horizontal, 25)
                
            }
        }
      
        // page TabView
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        .navigationTitle("Unsplash")
        .navigationBarItems(trailing: IconImage(selected: $selected))
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
            
    }
}
