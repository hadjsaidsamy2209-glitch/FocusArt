# 🎨 FocusArt

> Explore art differently — discover artworks, museums, and hidden details right from your iPhone.

![Swift](https://img.shields.io/badge/Swift-5.9-orange?logo=swift)
![SwiftUI](https://img.shields.io/badge/SwiftUI-5.0-blue?logo=apple)
![Platform](https://img.shields.io/badge/Platform-iOS%2017+-lightgrey?logo=apple)
![Xcode](https://img.shields.io/badge/Xcode-16-blue?logo=xcode)
![License](https://img.shields.io/badge/License-MIT-green)

---

## 📱 Overview

**FocusArt** is a native iOS application built during the **Apple Foundation Program** at Simplon SUD Marseille. It allows users to explore artworks, discover nearby museums, and dive into interactive annotations on paintings — making art accessible, personal, and immersive.

---

## ✨ Features

- 🖼️ **Artwork Discovery** — Browse curated artworks by category (Classique, Moderne, Contemporain, Fauvisme...)
- 🗺️ **Museum Map** — Explore nearby museums in Marseille with an interactive MapKit integration
- 🔍 **Smart Search** — Search artworks by name or artist in real time
- 💛 **Favorites** — Save your favorite artworks and find them instantly
- 📌 **Interactive Annotations** — Tap hotspots on paintings to reveal hidden details and expert notes
- 🎭 **Similar Artworks** — Discover artworks from the same artistic movement
- 🌟 **Trending & For You** — Personalized sections with randomized trending artworks

---

## 🛠️ Tech Stack

| Technology | Usage |
|---|---|
| **Swift 5.9** | Primary language |
| **SwiftUI** | Declarative UI framework |
| **MapKit** | Interactive museum map |
| **NavigationStack** | Multi-screen navigation |
| **TabView** | Tab bar & carousels |
| **Figma** | UI/UX design & assets |

---

## 🏗️ Architecture

```
FocusArt/
├── Data/
│   ├── OeuvreData.swift       # Artwork models & dataset
│   ├── MuseumData.swift       # Museum models & locations
│   ├── Note_Data.swift        # Annotation models
│   └── CategorieData.swift    # Category models
├── Views/
│   ├── SplashScreenView.swift # Launch screen with animation
│   ├── ContentView.swift      # Tab bar root
│   ├── hScrollView.swift      # Home screen
│   ├── OeuvreDescription.swift # Artwork detail view
│   ├── InfoSheetView.swift    # Artwork info sheet
│   ├── AnnotationsView.swift  # Interactive annotation detail
│   ├── ThemesView.swift       # Search & categories
│   ├── CategorieView.swift    # Category artwork grid
│   ├── Favorites.swift        # Saved artworks
│   ├── MapView.swift          # Museum map
│   └── Profile.swift          # User profile
└── Components/
    ├── SearchBarView.swift    # Reusable search bar
    └── MuseumCard.swift       # Museum card component
```

---

## 📸 Screens

| Home | Artwork Detail | Map | Search |
|---|---|---|---|
| Trending carousel, Pour Vous, Nearby museums | Full-screen artwork with interactive annotations | MapKit with museum pins & info sheets | Category browsing + real-time search |

---

## 🚀 Getting Started

### Prerequisites
- macOS 14+
- Xcode 16+
- iOS 17+ device or simulator

### Installation

```bash
# Clone the repository
git clone https://github.com/yourusername/FocusArt.git

# Open in Xcode
cd FocusArt
open FocusArt.xcodeproj
```

Then select your target device and press **⌘R** to run.

---

## 👥 Team

Built by a team of 5 developers during the **Apple Foundation Program** at **Simplon SUD Marseille** — February to March 2026.

| Role | Focus |
|---|---|
| UI/UX & Navigation | Home, Artwork Description, Annotations |
| Data & Architecture | Data models, Categories, Search |
| Map & Location | MapKit integration, Museum cards |
| Favorites & Profile | Favorites grid, User profile |
| Splash & Theming | Splash screen, Design system, Poppins font |

---

## 📄 License

This project is licensed under the MIT License — see the [LICENSE](LICENSE) file for details.

---

<p align="center">Made with ❤️ and Swift in Marseille 🇫🇷</p>
