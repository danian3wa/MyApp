//
//  connexion.swift
//  MyApp
//
//  Created by Daniel IANOS on 30/07/2024.
//

import SwiftUI


struct  connexion: View {
    
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack {
            Text("Bienvenue")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding()
            Image("Profile")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 100)
                .clipped()
                .cornerRadius(100)
                .padding(.bottom, 75)
            TextField("username", text: $username)
                .padding()
                .background(lightGraycolor)
                .cornerRadius(5)
                .padding(.bottom,20)
            SecureField("password", text: $password)
                .padding()
                .background(lightGraycolor)
                .cornerRadius(5)
                .padding(.bottom,20)
            
        }
        .padding()
    }
}

struct connexion_Previews:
    PreviewProvider {
    static var previews: some View {
        connexion()
    }
}
