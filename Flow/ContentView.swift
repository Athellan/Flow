//
//  ContentView.swift
//  Flow
//
//  Created by Apprenant97 on 31/10/2022.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel = UsersViewModel()
    
    
    var body: some View {
        VStack{
            ConnexionView()
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
