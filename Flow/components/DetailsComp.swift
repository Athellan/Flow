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
            Image(image)
                .resizable()
                .scaledToFit()
                .cornerRadius(10)
                .shadow(color: Color("secondaryColor").opacity(0.4), radius: 4, x: -3, y: 4)
                .frame(width: 352, height: 196)
                
            
            HStack{
                VStack{
                Button(action: {
                    isFavorited.toggle()
                }, label: {
                    VStack{
                        ZStack{
                            Circle()
                                .foregroundColor(.white)
                                .frame(width: 40, height: 40)
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
                    }.padding(.bottom, 190)
                })

                }
            }.padding(.leading, 330)
                

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
                    .foregroundColor(Color("buttonColor"))
                    .frame(width: 28, height: 28, alignment: .leading)
            }else{
                Image(systemName: "eye.slash.circle.fill")
                    .resizable()
                    .foregroundColor(Color("buttonColor"))
                    .frame(width: 28, height: 28, alignment: .leading)
            }
            VStack(alignment: .leading){
                Text(date)
                    .font(.system(size: 10))
                    .foregroundColor(Color("secondaryColor"))
                if isSeen{
                    Text("Visionné")
                        .font(.system(size: 10))
                        .foregroundColor(Color("secondaryColor"))
                        .bold()
                }else{
                    Text("Non-visionné")
                        .font(.system(size: 10))
                        .foregroundColor(Color("secondaryColor"))
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
        }.frame(width: 330)
            .padding(.bottom, 20)
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
    let image: String
    let description: String
    let url:String
    let urlName:String
    let durationClip:String
    
    var body: some View {
        
        ZStack{
            gradientRectangle()
                .shadow(color: Color("secondaryColor").opacity(0.7), radius: 4, x: -3, y: 4)
                .frame(width: 352, height: 300)
            
            VStack(alignment: .leading){
                
                    Text("Informations supplémentaires")
                        .bold()
                        .font(.system(size: 12))
                        .padding(.bottom, 10)
                        .padding(.top, 10)
                        .foregroundColor(Color("secondaryColor"))
                    
                
                Text(description)
                    .font(.system(size: 11))
                    .frame(width: 300)
                    .lineSpacing(8)
                    .foregroundColor(Color("secondaryColor"))
                
                SimpleVideoButton(image:image, durationClip: durationClip, url: url, urlName: urlName)
                
            }.frame(width: 352)
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
    let title:String
    let description: String
    
    var body: some View {
        
        ZStack{
            gradientRectangle()
                .shadow(color: Color("secondaryColor").opacity(0.7), radius: 4, x: -3, y: 4)
            VStack{
                HStack{
                    Text(title)
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
            }.padding(5)
        }
    }
}

struct SimpleVideoButton: View {
    let image: String
    let durationClip: String
    let url: String
    let urlName: String
    var body: some View {
        HStack{
            Button(action: {
                if let url = URL(string: url) {
                    UIApplication.shared.open(url)
                }
            }, label: {
                ZStack(alignment: .bottomLeading){
                    Image(image)
                        .resizable()
                        .frame(width: 155, height: 89)
                        .cornerRadius(10)
                        .shadow(color: Color("secondaryColor").opacity(0.7), radius: 4, x: -3, y: 4)
                    
                    Text(durationClip)
                        .font(.system(size: 12))
                        .padding(9)
                        .foregroundColor(.white)
                    
                }
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
        }.frame(width: 320, height: 119)
    }
}
