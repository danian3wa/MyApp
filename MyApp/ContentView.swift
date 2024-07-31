//
//  ContentView.swift
//  MyApp
//
//  Created by Daniel IANOS on 29/07/2024.
//

import SwiftUI

let lightGraycolor = Color(red: 239/255, green: 243/255, blue: 244/255)


struct Logo: View {
    var body: some View {
        Image("logo")
            .resizable()
            .frame(width: 200, height: 47)
    }
}

struct HelloText: View {
    var body: some View {
        Text("L'écologie est important")
            .font(.headline)
            .fontWeight(.regular)
            .multilineTextAlignment(.center)
            .padding(.all, 10)
       /*NavigationLink(
            destination: connexion(),
            label: {
                Text("connexion")
            })*/
    }
}
/*
struct LoginButton: View {
    var body: some View {
        Text("connexion")
            .bold()
            .frame(minWidth: 0, maxWidth: .infinity)
            
        
    }
}
*/
struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                VStack{
                    Logo()
                    HelloText()
                    NavigationLink(destination: connexion(), label : {
                        Text("Connexion")
                            .bold()
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .padding()
                            .foregroundColor(.white)
                            .background(Color .blue)
                            .cornerRadius(20)
                    })
                    .padding()
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) { Spacer()
                        
                            .font(.headline)
                            .padding()
                        Spacer()
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
