//
//  SearchBarView.swift
//  FocusArt
//
//  Created by Apprenant 74 on 12/03/2026.
//

import SwiftUI

struct SearchBarView: View {
    @FocusState var isFocused: Bool
    @Binding var searchText: String
    
    var body: some View {
        HStack {
            Spacer()
            Image(systemName: "magnifyingglass")
                .foregroundStyle(.gray)
            TextField("Rechercher", text: $searchText)
                .font(Poppins.caption)
                .multilineTextAlignment(.center)
                .frame(maxWidth: 220)
                .focused($isFocused)
            if !searchText.isEmpty {
                Image(systemName: "xmark.circle.fill")
                    .foregroundStyle(.gray)
                    .onTapGesture {
                        searchText = ""
                    }
            }
            Spacer()
        }
        .padding(.vertical, 18)
        .padding(.horizontal, 20)
        .background(.white)
        .clipShape(Capsule())
        .shadow(color: .black.opacity(0.15), radius: 3, y: 3)
        .padding(.horizontal, 20)

    }
}

#Preview {
    SearchBarView(searchText: .constant(""))
}
