

import SwiftUI

struct VignetteTrending: View {
    
    @ObservedObject var viewModelTrending = TrendingViewModel()
    
    var gradientTop: Color = Color(red: 0 / 255, green: 70 / 255, blue: 67 / 255)
    var gradientBottom: Color = Color(red: 149 / 255, green: 191 / 255, blue: 181 / 255)
    
    let columns = [
        GridItem(.fixed(100)),
        GridItem(.fixed(100)),
        GridItem(.fixed(100))
    ]
    
    var body: some View {
        
        VStack{
            Text("Les plus regardés sur Netflix").bold().font(.title2).offset(x: -10, y: 15)
                .foregroundColor(Color("secondaryColor"))
                .font(.system(size: 20))
                .padding(.bottom, -20)

            
            ZStack {
                LazyVGrid(columns: columns) {
                    ForEach(viewModelTrending.trendings) { trending in
                        ZStack(alignment: .bottomTrailing) {
                            Image(trending.image ?? "test")
                                .resizable()
                                .frame(width: 97, height: 145)
                                .cornerRadius(15)
                                .shadow(color: Color("secondaryColor").opacity(0.7), radius: 4, x: -3, y: 4)
                                .padding(1)
                            SelectedButton(trending: trending)
                                .padding(5)
                                .foregroundColor(Color("titleBackgroundColor"))
                        }
                    }
                }
                .frame(width: 352, height: 480)
                .padding(.top, 20)
                .onAppear {
                    Task {
                        await viewModelTrending.fetchUsers()
                    }
                }
            }
            .frame(width: 352, height: 530)
        }
        .onAppear {
            Task {
                await viewModelTrending.fetchUsers()
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
                .frame(height: 550)
        )
    }
}

struct VignetteTrending_Previews: PreviewProvider {
    static var previews: some View {
        VignetteTrending()
    }
}

struct SelectedButton: View {
    @ObservedObject var trending : Trending
    var body: some View {
        Button {
            trending.isSelected.toggle()
        } label: {
            Image(systemName: trending.isSelected ? "checkmark.circle.fill" : "checkmark.circle")
                .font(.largeTitle)
        }
    }
}

