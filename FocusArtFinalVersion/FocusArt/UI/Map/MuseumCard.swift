//
//  MuseumCard.swift
//  FocusArt
//
//  Created by Apprenant 82 on 17/03/2026.
//

import SwiftUI

struct MuseumCard: View {
    var museum: Museum
    var body: some View {
        ZStack(alignment: .bottom) {
            Image(museum.image)
                .resizable()
                .scaledToFill()
                .frame(width: 350,height: 300)
//                .cornerRadius(12)
//                .clipped()
            HStack {
                Text(museum.nom)
                    .font(Poppins.caption)
                    .foregroundStyle(.white)
                    .lineLimit(1)
                    .padding()
                
                    
                Spacer()
            }
            .background(
                LinearGradient(colors: [.clear, .black], startPoint: .top, endPoint: .bottom))
        }
        .frame(maxWidth: .infinity)
        .cornerRadius(12)
       
        .clipped()
    }
}

#Preview {
    MuseumCard(museum: museums[1])
        .background(.black)
}
