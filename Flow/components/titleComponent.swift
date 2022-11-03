
import SwiftUI

struct titleComponent: View {
    let film : FilmHome
    var body: some View {
            VStack {
                Text(film.title)
                    .bold()
                    .font(.system(size: 17))
                Text(film.subTitle)
                    .font(.system(size: 17))
            }
            .padding()
            .cornerRadius(7)
            .frame(width: 352, height: 60)
            .background(Color("titleBackgroundColor"))
            .cornerRadius(50)
            .shadow(color: Color("secondaryColor").opacity(0.7), radius: 4, x: -3, y: 4)
            .foregroundColor(Color("secondaryColor"))
//            .padding(.bottom, 10)
        
    }
}
    

struct titleComponent_Previews: PreviewProvider {
    static var previews: some View {
        titleComponent(film: FilmHome(title: "Le Seigneur des Anneaux", subTitle: "Les Deux Tours", opus: "", cover: "LSDA2T"))
    }
}
