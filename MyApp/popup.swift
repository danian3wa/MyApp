//
//  popup.swift
//  MyApp
//
//  Created by Daniel IANOS on 30/07/2024.
//

import SwiftUI

struct  popup: View {
    
    @State var showAlert = false
    
    var body: some View {
        Button(action: {self.showAlert.toggle()
           
        }){
            Text("BIENVENUE")
        }
        .alert(isPresented: self.$showAlert) {
            Alert(title: Text("BIENVENUE SUR VOTRE ESPACE"))
        }
    }
}

struct popup_Previews:
    PreviewProvider {
    static var previews: some View {
        popup()
    }
}
