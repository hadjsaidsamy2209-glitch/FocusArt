//
//  hScrollView.swift
//  FocusArt
//
//  Created by Apprenant 108 on 11/03/2026.
//

import SwiftUI

struct hScrollView: View {
    @State private var tendances : [Oeuvre] = []
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.whiteBackground)
                    .ignoresSafeArea()
                
                ScrollView {
                    VStack(spacing: 10) {
                        Text("Focus Art ")
                            .font(Poppins.title)
                            .fontWeight(.black)
                            .frame(width: 350,alignment: .leading)
                        
                        
                        HStack() {
                            Text("Tendances")
                            
                                .font(Poppins.caption)
                                .fontWeight(.bold)
                                .foregroundStyle(.primary)
                            //                                .shadow(radius: 2, y:3)
                            
                            Spacer()
                            
                        }.padding(.top)
                        
                        TabView {
                            ForEach(tendances) { oeuvre in
                                NavigationLink(destination: OeuvreDescription(oeuvre: oeuvre, museum: museums[0])) {
                                    Image(oeuvre.image)
                                        .resizable()
                                        .scaledToFill()
                                }
                            }
                        }
                        .frame(width: .infinity, height : 181)
                        .cornerRadius(10)
                        .tabViewStyle(.page(indexDisplayMode: .always))
                        .shadow(radius: 2, y:3)
                        .onAppear {
                            tendances = randomTendances()
                        }
                        
                        
                        HStack() {
                            Text("Pour Vous")
                                .font(Poppins.caption)
                                .fontWeight(.bold)
                                .foregroundStyle(.primary)
                            
                            Spacer()
                            
                        }.padding(.top)
                        
                        ScrollView(.horizontal){
                            HStack(spacing: 12){
                                NavigationLink(destination: OeuvreDescription(oeuvre: oeuvres[15], museum: museums[2])) {
                                    VStack(alignment: .leading, spacing: 4) {
                                        Image(oeuvres[15].image)
                                            .resizable()
                                            .frame(width: 133, height: 133)
                                            .cornerRadius(12)
                                            .shadow(radius: 2, y:3)
                                        Text(oeuvres[15].name)
                                            .font(Poppins.body)
                                            .lineLimit(1)
                                            .frame(width: 133, alignment: .leading)
                                    }
                                    
                                    //
                                }.buttonStyle(PlainButtonStyle())
                                
                                NavigationLink(destination: OeuvreDescription(oeuvre: oeuvres[18], museum: museums[2])) {
                                    VStack(alignment: .leading, spacing: 4) {
                                        Image(oeuvres[18].image)
                                            .resizable()
                                            .frame(width: 133, height: 133)
                                            .cornerRadius(12)
                                            .shadow(radius: 2, y:3)
                                        Text(oeuvres[18].name)
                                            .font(Poppins.body)
                                            .lineLimit(1)
                                            .frame(width: 133, alignment: .leading)
                                    }
                                    //
                                }.buttonStyle(PlainButtonStyle())
                                NavigationLink(destination: OeuvreDescription(oeuvre: oeuvres[17], museum: museums[2])) {
                                    VStack(alignment: .leading, spacing: 4) {
                                        Image(oeuvres[17].image)
                                            .resizable()
                                            .frame(width: 133, height: 133)
                                            .cornerRadius(12)
                                            .shadow(radius: 2, y:3)
                                        Text(oeuvres[17].name)
                                            .font(Poppins.body)
                                            .lineLimit(1)
                                            .frame(width: 133, alignment: .leading)
                                    }
                                    //
                                }.buttonStyle(PlainButtonStyle())
                                
                                NavigationLink(destination: OeuvreDescription(oeuvre: oeuvres[6], museum: museums[2])) {
                                    VStack(alignment: .leading, spacing: 4) {
                                        Image(oeuvres[6].image)
                                            .resizable()
                                            .frame(width: 133, height: 133)
                                            .cornerRadius(12)
                                            .shadow(radius: 2, y:3)
                                        Text(oeuvres[6].name)
                                            .font(Poppins.body)
                                            .lineLimit(1)
                                            .frame(width: 133, alignment: .leading)
                                    }
                                    //
                                }.buttonStyle(PlainButtonStyle())
                                
                                NavigationLink(destination: OeuvreDescription(oeuvre: oeuvres[7], museum: museums[2])) {
                                    VStack(alignment: .leading, spacing: 4) {
                                        Image(oeuvres[7].image)
                                            .resizable()
                                            .frame(width: 133, height: 133)
                                            .cornerRadius(12)
                                            .shadow(radius: 2, y:3)
                                        Text(oeuvres[7].name)
                                            .font(Poppins.body)
                                            .lineLimit(1)
                                            .frame(width: 133, alignment: .leading)
                                    }
                                    
                                }.buttonStyle(PlainButtonStyle())
                                
                                
                            }
                        }
                        .scrollIndicators(.hidden)
                        HStack {
                            Text("Près de chez vous")
                                .font(Poppins.caption)
                                .fontWeight(.bold)
                                .foregroundStyle(.primary)
                            
                            Spacer()
                            
                            NavigationLink(destination: MapView(isShowingBackArrow: false)) {
                                Image(systemName: "arrow.right")
                                    .padding(8)
                                    .background(Color.gray.opacity(0.15))
                                    .clipShape(Circle())
                                    .foregroundStyle(.black)
                            }
                        }
                        .padding(.top)
                        
                        TabView {
                            ForEach(0..<4) { index in
                                NavigationLink(destination: MapView(museumToOpen: museums[index], isShowingBackArrow: false)) {
                                    
                                    LinearGradient(colors: [.black.opacity(0.7), .clear], startPoint: .top, endPoint: .bottom)
                                        .frame(height: 80)
                                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                                        .background(
                                            Image(museums[index].image)
                                                .resizable()
                                                .scaledToFill()
                                        )
                                        .overlay(alignment: .topLeading) {
                                            Text(museums[index].nom)
                                                .font(Poppins.caption)
                                                .foregroundStyle(.white).opacity(0.8)
                                                .lineLimit(1)
                                                .padding(.leading, 8)
                                                .padding(.top, 8)
                                        }
                                    
                             
                                }
                            }
                        }
                        .frame(width: .infinity, height: 181)
                        .cornerRadius(10)
                        .tabViewStyle(.page(indexDisplayMode: .always))
                        .shadow(radius: 2, y: 4)
                    }
                }
                .padding(.horizontal, 20)
            }
        }
    }
    
    private func randomTendances() -> [Oeuvre] {
        let pool = [oeuvres[20], oeuvres[1], oeuvres[9], oeuvres[6], oeuvres[7],
                    oeuvres[8], oeuvres[11], oeuvres[24], oeuvres[1], oeuvres[28],oeuvres[3], oeuvres[23], oeuvres[30], oeuvres[7], oeuvres[24],oeuvres[13], oeuvres[17], oeuvres[8], oeuvres[22], oeuvres[19]]
        return Array(pool.shuffled().prefix(4))
    }
}

#Preview {
    hScrollView()
}
