
import SwiftUI

struct titleComponent: View {
    let film : Film
    var body: some View {
            VStack {
                Text(film.title)
                    .bold()
                    .font(.system(size: 17))
                Text("Les Deux Tours")
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
        titleComponent(film: Film(title: "Le seigneur des anneaux", subname: "Les Deux Tours", cover: "seigneurDesAnneaux2", realisator: "Peter Jackson", description: "Le Seigneur des anneaux est une trilogie cinématographique américano-néo-zélandaise de fantasy réalisée par Peter Jackson et fondée sur le roman du même nom en trois volumes de J. R. R. Tolkien. Les films composant cette trilogie sont La Communauté de l'anneau, Les Deux Tours et Le Retour du roi.", rate: 3, isFavorited: true, isSeen: true))
    }
}
