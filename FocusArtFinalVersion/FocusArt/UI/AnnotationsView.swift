//
//  AnnotationsView.swift
//  FocusArt
//
//  Created by Apprenant 82 on 13/03/2026.
//

import SwiftUI

struct AnnotationsView: View {
    var annotation: Note
    var oeuvreDetail: Oeuvre
    @Binding var isInfoOpen: Bool
    
    var body: some View {
        ZStack{
            Image(oeuvreDetail.image)
                    .resizable()
                    .scaledToFill()
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .allowsHitTesting(false)
                    .overlay(
                        GeometryReader { geometry in
                            
                            Image("pulse")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundColor(.white)
                                .shadow(color: .black.opacity(0.8), radius: 4)
                                .position(x: geometry.size.width * annotation.x, y: geometry.size.height * annotation.y)
                        }
                    )
            VStack(spacing: 14){
                Text("Détails")
                    .font(Poppins.body)
                    .fontWeight(.bold)
                    .foregroundStyle(.secondary)
                    .padding(.horizontal, 45)
                    .padding(.vertical, 10)
                    .glassEffect(.regular, in: Capsule())
                    .padding(.top,80)
                
                
                Spacer()
//                ScrollView{
                
                Text(annotation.texte)
                    .font(Poppins.body)
                    .fontWeight(.bold)
                    .foregroundStyle(.secondary)
                    .multilineTextAlignment(.leading)
                    .frame(width: 260)
                    .padding(.horizontal, 15)
                    .padding()
                    .glassEffect(.regular, in: .rect(cornerRadius: 15))
                    .padding(.bottom, 20)
                
                
                

            }
            
            
            
        }
        .ignoresSafeArea()

     
        
        
            .onAppear {
                isInfoOpen = false
                    
                        print("Note envoyé : \(annotation)")
                    
            }
            .onDisappear {
                isInfoOpen = true
            }
    }
}
#Preview {
    AnnotationsView(annotation: notesjoconde[1], oeuvreDetail: oeuvres[0] ,isInfoOpen: .constant(true))
}

