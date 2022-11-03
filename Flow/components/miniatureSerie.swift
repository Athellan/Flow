import SwiftUI

struct miniatureSerie: View {
    
    let serie : SerieHome
    @State private var isFavorited = false
    
    var body: some View {
        ZStack {
            
            Rectangle()
                .frame(width: 352, height: 84)
                .foregroundColor(Color("opacityColor"))
                .cornerRadius(10)
            
            HStack {
                Image(serie.cover)
                    .resizable()
                    .frame(width: 92, height: 92)
                    .cornerRadius(10)
                    .shadow(color: Color("secondaryColor").opacity(0.7), radius: 4, x: -3, y: 4)
            }
            .padding(.leading, -180)
            
            
            HStack(alignment: .bottom) {
                VStack(alignment: .leading) {
                    Text(serie.title.uppercased())
                        .font(.system(size: 14))
                    HStack {
                        Text("S0\(serie.season)  |").bold()
                        Text("E0\(serie.episodeNumber) ").bold()
                    }.font(.system(size: 18))
                    
                    Text(serie.episodeName)
                }.font(.system(size: 14))
                
            }
            .foregroundColor(Color("secondaryColor"))
            .frame(height: 55)
            .padding(.leading, 40)
            
            FavoriteButton(isFavorited: $isFavorited)
                .padding(.leading, 290)
                .padding(.top, 25)
            
        }
        .padding(.top, 7)
            .frame(width: 400)
        
        
        
    }
}



struct miniatureSerie_Previews: PreviewProvider {
    static var previews: some View {
        miniatureSerie(serie: SerieHome(title: "You", cover: "younetflix", episodeName: "Chapitre 1: La disparition", episodeNumber: 01, season: 01))
    }
}
