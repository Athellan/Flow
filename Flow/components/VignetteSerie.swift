
//
//  VignetteSerie.swift
//  Flow
//
//  Created by Apprenant97 on 28/10/2022.
//


import SwiftUI

struct VignetteSerie: View {
    

    @ObservedObject var viewModelSerie = SerieViewModel()
    

    var gradientTop: Color = Color(red: 0 / 255, green: 70 / 255, blue: 67 / 255)
    var gradientBottom: Color = Color(red: 149 / 255, green: 191 / 255, blue: 181 / 255)
    
    let columns = [
        GridItem(.fixed(100)),
        GridItem(.fixed(100)),
        GridItem(.fixed(100))
    ]
   
    
    var body: some View {
        
        VStack(alignment: .leading){
            Text("Les séries tendances").bold().font(.title2).offset(x: 20, y: -15)
                .foregroundColor(Color("secondaryColor"))
                .font(.system(size: 20))
                .padding(.bottom, -20)
                   

            ZStack {
                LazyVGrid(columns: columns) {
                    ForEach(viewModelSerie.series) { serie in
                        ZStack(alignment: .bottomTrailing) {
                            Image(serie.image ?? "test")
                                .resizable()
                                .frame(width: 97, height: 145)
                                .cornerRadius(15)
                                .shadow(color: Color("secondaryColor").opacity(0.7), radius: 4, x: -3, y: 4)
                                .padding(1)
                            SelectedButton2(serie: serie)
                                .padding(5)
                                .foregroundColor(Color("titleBackgroundColor"))
                        }
                    }
                }
                .frame(width: 352, height: 480)
                .padding(.top, 20)
                .onAppear {
                    Task {
                        await viewModelSerie.fetchUsers()
                    }
                }
            }.frame(width: 352, height: 480)
                
        }
        .background(
            Rectangle()
                .fill(LinearGradient(
                    gradient: .init(colors: [self.gradientTop, self.gradientBottom]),
                    startPoint: .init(x: 0.5, y: 0),
                    endPoint: .init(x: 0.5, y: 0.9)
                ))
                .cornerRadius(10)
                .opacity(0.3)
                .shadow(color: Color("secondaryColor").opacity(0.7), radius: 4, x: -3, y: 4)
                .frame(height: 550)
        )
        }
    }


struct VignetteSerie_Previews: PreviewProvider {
    static var previews: some View {
        VignetteSerie()
    }
}


struct SerieDetails: View {
    var serie : SerieParam
    @State private var isSelected = false
    var body : some View {
        ZStack(alignment: .bottomTrailing) {
            Image(serie.image ?? "test")
                .resizable()
                .frame(width: 97,height: 145)
                .cornerRadius(10)
                .shadow(color: Color("secondaryColor").opacity(0.7), radius: 4, x: -3, y: 4)
                .padding(1)
            SelectedButton2(serie: serie)
        }
    }
}


struct SelectedButton2: View {
    @ObservedObject var serie : SerieParam
    var body: some View {
        Button {
            serie.isSelected.toggle()
        } label: {
            Image(systemName: serie.isSelected ? "checkmark.circle.fill" : "checkmark.circle")
                .font(.largeTitle)
        }
    }
}

