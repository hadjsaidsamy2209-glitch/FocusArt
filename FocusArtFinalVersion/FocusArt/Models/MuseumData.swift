//
//  Data Event.swift
//  FocusArt
//
//  Created by Apprenant 82 on 11/03/2026.
//

import Foundation
import MapKit

struct Museum : Identifiable{
    var id = UUID()
    var nom : String
    var localisation : CLLocationCoordinate2D
    var image : String
    var description : String
    
}



var museums = [
    
    Museum(nom: "Musée de l'Histoire de la Ville de Marseille", localisation: CLLocationCoordinate2D (latitude : 43.29794326435294,longitude:  5.375461442327784), image:"centreBourse" , description: "Le musée d'Histoire de Marseille est un musée consacré à l'histoire de la ville de Marseille. Fondé en 1983, il a été entièrement rénové et a rouvert le 14 septembre 2013 à l'occasion de Marseille-Provence 2013.Installé dans le Centre Bourse, à proximité du Vieux-Port, le musée d'histoire de Marseille abrite le site du Port antique, une exposition permanente de 3 500 m2, un espace d'exposition temporaire, un centre de documentation et un auditorium, ce qui en fait le plus important musée d'histoire urbaine en France."),
    
    Museum(nom: "Musée des Beaux Arts de Marseille",localisation: CLLocationCoordinate2D (latitude : 43.30477885479541 ,longitude:  5.393912557672216), image:"beauxArts" , description: "Le musée des Beaux-Arts de Marseille a été créé en 1802, à la suite de l'arrêté du 13 fructidor an IX (31 août 1801), dit arrêté Chaptal du nom du ministre de l'Intérieur de l'époque Jean-Antoine Chaptal qui prévoyait d'envoyer dans plusieurs villes de province (dont des cités maintenant à l'étranger) des tableaux, sculptures et objets d'art. Les premières collections proviennent des saisies révolutionnaires des biens des émigrés. Afin d'inventorier les biens saisis, une commission des arts présidée par Claude-François Achard est créée à Marseille en novembre 1794. Le couvent des Bernardines avec sa chapelle est choisi pour servir de lieu de dépôt, puis de musée inauguré par le préfet Antoine Claire Thibaudeau le 9 septembre 1804 : ce sera le premier véritable musée de Marseille."),
    
    Museum(nom: "Centre de la Vieille Charité",localisation: CLLocationCoordinate2D (latitude : 43.300534297409854,longitude: 5.367875642327783), image:"vieilleCharite" , description: "La Vieille charité, située , rue de la Charité, au cœur du quartier du Panier dans le 2e arrondissement de Marseille, dans le quartier officiel des Grands-Carmes, est un bâtiment édifié au xviie siècle, sur les plans de Pierre Puget pour abriter les indigents et les pauvres de la ville. Il correspond à la mise en œuvre marseillaise du « grand enfermement » que Michel Foucault a mis en évidence dans sa fameuse Histoire de la folie à l'âge classique (1962).L'hospice est représentatif de l'architecture du xviie siècle, en particulier du fait de la présence de la chapelle de Puget et de sa coupole ovoïde.Perdant progressivement sa vocation à la fin du xixe siècle, il était proche de la disparition dans les années 1950, occupé seulement par des habitants pauvres vivant dans des conditions misérables.La chapelle et l'hospice ont été classés monument historique par arrêté du 29 janvier 1951. L'ensemble ayant fait l'objet d'une rénovation profonde dans les années 1960 à 1980, est aujourd'hui l'une des nombreuses institutions culturelles de la Ville de Marseille."),
    
    
    Museum(nom: "Mucem - Musée des civilisations de l’Europe et de la Méditerranée",localisation: CLLocationCoordinate2D (latitude : 43.29704548503932,longitude:  5.361125415344433), image:"mucem" , description: "Le musée des Civilisations de l'Europe et de la Méditerranée (Mucem) est un musée national situé à Marseille, inauguré par le président François Hollande, le 7 juin 2013, alors que Marseille était capitale européenne de la culture. La construction du bâtiment est l'œuvre de l'architecte français Rudy Ricciotti.Musée de société, le Mucem est consacré à l'anthropologie culturelle des sociétés d'Europe et de la Méditerranée. À sa création, les collections constituées par l'ancien musée national des Arts et Traditions populaires (définitivement fermé) lui ont été affectées. En créant ce musée à Marseille, l'État dote la deuxième ville de France d'un équipement culturel majeur, placé sous la tutelle du ministère de la Culture."),
    
    Museum(nom: "Musée du Louvre",localisation: CLLocationCoordinate2D (latitude : 48.86078403117509,longitude:  2.337644), image:"leLouvre" , description: "Le musée assyrien du Louvre, inauguré en 1847 et alors rattaché au département des Antiques, est le premier musée au monde consacré aux antiquités orientales. Le département des Antiquités orientales est officiellement créé par décret du 20 août 1881, à la suite des fouilles de Tello et des progrès considérables dans la redécouverte de l'antiquité orientale auxquels la section du musée Assyrien contribuait activement. Tout au long du xixe siècle et pendant la première moitié du xxe siècle, les collections se sont développées grâce aux explorations et fouilles menées par des diplomates et des archéologues français au Proche et Moyen-Orient, notamment sur les sites de Khorsabad, Tello, Suse, Mari, Ougarit ou encore Byblos.")
]

