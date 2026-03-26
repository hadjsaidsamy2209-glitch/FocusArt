//
//  NoteData.swift
//  FocusArt
//
//  Created by Apprenant 74 on 11/03/2026.
//

import Foundation

struct Note: Identifiable, Hashable {
    var id = UUID()
    var texte: String
    var x: Double
    var y: Double
}

//Pour récuperer la data de position:
/*struct ResponsiveCircleView: View {
 var body: some View {
     GeometryReader { geometry in
         Circle()
             .frame(width: geometry.size.width * 0.5, height: geometry.size.width * 0.5)
             .position(x: geometry.size.width / 2, y: geometry.size.height / 2)
     }
     .background(Color.gray.opacity(0.2)) // Background to see the bounds
 }
}*/

var notesjoconde: [Note] = [
    Note(texte: "L’expression « effet Mona Lisa » provient du portrait légendaire de Léonard de Vinci portant le même nom. On a souvent l’impression que son regard nous suit, grâce à l’utilisation astucieuse des éléments suivants : perspective et proportions : l’alignement précis des yeux crée un regard direct...", x: 0.58, y: 0.227),
    Note(texte: "C'est probablement entre 1503 et 1506 que Francesco del Giocondo commande le portrait de sa jeune épouse à Léonard qui réside alors à Florence. Mais il ne l'a certainement jamais eu en sa possession. En effet, Léonard, invité à la cour de François Ier en 1517, l'emporte sans doute avec lui en France où il meurt deux ans plus tard au Clos Lucé, à Amboise. Le tableau est vraisemblablement acheté par François Ier lui-même, qui admire « le sourire quasi divin » de la dame. Il devient rapidement par la suite une œuvre emblématique des collections françaises.", x: 0.197, y: 0.629),
    Note(texte: "Le vaste paysage montre de lointaines vallées et des pitons rocheux perdus dans la brume. Sa profondeur est obtenue grâce à une perspective atmosphérique qui consiste à créer différents plans en modulant progressivement les tonalités. On passe ainsi d'un brun verdâtre à un vert bleuté pour finalement rejoindre le ciel. Au plan le plus rapproché, des signes de civilisation apparaissent : sur la droite, un pont enjambe une rivière, sur la gauche, un sentier serpente. Mais au fur et à mesure que l'on se rapproche de la ligne d'horizon, des montagnes grandioses apparaissent, puis se fondent dans une lumière vaporeuse et vibrante.", x: 0.817, y: 0.368)
]

