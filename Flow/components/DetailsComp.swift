//
//  Searchbar.swift
//  Flow
//
//  Created by apprenant50 on 21/10/2022.
//

import SwiftUI

struct DetailsTitle: View {
    let elementTitle: String
    let elementSubname: String
    var body: some View {
        
        ZStack{
            RoundedRectangle(cornerRadius: 50)
                .frame(width: 354, height: 60)
                .foregroundColor(Color.white)
                .shadow(color: Color("secondaryColor").opacity(0.7), radius: 4, x: -3, y: 4)
            initDetailsTitle(elementTitle: elementTitle, elementSubname: elementSubname)
        }
    }
}

struct DetailsImage: View {
    @State var isFavorited: Bool
    let image: String
    var body: some View {
        ZStack{
            Image(systemName: image)
                .resizable()
                .scaledToFit()
                .frame(width: 352, height: 196)
                .shadow(color: Color("secondaryColor").opacity(0.7), radius: 4, x: -3, y: 4)
            HStack{
                Spacer()
                
                Button(action: {
                    isFavorited.toggle()
                }, label: {
                    VStack{
                        ZStack{
                            Circle()
                                .foregroundColor(.white)
                                .frame(width: 40, height: 39)
                            if isFavorited{
                                Image(systemName: "star.fill")
                                    .resizable().scaledToFit()
                                    .frame(width: 18, height: 17)
                                    .foregroundColor(.yellow)
                                    .padding(10)
                            }else{
                                Image(systemName: "star.fill")
                                    .resizable().scaledToFit()
                                    .frame(width: 18, height: 17)
                                    .foregroundColor(.gray)
                                    .padding(10)
                            }
                        }
                        
                    }
                })
                .padding(.bottom, 200)
                
            }
        }
    }
}

