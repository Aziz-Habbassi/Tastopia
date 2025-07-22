# 🍳 Recipe Master

<p align="center">
  <img src="https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white" />
  <img src="https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white" />
  <img src="https://img.shields.io/badge/BLoC-FF6B35?style=for-the-badge" />
  <img src="https://img.shields.io/badge/Hive-FFD700?style=for-the-badge" />
</p>

<p align="center">
  <strong>A beautiful and intuitive Flutter recipe app that brings cooking to life with stunning visuals and comprehensive recipe management.</strong>
</p>

<p align="center">
  <a href="#features">Features</a> •
  <a href="#screenshots">Screenshots</a> •
  <a href="#installation">Installation</a> •
  <a href="#tech-stack">Tech Stack</a> •
  <a href="#contributing">Contributing</a>
</p>

## 📱 Features

<table>
<tr>
<td width="50%">

### 🎬 Visual Experience
- **Dynamic Background Videos** for each recipe
- **Immersive UI Design** with modern animations
- **Beautiful Recipe Cards** with high-quality visuals
- **Smooth Transitions** between screens

</td>
<td width="50%">

### 🔍 Smart Functionality  
- **Intelligent Search** with filter options
- **Favorites System** for bookmarking recipes
- **Detailed Recipe Info** (calories, time, difficulty)
- **Step-by-step Video Tutorials**

</td>
</tr>
</table>

### 🎯 Core Features
- 🏠 **Home Screen**: Browse recipes with stunning background videos
- 🔍 **Search Screen**: Find recipes by name, ingredients, or cuisine type
- ❤️ **Favorites Screen**: Quick access to your saved recipes
- 📖 **Recipe Details**: Complete information including nutrition and cooking instructions
- 🎥 **Video Tutorials**: Professional cooking videos to guide you step-by-step

## 🛠 Tech Stack

<div align="center">

| Category | Technologies |
|:---:|:---|
| **Framework** | Flutter, Dart |
| **State Management** | BLoC Pattern |
| **Database** | Hive (NoSQL) |
| **Navigation** | Go Router |
| **Dependency Injection** | Get It |
| **Media** | Video Player |
| **External Links** | URL Launcher |

</div>

### Architecture
This project follows **Mvvm Architecture** principles with **BLoC pattern** for state management:

## 📋 Prerequisites

Before running this project, make sure you have:

- Flutter SDK (latest stable version)
- Dart SDK
- Android Studio / VS Code with Flutter extensions
- Android/iOS device or emulator

## ⚡ Quick Start

### Prerequisites
- Flutter SDK `>=3.0.0`
- Dart SDK `>=3.0.0`
- Android Studio / VS Code
- Git

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/Aziz-Habbassi/Tastopia.git
   cd recipe-master-app
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Generate necessary files**
   ```bash
   flutter packages pub run build_runner build
   ```

4. **Run the app**
   ```bash
   flutter run
   ```

### 🔧 Build APK
```bash
flutter build apk --release
```

## 🔧 Configuration

### Hive Setup
The app uses Hive for local storage. Make sure to register your adapters in `main.dart`:

```dart
await Hive.initFlutter();
Hive.registerAdapter(MealModelAdapter());
```

### Video Assets
Place your background videos in the `assets/videos/` directory and update `pubspec.yaml`:

```yaml
flutter:
  assets:
    - assets/videos/
    - assets/images/
    - assets/animations/
```

## 🎯 Usage

### Adding New Recipes
1. Add recipe data to your data source
2. Include background video in assets
3. Ensure video tutorial URL is accessible
4. Update recipe model if needed

### Customizing UI
- Modify theme colors in `core/constants/app_theme.dart`
- Update app icons in `assets/images/`
- Customize video player controls in `presentation/widgets/video_player_widget.dart`

## 📸 Screenshots

<div align="center">
  
| Home Screen | Recipe Details | Favorites | Search |
|:---:|:---:|:---:|:---:|
| <img src="videos&screenshots\home_view.png" width="200"> | <img src="videos&screenshots\details_view_1.png" width="200"> | <img src="videos&screenshots\favorites_view.png" width="200"> | <img src="videos&screenshots\search_view.png" width="200"> |
| Browse recipes with videos | Detailed recipe information | Your saved favorites | Smart search functionality |

</div>

> 📝 **Note**: Add your actual app screenshots to the `videos&screenshots/` folder and update the paths above.

## 🤝 Contributing

We love your input! We want to make contributing to Recipe Master as easy and transparent as possible.

<details>
<summary><strong>📋 Contributing Guidelines</strong></summary>

### Development Process
1. Fork the repo and create your branch from `main`
2. Make your changes following our coding standards
3. Test your changes thoroughly
4. Update documentation if needed
5. Submit a pull request

### Code Style
- Follow [Effective Dart](https://dart.dev/guides/language/effective-dart) guidelines
- Use meaningful variable and function names
- Add comments for complex logic
- Format code with `flutter format`

### Pull Request Process
1. Update the README.md with details of changes if applicable
2. Ensure all tests pass
3. Make sure your code follows the existing style
4. Get approval from at least one maintainer

</details>

**Ways to contribute:**
- 🐛 Report bugs
- 💡 Suggest new features  
- 🔧 Submit pull requests
- 📖 Improve documentation
- 🎨 Design improvements

## 👨‍💻 Author

**Aziz Habbassi**
- GitHub: [@Aziz Habbassi](https://github.com/Aziz-Habbassi)
- LinkedIn: [Aziz Habbassi](https://www.linkedin.com/in/aziz-habbassi-49527b368/)
- Email: azizhabbassi.online@gmail.com

## 🙏 Acknowledgments

- Flutter team for the amazing framework
- Video content providers
- Recipe data sources
- UI/UX inspiration from cooking apps

## 🚀 Future Features

<div align="center">

| Feature | Status | Description |
|:---|:---:|:---|
| 📅 Meal Planning | 🔄 | Weekly meal planning with calendar integration |
| 🛒 Smart Shopping Lists | 🔄 | Auto-generated shopping lists from recipes |
| ⚖️ Recipe Scaling | 💭 | Adjust ingredient quantities for different serving sizes |
| 📊 Nutritional Analysis | 💭 | Detailed nutritional breakdown and health insights |
| 👥 Social Features | 💭 | Share recipes and follow other home chefs |
| 🌙 Dark Mode | 💭 | Beautiful dark theme for night cooking |
| 📱 Widget Support | 💭 | Home screen widgets for quick recipe access |

</div>

**Legend:** 🔄 In Development | 💭 Planned | ✅ Completed

## 📊 Performance

- **Cold start time**: < 2 seconds
- **Video loading**: Optimized with caching
- **Local storage**: Hive for fast data access
- **Memory usage**: Optimized for smooth scrolling

---

⭐ If you found this project helpful, please consider giving it a star!

Built with ❤️ using Flutter