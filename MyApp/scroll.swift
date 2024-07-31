//
//  scroll.swift
//  MyApp
//
//  Created by Daniel IANOS on 30/07/2024.
//

import SwiftUI

struct  scroll: View {
    
    private let imgs = ["Profile", "Profile2", "Profile3", "Profile4"]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 10) {
                ForEach(imgs, id:\.self) {
                    img in Image(img)
                        .resizable()
                        .aspectRatio(contentMode: .fit) // Maintain aspect ratio
                        .frame(width: 250, height: 250) // Set desired width and height
                        .clipShape(Circle())
                    
                }
            }
        }
        
    }
}
struct scroll_Previews:
    PreviewProvider {
    static var previews: some View {
        scroll()
    }
}
