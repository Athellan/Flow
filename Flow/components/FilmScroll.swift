

import SwiftUI

struct FilmScroll: View {
    
    @ObservedObject var viewModelFilmAdded = FilmAddedViewModel()
    
    var gradientTop: Color = Color(red: 0 / 255, green: 70 / 255, blue: 67 / 255)
    var gradientBottom: Color = Color(red: 149 / 255, green: 191 / 255, blue: 181 / 255)
    
    var body: some View {
        VStack(alignment: .leading){
            Text("Films").bold().font(.title2).offset(x: -10, y: 0)
                .foregroundColor(Color("secondaryColor"))
                .font(.system(size: 20))
                .padding()
                .padding(.horizontal, 10)
            
            ZStack {
                ScrollView(.horizontal, showsIndicators: false){
                    HStack {
                        ForEach(viewModelFilmAdded.filmsAdded) { filmAdded in
                            ZStack(alignment: .bottomTrailing) {
                                Image(filmAdded.image ?? "test")
                                    .resizable()
                                    .frame(width: 110, height: 165)
                                    .cornerRadius(15)
                                    .shadow(color: Color("secondaryColor").opacity(0.7), radius: 4, x: -2, y: 2)
                                    .padding(2)
                                    .padding(.bottom)
                            }
                        }
                    }.padding(.horizontal, 10)
                }
                .onAppear {
                    Task {
                        await viewModelFilmAdded.fetchUsers()
                    }
                }
                .onTapGesture {
                    DetailsView(film: FilmHome(title: "", subTitle: "", opus: "", cover: ""))
                }
            }
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
                .frame(height: 250)
        )
    }
}

struct FilmScroll_Previews: PreviewProvider {
    static var previews: some View {
        FilmScroll()
    }
}



