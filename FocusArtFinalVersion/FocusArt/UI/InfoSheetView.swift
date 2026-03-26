//
//  InfoSheetView.swift
//  FocusArt
//
//  Created by Apprenant 82 on 12/03/2026.
//

import SwiftUI

struct InfoSheetView: View {
    var oeuvre: Oeuvre
    var museum : Museum
    @State private var selectedSimilaire: Oeuvre? = nil
    @State private var isFavorite: Bool
    @State private var showMap = false
    
    init(oeuvre: Oeuvre, museum: Museum) {
        self.oeuvre = oeuvre
        self.museum = museum
        _isFavorite = State(initialValue: oeuvre.isLike)
    }
    
    var body: some View {

            ScrollView{
                VStack {
                    
                    HStack{
                        
                        Text("• \(oeuvre.name)")
                            .font(Poppins.title)
                            .foregroundStyle(.white)
                        Spacer()
                        Button {
                            isFavorite.toggle()
                        } label: {
                            Image(systemName: isFavorite ? "heart.fill" : "heart")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30)
                                .fontWeight(.black)
                                .foregroundStyle(.yellowIcon)
                        }.padding(.vertical)
                    }
                    .padding(.vertical)
                    Text(oeuvre.description)
                        .font(Poppins.body)
                        .foregroundStyle(.white)
                        .lineSpacing(7)
                        .padding(.bottom)
                    HStack {
                        Text("Oeuvres similaires")
                            .font(Poppins.subTitle)
                            .fontWeight(.bold)
                            .foregroundStyle(.white)
                        Spacer()
                    }
                    
                    
                    ScrollView(.horizontal){
                        HStack{
                            ForEach(oeuvres.filter({ $0.categorie.name == oeuvre.categorie.name && $0.id != oeuvre.id }).prefix(4)) { similaire in
                                Button {
                                    selectedSimilaire = similaire
                                } label: {
                                    Image(similaire.image)
                                        .resizable()
                                        .frame(width: 133, height: 133)
                                        .cornerRadius(12)
                                        .shadow(radius: 2, y: 5)
                                }
                            }
                        }
                    }.fullScreenCover(item: $selectedSimilaire) { similaire in
                        OeuvreDescription(oeuvre: similaire, museum: museum, isShowingBackArrow: true)
                    }
                    .scrollIndicators(.hidden)
                    
                    
                    
                    Spacer()
                    
                    Button {
                        showMap = true
                    } label: {
                        Text("Découvrir \(museum.nom)")
                            .font(Poppins.body)
                    }
                    .tint(.yellowIcon)
                    .foregroundStyle(.black)
                    .fontWeight(.semibold)
                    .buttonStyle(.borderedProminent)
                    .controlSize(.large)
                    .padding()
                    .fullScreenCover(isPresented: $showMap) {
                        MapView(museumToOpen: museum, isShowingBackArrow: true)
                    }
                }
                .padding()
                
            }
        }
        
    }
    

    

#Preview {
    InfoSheetView(oeuvre: oeuvres[0],museum: museums[2])
        .background(.black)
}
