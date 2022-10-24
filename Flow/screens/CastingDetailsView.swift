//
//  CastingDetailsView.swift
//  Flow
//
//  Created by apprenant50 on 22/10/2022.
//

import SwiftUI

struct CastingDetailsView: View {
    var body: some View {
        ZStack{
            Color("primaryColor")
                .ignoresSafeArea()
            VStack{
        Text("Ici sera la page de détail du casting")
            }
        }
    }
}

struct CastingDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        CastingDetailsView()
    }
}
