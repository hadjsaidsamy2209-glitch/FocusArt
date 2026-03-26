//
//  Favorites.swift
//  FocusArt
//
//  Created by Apprenant 99 on 11/03/2026.
//

import SwiftUI

struct Favorites: View {
   
    let columns = [
        GridItem(.flexible(minimum: 150, maximum: 200)),
        GridItem(.flexible(minimum: 150, maximum: 200))
    ]
    

    
    var body: some View {
        NavigationStack {
            VStack {
                HStack{
                    Text("Favoris")
                        .font(Poppins.title)
                    Spacer()
                }.padding(.top)
                .padding(.horizontal,30)
                
                ScrollView {
                    
                    LazyVGrid(columns: columns) {
                        ForEach(oeuvres.filter({$0.isLike})) { i in
                            
                            ZStack(alignment: .topTrailing) {
                                
                                NavigationLink(destination: OeuvreDescription(oeuvre: i, museum: i.lieuExpo[0])) {
                                    
                                    VStack (alignment: .center, spacing: 10) {
                                        
                                        Image(i.image)
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 153, height: 153)
                                            .cornerRadius(12)
                                            .clipped()
                                            .shadow(radius: 2, y:3)
                                        
                                        Text(i.name)
                                            .font(Poppins.body)
                                            .lineLimit(1)
                                            .frame(width: 133, alignment: .leading)
                                            .lineLimit(1)
                                        
                                        
                                    }
                                    .padding()
                                }
                                
                                Button(action: {
                                    
                                }) {
                                    Image(systemName: i.isLike ? "heart.fill" : "heart")
                                        .foregroundColor(.yellow)
                                        .padding(6)
                                        .background(.clear)
                                        .clipShape(Circle())
                                        .shadow(color: .black, radius: 0, x: 1, y: 1)
                                        .shadow(color: .black, radius: 0, x: -1, y: -1)
                                        .shadow(color: .black, radius: 0, x: 1, y: -1)
                                        .shadow(color: .black, radius: 0, x: -1, y: 1)
                                        .padding(25)
                                    
                                }
                                
                            }
                            .buttonStyle(PlainButtonStyle())
                        }
                    }
                    .padding()
                }
            }

                .background(Color.whiteBackground.ignoresSafeArea())
//                .shadow(radius: 5, y: 3)
                
            }
        }
        
    }
    



#Preview {
    Favorites()
}

