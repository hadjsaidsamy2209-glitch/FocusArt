//
//  calcul point.swift
//  FocusArt
//
//  Created by Apprenant 82 on 17/03/2026.
//

import Foundation
import SwiftUI

struct ArtworkDesignerView: View {
    @State private var tapLocation: CGPoint?
    @State private var relX: Double = 0.0
    @State private var relY: Double = 0.0
    
    var body: some View {
        VStack(spacing: 0) {
            GeometryReader { mainGeo in
                Image("laJoconde")
                    .resizable()
                    .scaledToFill()

                    .overlay {
                        GeometryReader { imageGeo in
                            Color.clear
                                .contentShape(Rectangle())
                                .onTapGesture { location in
                                    let calculatedX = location.x / imageGeo.size.width
                                    let calculatedY = location.y / imageGeo.size.height
                                    
                                    self.relX = calculatedX
                                    self.relY = calculatedY
                                    self.tapLocation = location
                                    
                                    print("relativeX: \(String(format: "%.3f", calculatedX)), relativeY: \(String(format: "%.3f", calculatedY))")
                                }
                            
                            if let tapLocation {
                                Circle()
                                    .fill(Color.red)
                                    .frame(width: 12, height: 12)
                                    .position(tapLocation)
                            }
                        }
                    }
                    .frame(width: mainGeo.size.width, height: mainGeo.size.height)
            }
        }
    }
}

#Preview {
    ArtworkDesignerView()
}
