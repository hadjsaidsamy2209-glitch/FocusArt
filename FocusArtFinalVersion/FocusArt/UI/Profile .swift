//
//  Profile.swift
//  FocusArt
//
//  Created by Apprenant 99 on 13/03/2026.
//

import SwiftUI

struct Profile: View {
    
    let buttons = [
        
           "Informations personnelles",
           "Notifications",
           "Préferences de contact",
           "Mes avantages",
           "Cookies et communication",
       ]
    
    let columns = [
           GridItem(.flexible(), spacing: 20),
           GridItem(.flexible(), spacing: 20)
       ]
    
    
    var body: some View {
        ZStack {
            Color(.whiteBackground)
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                
                
                Text("Profil")
                    .font(Poppins.title)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top)
                    .padding(.horizontal)
                  
                
                ScrollView {
                ZStack {
                    
                        Circle()
                        .fill(Color.gray.opacity(0.5))
                            .frame(width: 140, height: 180)
                        
                        Image(systemName: "person.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 90, height: 150)
                            .foregroundColor(.black.opacity(0.8))
                   
                        
                        Button(action: {
                        }) {
                            Image(systemName: "pencil")
                                .font(.system(size: 12, weight: .bold))
                                .foregroundColor(.yellowIcon)
                                .padding(8)
                                .background(Color.white)
                                .clipShape(Circle())
                        }
                        .offset(x: 40, y: 40)
                    
                    
                    
                    
                    }
                
                Text("Bonjour !")
                    .font(Poppins.caption)
                    .fontWeight(.bold)
                   
                   
                
                
                    VStack(spacing: 5) {
                        
                        
                        ForEach(buttons, id: \.self) { title in
                            Button(action: {
                                
                            }) {
                                Text(title)
                                    .font(Poppins.button)
                                    .foregroundColor(.white)
                                    .multilineTextAlignment(.center)
                                    .padding()
                                    .frame(maxWidth: .infinity)
                                    .background(Color.black)
                                    .cornerRadius(25)
                                    .lineLimit(1)
                                
                            }
                        }
                        
                        
                        
                        .padding()
                        
                        
                        .padding(.horizontal)
                        
                        Spacer()
                    }
                    .background(Color.gray.opacity(0.5))
                    .cornerRadius(40)
                    .padding()
                }
                    
                    
//                    VStack(alignment: .leading, spacing: 5) {
//                        Button(action: {
//                            
//                        }) {
//                            
//                            Text("AIDES & SERVICE CLIENT")
//                                .font(Poppins.body)
//                                .fontWeight(.bold)
//                                .padding()
//                            
//                            Divider()
//
//                        
//                            Button(action: {
//                                
//                            }) {
//                                
//                                Text("COPYRIGHT")
//                                    .font(Poppins.body)
//                                    .fontWeight(.bold)
//                                    .padding()
//                            }
//                            .buttonStyle(PlainButtonStyle())
//                            .padding(.horizontal)
//                            .frame(maxWidth: .infinity, alignment: .leading)
//                              
//                        }
//                        .buttonStyle(PlainButtonStyle())
//                        .padding()
//                    }
                    
                }
                
            }
            
        }
        
    
}

#Preview {
    Profile()
}