struct DetailsBar: View {
    var isSeen : Bool
    let date:String
    let rate: Int
    var body: some View {
        HStack{
            if isSeen{
                Image(systemName: "eye.circle.fill")
                    .resizable()
                    .frame(width: 28, height: 28, alignment: .leading)
            }else{
                Image(systemName: "eye.slash.circle.fill")
                    .resizable()
                    .frame(width: 28, height: 28, alignment: .leading)
            }
            VStack(alignment: .leading){
                Text(date)
                    .font(.system(size: 10))
                if isSeen{
                    Text("Visionné")
                        .font(.system(size: 10))
                        .bold()
                }else{
                    Text("Non-visionné")
                        .font(.system(size: 10))
                        .bold()
                }
                
            }
            Spacer()
            switch rate{
            case 1:
                HStack{
                    Image(systemName: "star.fill")
                        .frame(width: 17, height: 18)
                        .foregroundColor(.yellow)
                    Image(systemName: "star.fill")
                        .frame(width: 17, height: 18)
                        .foregroundColor(.gray)
                    Image(systemName: "star.fill")
                        .frame(width: 17, height: 18)
                        .foregroundColor(.gray)
                    Image(systemName: "star.fill")
                        .frame(width: 17, height: 18)
                        .foregroundColor(.gray)
                    Image(systemName: "star.fill")
                        .frame(width: 17, height: 18)
                        .foregroundColor(.gray)
                }
            case 2:
                HStack{
                    Image(systemName: "star.fill")
                        .frame(width: 17, height: 18)
                        .foregroundColor(.yellow)
                    Image(systemName: "star.fill")
                        .frame(width: 17, height: 18)
                        .foregroundColor(.yellow)
                    Image(systemName: "star.fill")
                        .frame(width: 17, height: 18)
                        .foregroundColor(.gray)
                    Image(systemName: "star.fill")
                        .frame(width: 17, height: 18)
                        .foregroundColor(.gray)
                    Image(systemName: "star.fill")
                        .frame(width: 17, height: 18)
                        .foregroundColor(.gray)
                }
            case 3:
                HStack{
                    Image(systemName: "star.fill")
                        .frame(width: 17, height: 18)
                        .foregroundColor(.yellow)
                    Image(systemName: "star.fill")
                        .frame(width: 17, height: 18)
                        .foregroundColor(.yellow)
                    Image(systemName: "star.fill")
                        .frame(width: 17, height: 18)
                        .foregroundColor(.yellow)
                    Image(systemName: "star.fill")
                        .frame(width: 17, height: 18)
                        .foregroundColor(.gray)
                    Image(systemName: "star.fill")
                        .frame(width: 17, height: 18)
                        .foregroundColor(.gray)
                }
            case 4:
                HStack{
                    Image(systemName: "star.fill")
                        .frame(width: 17, height: 18)
                        .foregroundColor(.yellow)
                    Image(systemName: "star.fill")
                        .frame(width: 17, height: 18)
                        .foregroundColor(.yellow)
                    Image(systemName: "star.fill")
                        .frame(width: 17, height: 18)
                        .foregroundColor(.yellow)
                    Image(systemName: "star.fill")
                        .frame(width: 17, height: 18)
                        .foregroundColor(.yellow)
                    Image(systemName: "star.fill")
                        .frame(width: 17, height: 18)
                        .foregroundColor(.gray)
                }
            case 5:
                HStack{
                    Image(systemName: "star.fill")
                        .frame(width: 17, height: 18)
                        .foregroundColor(.yellow)
                    Image(systemName: "star.fill")
                        .frame(width: 17, height: 18)
                        .foregroundColor(.yellow)
                    Image(systemName: "star.fill")
                        .frame(width: 17, height: 18)
                        .foregroundColor(.yellow)
                    Image(systemName: "star.fill")
                        .frame(width: 17, height: 18)
                        .foregroundColor(.yellow)
                    Image(systemName: "star.fill")
                        .frame(width: 17, height: 18)
                        .foregroundColor(.yellow)
                }
                
            default:
                Image(systemName: "star.fill")
                    .frame(width: 17, height: 18)
                    .foregroundColor(.gray)
                Image(systemName: "star.fill")
                    .frame(width: 17, height: 18)
                    .foregroundColor(.gray)
                Image(systemName: "star.fill")
                    .frame(width: 17, height: 18)
                    .foregroundColor(.gray)
                Image(systemName: "star.fill")
                    .frame(width: 17, height: 18)
                    .foregroundColor(.gray)
                Image(systemName: "star.fill")
                    .frame(width: 17, height: 18)
                    .foregroundColor(.gray)
            }
        }.padding(5)
    }
}

struct OpenSafari: View {
    var url:String
    var image:String
    var body: some View {
        Button(action: {
            if let url = URL(string: url) {
                UIApplication.shared.open(url)
            }
        }, label: {
            /*
             Image(image)
             .frame(width: 147, height: 37)
             */
            Text(image)
            
        }).buttonStyle(RoundedButtonColored())
            .frame(width: 147, height: 37)
            .shadow(color: Color("secondaryColor").opacity(0.3), radius: 4, x: -3, y: 4)
    }
}

struct DetailsInfosWithTrailer: View {
    let description: String
    let url:String
    let urlName:String
    let durationClip:String
    
    var body: some View {
        
        ZStack{
            gradientRectangle()
                .shadow(color: Color("secondaryColor").opacity(0.7), radius: 4, x: -3, y: 4)
            VStack{
                HStack{
                    Text("Informations supplémentaires")
                        .bold()
                        .font(.system(size: 12))
                        .foregroundColor(Color("secondaryColor"))
                    Spacer()
                }
                Text(description)
                    .font(.system(size: 11))
                    .frame(width: 380, height: 119, alignment: .top)
                    .lineSpacing(8)
                    .foregroundColor(Color("secondaryColor"))
                
                HStack{
                    Button(action: {
                        if let url = URL(string: url) {
                            UIApplication.shared.open(url)
                        }
                    }, label: {
                        ZStack(alignment: .bottomLeading){
                            Image(systemName: "film")
                                .font(.system(size: 85))
                                .foregroundColor(Color.white)
                            
                            RoundedRectangle(cornerRadius: 10)
                                .opacity(0.1)
                                .foregroundColor(.black)
                                .frame(width: 35, height: 20)
                                .padding(5.5)
                            
                            Text(durationClip).foregroundColor(.black)
                                .font(.system(size: 12))
                                .padding(9)
                            
                        }.shadow(color: Color("secondaryColor").opacity(0.7), radius: 4, x: -3, y: 4)
                    })
                    VStack(alignment: .leading, spacing: 12){
                        Text(urlName)
                            .font(.system(size: 12))
                            .bold()
                            .foregroundColor(Color("secondaryColor"))
                        
                        Text(durationClip)
                            .font(.system(size: 10))
                            .foregroundColor(Color("secondaryColor"))
                    }
                }.frame(width: 390, height: 119)
            }.padding(7)
        }.scaledToFit()
    }
}

