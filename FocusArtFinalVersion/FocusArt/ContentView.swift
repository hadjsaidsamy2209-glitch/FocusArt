

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            hScrollView()
                .tabItem {
                    Label("Accueil", systemImage: "house.fill")
                }
            ThemesView()
                .tabItem {
                    Label("Recherche", systemImage: "magnifyingglass")
                }
            Favorites()
                .tabItem {
                    Label("Favoris", systemImage: "heart")
                }
            Profile()
                .tabItem {
                    Label("Profil", systemImage: "person.crop.circle")
                }
        }
        .tint(.yellowIcon)
        .toolbarBackground(.black, for: .tabBar)
        .toolbarBackground(.visible, for: .tabBar)
        .preferredColorScheme(.light)
    }
}

#Preview {
    ContentView()
}

