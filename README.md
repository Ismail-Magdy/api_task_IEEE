# 📰 Flutter News App

A beautiful and responsive news application built with Flutter. It fetches the latest top business headlines from the US using the [NewsAPI](https://newsapi.org/).

## 📸 Screenshots

<p align="center">
  <img src="assets\screenshots\image.png" width="600" alt="Home Screen">
  <img src="assets\screenshots\image2.png" width="600" alt="Home Screen">
</p>

## ✨ Features

- **Real-time Data:** Fetches the latest top business headlines from the US.
- **Clean UI:** Modern design with custom, reusable widgets (e.g., News Cards, Custom App Bar Buttons).
- **State Handling:** Handles loading states gracefully using `FutureBuilder`.
- **Image Handling:** Displays article thumbnails with fallback UI for broken or missing images.
- **Robust Error Handling:** Checks for null values to prevent unexpected crashes.

## 🏗️ Project Architecture

The project follows a clean, layer-based directory structure to ensure maintainability and a clear separation of concerns.

```text
lib/
├── data/
│   ├── models/        # Contains data models (e.g., article.dart for NewsModel parsing)
│   └── services/      # Handles API calls and network requests (e.g., api_helper.dart)
├── screens/           # Contains the main UI screens (e.g., articles_screen.dart)
├── widgets/           # Reusable UI components (e.g., news_card.dart, custom_app_bar.dart)
└── main.dart          # Application entry point
```