struct DetailCasting: View {
    let actorName1:String
    let personnage1:String
    let actorName2:String
    let personnage2:String
    let actorName3:String
    let personnage3:String
    let actorName4:String
    let personnage4:String
    let actorName5:String
    let personnage5:String
    let actorName6:String
    let personnage6:String
    var body: some View {
        VStack{
            
            HStack{
                VStack{
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 100, height: 100)
                        .shadow(color: Color("secondaryColor").opacity(0.7), radius: 4, x: -3, y: 4)
                    Text(actorName1)
                        .bold()
                        .font(.system(size: 11))
                    Text(personnage2)
                        .font(.system(size: 10))
                }
                VStack{
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 100, height: 100)
                        .shadow(color: Color("secondaryColor").opacity(0.7), radius: 4, x: -3, y: 4)
                    Text(actorName2)
                        .bold()
                        .font(.system(size: 11))
                    Text(personnage2)
                        .font(.system(size: 10))
                }.padding()
                VStack{
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 100, height: 100)
                        .shadow(color: Color("secondaryColor").opacity(0.7), radius: 4, x: -3, y: 4)
                    Text(actorName3)
                        .bold()
                        .font(.system(size: 11))
                    Text(personnage3)
                        .font(.system(size: 10))
                }
            }
            HStack{
                VStack{
                    RoundedRectangle(cornerRadius: 20)
                        .shadow(color: Color("secondaryColor").opacity(0.7), radius: 4, x: -3, y: 4)
                        .frame(width: 100, height: 100)
                    Text(actorName1)
                        .bold()
                        .font(.system(size: 11))
                    Text(personnage2)
                        .font(.system(size: 10))
                }
                VStack{
                    RoundedRectangle(cornerRadius: 20)
                        .shadow(color: Color("secondaryColor").opacity(0.7), radius: 4, x: -3, y: 4)
                        .frame(width: 100, height: 100)
                    Text(actorName2)
                        .bold()
                        .font(.system(size: 11))
                    Text(personnage2)
                        .font(.system(size: 10))
                }.padding()
                VStack{
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 100, height: 100)
                        .shadow(color: Color("secondaryColor").opacity(0.7), radius: 4, x: -3, y: 4)
                    Text(actorName3)
                        .bold()
                        .font(.system(size: 11))
                    Text(personnage3)
                        .font(.system(size: 10))
                }
            }
            
        }
    }
}

struct initDetailsTitle: View {
    let elementTitle: String
    let elementSubname:String
    var body: some View {
        VStack{
            Text(elementTitle)
                .bold().font(.system(size: 15))
                .foregroundColor(Color("secondaryColor"))
            Text(elementSubname)
                .font(.system(size: 15))
                .foregroundColor(Color("secondaryColor"))
        }
    }
}

struct DetailsInfos: View {
    let description: String
    
    var body: some View {
        
        ZStack{
            gradientRectangle()
                .shadow(color: Color("secondaryColor").opacity(0.7), radius: 4, x: -3, y: 4)
            VStack{
                HStack{
                    Text("Informations supplémentaires")
                        .foregroundColor(Color("secondaryColor"))
                        .bold()
                        .font(.system(size: 12))
                    
                    Spacer()
                }
                Text(description)
                    .font(.system(size: 11))
                    .frame(width: 380, height: 119, alignment: .top)
                    .lineSpacing(8)
                    .foregroundColor(Color("secondaryColor"))
            }.padding(5)
        }
    }
}
