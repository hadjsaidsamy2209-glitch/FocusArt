//
//  MapView.swift
//  FocusArt
//
//  Created by Apprenant 74 on 13/03/2026.
//

import Foundation
import SwiftUI
import MapKit

private var marseille = MapCameraPosition.region(
    MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 43.303504, longitude: 5.368682),
        span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
    )
)

struct MapView: View {
    
    var museumToOpen: Museum? = nil
    var isShowingBackArrow: Bool
    
    @State private var selectedLocation: Museum? = nil
    @State private var isShowingSheet: Bool = true
    @State private var cameraPosition: MapCameraPosition = marseille
    @Environment(\.dismiss) var dismiss

    var body: some View {
        MapReader { proxy in
            Map(position: $cameraPosition) {
                ForEach(museums) { location in
                    Annotation(location.nom, coordinate: location.localisation) {
                        Button {
                            selectedLocation = location
                            withAnimation {
                                cameraPosition = .region(
                                    MKCoordinateRegion(
                                        center: location.localisation,
                                        span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
                                    )
                                )
                            }
                        } label: {
                            ZStack {
                                Image("pin")
                                    .resizable()
                                    .frame(maxWidth: 15, maxHeight: 20)
                            }
                        }
                    }
                }
            }
            .overlay(alignment: .topLeading) {
                if isShowingBackArrow {
                    Button {
                        dismiss()
                        selectedLocation = nil
                    } label: {
                        Image(systemName: "arrow.left")
                            .foregroundStyle(.white)
                            .padding(10)
                            .background(.black.opacity(0.6))
                            .clipShape(Circle())
                    }
                    .padding()
                }
            }
            .sheet(isPresented: $isShowingSheet) {
                if let location = selectedLocation {
                    ScrollView{
                        VStack {
                            
                            Text(location.nom)
                                .font(Poppins.title)
                                .foregroundStyle(.white)
                                .padding()
                            Spacer()
                            Image(location.image)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 370, height: 300)
                                .cornerRadius(12)
                                .clipped()
                            Spacer()
                            HStack {
                                Spacer().frame(maxWidth: 10)
                                Text(location.description)
                                    .font(Poppins.description)
                                    .foregroundStyle(.white)
                                    .lineSpacing(10)
                                    .padding(.bottom)
//                                    .padding(.horizontal,15)
                                 
                                Spacer()
                                
                            }.padding(.top)
                                .padding(.horizontal,15)

                            Spacer()
                        }
                        .presentationDetents([.fraction(0.2), .medium, .large])
                        .interactiveDismissDisabled(true)
                        .presentationBackground(.scrolloeuvre)
                        .presentationBackgroundInteraction(.enabled(upThrough: .fraction(0.2)))
                    }
                } else {
                    ScrollView {
                        
                        HStack{
                           
                            Text("Musées")
                            .font(Poppins.caption)
                            .foregroundStyle(.white)
                        }
                        .padding(.top,30)
                        
                        VStack(spacing: 12) {
                            ForEach(museums.prefix(5)) { museum in
                                ZStack {
                                    RoundedRectangle(cornerRadius: 15)
                                        .foregroundStyle(.scrolloeuvre)
                                    Button {
                                        selectedLocation = museum
                                        withAnimation {
                                            cameraPosition = .region(
                                                MKCoordinateRegion(
                                                    center: museum.localisation,
                                                    span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
                                                )
                                            )
                                        }
                                    } label: {
                                        VStack (spacing : 16){
                                            MuseumCard(museum: museum)
                                                .padding(.horizontal)
                                                
                                        }
                                    }
                                }
                                .padding()
                            }
                        }
                        .padding()
                    }
                    .presentationDetents([.fraction(0.2), .medium, .large])
                    .interactiveDismissDisabled(true)
                    .presentationBackground(.scrolloeuvre)
                    .presentationBackgroundInteraction(.enabled(upThrough: .fraction(0.2)))
                }
            }
            .onAppear {
                if let museum = museumToOpen {
                    selectedLocation = museum
                    withAnimation {
                        cameraPosition = .region(
                            MKCoordinateRegion(
                                center: museum.localisation,
                                span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
                            )
                        )
                    }
                }
            }
            }
        }
    }


#Preview {
    MapView(isShowingBackArrow: false)
}
