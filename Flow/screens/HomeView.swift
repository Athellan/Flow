//
//  HomeView.swift
//  Flow
//
//  Created by Apprenant 63 on 20/10/2022.
//

import SwiftUI

struct HomeView: View {
    
    @State var isDiscoverMode = false
    
    var body: some View {
        NavigationView {
            ScrollView {
                
                Picker(selection: $isDiscoverMode, label: Text("Picker")) {
                    Text("A découvrir")
                        .tag(true)
                    Text("Ce soir je regarde")
                        .tag(false)
                }.pickerStyle(SegmentedPickerStyle())
                    .padding()
                
                Text("Ma page")
            }
            .navigationTitle("Home Page")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
