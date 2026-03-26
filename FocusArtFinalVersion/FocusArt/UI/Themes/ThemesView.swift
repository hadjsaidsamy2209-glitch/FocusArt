//
//  ThemesView.swift
//  FocusArt
//
//  Created by Apprenant 83 on 12/03/2026.
//

import SwiftUI

struct ThemesView: View {
    
    @State var searchText = ""
    @FocusState var isSearchFocus: Bool
    
   
    let themeCategories = [categories[3], categories[2], categories[1]]
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.whiteBackground.ignoresSafeArea()
                
                VStack(spacing: 0) {
                    
                  
                    SearchBarView(isFocused: _isSearchFocus, searchText: $searchText )
                        .padding(.top, 10)
                    
                    if searchText.isEmpty {
                        
                       
                        ScrollView(.vertical) {
                            VStack(spacing: 24) {
                                ForEach(themeCategories) { categorie in
                                    
                                    VStack(alignment: .leading, spacing: 10) {
                                        
                                       
                                        HStack {
                                            Text(categorie.name)
                                                .font(Poppins.caption)
                                                .fontWeight(.bold)
                                                .foregroundStyle(.primary)
                                            
                                            Spacer()
                                            
                                            NavigationLink(destination: CategorieView(categorie: categorie)) {
                                                Image(systemName: "arrow.right")
                                                    .padding(8)
                                                    .background(Color.gray.opacity(0.15))
                                                    .clipShape(Circle())
                                                    .foregroundStyle(.black)
                                            }
                                        }
                                        .padding(.horizontal, 20)
                                        
                                     
                                        ScrollView(.horizontal) {
                                            HStack(spacing: 12) {
                                                ForEach(oeuvres.filter({ $0.categorie.name == categorie.name }).prefix(5)) { oeuvre in
                                                    NavigationLink(destination: OeuvreDescription(oeuvre: oeuvre, museum: museums[0])) {
                                                        VStack(alignment: .leading, spacing: 4) {
                                                            Image(oeuvre.image)
                                                                .resizable()
                                                                .scaledToFill()
                                                                .frame(width: 133, height: 133)
                                                                .cornerRadius(12)
                                                                .clipped()
                                                            Text(oeuvre.name)
                                                                .font(Poppins.body)
//                                                                .fontWeight(.bold)
                                                                .foregroundStyle(.primary)
                                                                .lineLimit(1)
                                                                
                                                        }
                                                    }
                                                    .buttonStyle(PlainButtonStyle())
                                                }
                                            }
                                            .padding(.horizontal, 20)
                                        }
                                        .scrollIndicators(.hidden)
                                    }
                                }
                            }
                            .padding(.top, 16)
                            .padding(.bottom, 100)
                        }
                        
                    } else {
                        
                     
                        ScrollView {
                            LazyVGrid(columns: [GridItem(.flexible(minimum: 150, maximum: 200)), GridItem(.flexible(minimum: 150, maximum: 200))], spacing: 20) {
                                ForEach(oeuvres.filter({ $0.name.localizedCaseInsensitiveContains(searchText)})) { oeuvre in
                                    NavigationLink(destination: OeuvreDescription(oeuvre: oeuvre, museum: museums[0])) {
                                        VStack(alignment: .center, spacing: 6) {
                                            Image(oeuvre.image)
                                                .resizable()
                                                .scaledToFill()
                                                .frame(width: 153, height: 153)
                                                .cornerRadius(12)
                                                .clipped()
                                                .shadow(radius: 2, y:3)
                                            Text(oeuvre.name)
                                                .font(.caption)
                                                .fontWeight(.bold)
                                                .foregroundStyle(.primary)
                                                .lineLimit(1)
                                            
                                        }
                                    }
                                    .buttonStyle(PlainButtonStyle())
                                }
                            }
                            .padding()
                        }
                    }
                }
                .onTapGesture {
                    isSearchFocus = false
                }
            }
        }
    }
}

#Preview {
    ThemesView()
}
