//
//  CategorieData.swift
//  FocusArt
//
//  Created by Apprenant 83 on 16/03/2026.
//

import Foundation

struct Categorie: Identifiable {
    var id = UUID()
    var name: String
}


var categories: [Categorie] = [
    Categorie(name: "Haute Renaissance"),
    Categorie(name: "Contemporain"),
    Categorie(name: "Moderne"),
    Categorie(name: "Classique"),
    Categorie(name: "Fauvisme"),
    Categorie(name: "Expressionisme"),
    Categorie(name: "Abstrait")
]
