//
//  LocationDetailView.swift
//  Flow
//
//  Created by Apprenant 63 on 25/10/2022.
//

import SwiftUI
import MapKit

struct LocationDetailView: View {
    
    @EnvironmentObject private var vm: LocationsViewModel
    @State private var isShowingChatView = false
    
    let location: Location
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    imageSection
                        .shadow(color: Color("secondaryColor").opacity(0.7), radius: 4, x: -3, y: 4)
                    
                    VStack {
                        titleSection
                        Divider()
                        descriptionSection
                            .padding(.vertical, 20)
                        Divider()
                    }.frame(width: 352)
                    
                    
                    ZStack{
                        mapLayer
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 20)
                        chatButton
                            .padding(.leading, 250)
                            .padding(.top, 250)
                    }.padding(.top, 20)
                        .padding(.bottom, 50)
                    
                    
                }
            }
            .ignoresSafeArea()
            .background(Color("primaryColor"))
            .overlay(backButton, alignment: .topLeading)
        }
    }
}




struct LocationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LocationDetailView(location: LocationsDataService.locations.first!)
            .environmentObject(LocationsViewModel())
    }
}

extension LocationDetailView {
    
    private var imageSection: some View {
        TabView {
            ForEach(location.imagesNames, id: \.self) {
                Image($0)
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width)
                    .clipped()
            }
        }
        .frame(height: 500)
        .tabViewStyle(PageTabViewStyle())
    }
    
    private var titleSection: some View {
            VStack {
                HStack {
                    VStack {
                        Text(location.name)
                            .bold()
                            .font(.system(size: 17))
                        Text(location.cityName)
                            .font(.system(size: 17))
                    }
                    .foregroundColor(Color("secondaryColor"))
                }
                .background(RoundedRectangle(cornerRadius: 50)
                    .frame(width: 354, height: 60)
                    .foregroundColor(Color("titleBackgroundColor"))
                    .shadow(color: Color("secondaryColor").opacity(0.7), radius: 4, x: -3, y: 4))
                .padding(.top, 30)
                .padding(.bottom, 30)
            }
        }
    
    private var descriptionSection: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text(location.description)
                .font(.system(size: 11))
                .lineSpacing(8)
                .foregroundColor(Color("secondaryColor"))
            
            if let url = URL(string: location.link) {
                Link("**+ sur \(location.name)**", destination: url)
                    .font(.system(size: 11))
                    
            }
            
        }
    }
    
    private var mapLayer: some View {
        Map(coordinateRegion: .constant(MKCoordinateRegion(
            center: location.coordinates,
            span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))),
            annotationItems: [location]) { location in
            MapAnnotation(coordinate: location.coordinates) {
                LocationMapAnnotationView()
                    .shadow(radius: 10)
            }
        }
            .allowsHitTesting(false)
            .aspectRatio(1, contentMode:  .fit)
            .cornerRadius(30)
    }
    
    private var backButton: some View {
        Button {
            vm.sheetLocation = nil
        } label: {
            Image(systemName: "xmark")
                .font(.headline)
                .padding(16)
                .foregroundColor(Color("secondaryColor"))
                .background(.thickMaterial)
                .cornerRadius(10)
                .shadow(radius: 4)
                .padding()
        }
    }
    
    private var chatButton: some View {
        VStack {
            NavigationLink(destination: ChatView(), isActive: $isShowingChatView) { EmptyView() }
            Button {
                isShowingChatView = true
            } label: {
                Image(systemName: "bubble.right.circle")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .background(Color("opacityColor"))
                    .foregroundColor(Color("secondaryColor"))
                    .cornerRadius(50)
//                    .shadow(radius: 4)
                    .padding()
            }
        }
    }
}

