//
//  OeuvreDescription.swift
//  FocusArt
//
//  Created by Apprenant 82 on 12/03/2026.
//

import SwiftUI

struct OeuvreDescription: View {
    
    var oeuvre: Oeuvre
    var museum : Museum
    @Environment(\.dismiss) var dismiss
    @State private var isInfoOpen = true
    @State private var showAnnotations = false
    var isShowingBackArrow: Bool = false
    var body: some View {
        
            ZStack {
                    Image(oeuvre.image)
                        .resizable()
                        .scaledToFill()
                        .clipped()
                        .frame(minWidth: 0, maxWidth: .infinity)
                     
                        .overlay(
                            GeometryReader { geometry in
                                if showAnnotations {
                                    ForEach(oeuvre.note){ note in
                                        NavigationLink {
                                            AnnotationsView(annotation: note, oeuvreDetail: oeuvre, isInfoOpen: $isInfoOpen)
                                        } label: {

                                            Image("pulse")
                                                .resizable()
                                                .frame(width: 25, height: 25)
                                                .foregroundColor(.white)
                                                .shadow(color: .black.opacity(0.8), radius: 4)
                                                
                                        }
                                        .position(x: geometry.size.width * note.x, y: geometry.size.height * note.y)
                                        
                                        
                                    }
                                }
                                
                            }
                        )
                Button {
                    showAnnotations.toggle()
                } label: {
                    VStack(spacing: 4) {
                        Image(showAnnotations ? "buttondetail.fill" : "buttondetail")
                            .resizable()
                            .frame(width: 40, height: 50)
                        Text(showAnnotations ? "Masquer" : "Détails")
                            .font(.caption2)
                            .fontWeight(.bold)
                            .foregroundStyle(.white)
                            .shadow(color: .black.opacity(0.8), radius: 3)
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
                .padding(.bottom, 230)
                .padding(.trailing, 20)
                if isShowingBackArrow {
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "arrow.left")
                            .foregroundStyle(.white)
                            .padding(10)
                            .background(.black.opacity(0.6))
                            .clipShape(Circle())
                    } .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                        .padding(.top, 60)
                        .padding(.leading, 16)
                }

                
                }
                .ignoresSafeArea()
                .toolbar(.hidden, for: .tabBar)
                .sheet(isPresented: $isInfoOpen) {
                    InfoSheetView(oeuvre: oeuvre,museum: museums[4])
                        .presentationDetents([.fraction(0.2), .medium, .large])
                        .interactiveDismissDisabled(true)
                        .presentationBackground(.scrolloeuvre)
                        .presentationBackgroundInteraction(.enabled(upThrough: .fraction(0.2)))
                }
        }
    }


#Preview {
    OeuvreDescription(oeuvre: oeuvres[0],museum: museums[2])
}
