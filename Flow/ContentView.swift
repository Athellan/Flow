//
//  ContentView.swift
//  Flow
//
//  Created by Apprenant97 on 31/10/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var isConnected = true
    @ObservedObject var viewModel = UsersViewModel()
    
    
    var body: some View {
        VStack{
        if !isConnected {
            ConnexionView(isConnected: isConnected)
        } else {
            
            TabViewView().environmentObject(LocationsViewModel())
            
        }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
