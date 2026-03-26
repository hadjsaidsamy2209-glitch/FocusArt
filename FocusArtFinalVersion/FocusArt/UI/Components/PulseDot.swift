//
//  PulseDotView.swift
//  FocusArt
//
//  Created by Apprenant 82 on 17/03/2026.
//

import SwiftUI

struct PulseDot: View {
    
    @State private var animate = false
    
    var body: some View {
        ZStack {
            
            // Halo (diffusion)
            Circle()
                .fill(
                    RadialGradient(
                        colors: [
                            Color.white.opacity(1),
                            Color.white.opacity(0.1),
                            .clear
                        ],
                        center: .center,
                        startRadius: 2,
                        endRadius: 20
                    )
                )
                .frame(width: 120, height: 120)
                .scaleEffect(animate ? 1.8 : 0.8)
                .opacity(animate ? 0.5 : 1)
            
            // Point central
            Circle()
                .fill(Color.white.opacity(0.8))
                .frame(width: 12, height: 12)
                //.opacity(animate ? 0.6 : 1)
        }
        .onAppear {
            withAnimation(
                .easeOut(duration: 1.5)
                .repeatForever(autoreverses: false)
            ) {
                animate = true
            }
        }
    }
}
#Preview {
    PulseDot()
}
