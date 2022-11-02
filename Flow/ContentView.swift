//
//  ContentView.swift
//  Flow
//
//  Created by Apprenant97 on 31/10/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var showConnexion = false
    
    var body: some View {
            if showConnexion == false {

                ConnexionView(showConnexion: $showConnexion)
            
        } else {
                TabViewView()
                
            }
        }
    }
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
