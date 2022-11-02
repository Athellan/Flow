

import SwiftUI

struct Card: Identifiable {
    var id = UUID()
    let title:String
    let subtitle: String
    let image:String
}

struct CardView: View {
    var show:Card
    
    @State private var offset = CGSize.zero
    @State private var color: Color = .white
    @Binding var currentCard: Card
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 270, height: 370)
                .cornerRadius(20)
                .foregroundColor(color.opacity(1))
                .shadow(radius: 2)
                .padding()
            Image(show.image)
                .resizable()
                .frame(width: 250, height: 350)
                .cornerRadius(15)
                .shadow(color: Color("secondaryColor").opacity(0.7), radius: 4, x: -3, y: 4)
        }
        .offset(x: offset.width, y: offset.height * 0.4)
        .rotationEffect(.degrees(Double(offset.width / 40)))
        .gesture(
            DragGesture()
                .onChanged {
                    gesture in offset = gesture.translation
                    withAnimation {
                        changeColor(width: offset.width)
                    }
                }.onEnded {_ in
                    withAnimation {
                        swipeCard(width: offset.width)
                        changeColor(width: offset.width)
                        currentCard = show
                    }
                }
        )
    }
    
    
    func swipeCard(width:CGFloat) {
        switch width {
        case -500...(-150):
            //            print("\(book) enlevé")
            offset = CGSize(width: -500, height: 0)
            
        case 150...500:
            //            print("\(book) ajouté")
            offset = CGSize(width: 500, height: 0)
        default: offset = .zero
        }
    }
    
    func changeColor(width:CGFloat) {
        switch width {
        case -500...(-130):
            color = .red
        case 130...500:
            color = .green
        default:
            color = .white
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(show: Card(title: "Naruto",subtitle: "",image: "LSDA2T"), currentCard: .constant(Card(title: "", subtitle: "", image: "")))
    }
}
