import SwiftUI

struct SplashScreenView: View {
    @State private var isActive  = false
    @State private var opacity   = 0.0
    @State private var scale     = 0.82

    var body: some View {
        if isActive {
            ContentView()
                .transition(.opacity)
        } else {
            ZStack {
                Color.black.ignoresSafeArea()

                VStack(spacing: 20) {
                    
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 120, height: 120)
                        .cornerRadius(30)
                        
        
                    Text("Focus Art")
                        .font(.system(size: 20, weight: .bold, design: .rounded))
                        .foregroundColor(.white.opacity(0.55))
                        .kerning(1)
                }
                .scaleEffect(scale)
                .opacity(opacity)
                .onAppear {
                    // Fade in (0.6s)
                    withAnimation(.easeOut(duration: 0.6)) {
                        opacity = 1.0
                        scale   = 1.0
                    }
                    // Pause 2s → fade out (0.4s)
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.6) {
                        withAnimation(.easeInOut(duration: 0.4)) {
                            opacity = 0.0
                            scale   = 1.05
                        }
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) {
                            withAnimation(.easeInOut(duration: 0.5)) {
                                isActive = true
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    SplashScreenView()
}


