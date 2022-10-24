//
//  Parameters.swift
//  Flow
//
//  Created by Adel Djelti on 24/10/2022.
//

import SwiftUI

struct Parameters: View {
    
    @State private var searchText = ""
    
    var body: some View {
            ZStack {
                Color("primaryColor").ignoresSafeArea()
                
                
                VStack{
                    Text("Dites nous ce que vous aimez").font(.title)
                        .padding()
                    Text("Pour que nous puissions créer votre page personnalisée et améliorer vos recommandations.")
                        .frame(width: 260)
                    Spacer()
                }
                VStack{
                     
                    TextField("Search ...", text: $searchText)
                                    .padding(7)
                                    .padding(.horizontal, 25)
                                    .background(Color(.systemGray6))
                                    .cornerRadius(20)
                                    .padding(.horizontal)
                    
                    Spacer()
                        .frame(height: 350)
                    
                }
                
            
                   
                VStack{
                   
                  
                    Spacer()
                    RoundedRectangle(cornerRadius:10)
                        .fill(.red)
                        .frame(width: 352, height: 487)
                        
                }

            }
        
    }
}

    

struct Parameters_Previews: PreviewProvider {
    static var previews: some View {
        Parameters()
    }
}
