# Agus Tri Prastyo - Portfolio

A modern, responsive personal developer portfolio and CV built with Flutter Web and cross-platform support.

## ✨ Features

- **Modern Architecture**: Clean separation of concerns (Core, Data/Models, Presentation, and Settings).
- **Theme Switching**: Seamless Light Mode and Dark Mode support with Material 3 and animated toggle.
- **Language Localization**: Bilingual support for English (`en`) and Indonesian (`id`).
- **Data-Driven**: Resume content, experiences, skills, and links are decoupled from UI presentation via [`PortfolioData`](lib/data/portfolio_data.dart).
- **Responsive Layout**: Adapts dynamically across mobile devices, tablets, and desktop displays.
- **Direct Store Links**: Action buttons directly launch Google Play Store and Apple App Store portfolio projects.
- **Zero Linter Warnings**: Passes `flutter analyze` with 0 issues.
- **Automated Tests**: Unit tests and widget tests covering theme toggle, localization, and responsive layout.

---

## 📁 Project Structure

```text
lib/
├── app.dart                              # Root MaterialApp with Theme & Localization configuration
├── main.dart                             # Application entry point
├── core/                                 # Foundation & Shared Services
│   ├── constants/
│   │   └── app_assets.dart               # Asset constants & web resolver
│   ├── extensions/
│   │   └── context_extensions.dart       # BuildContext helpers (theme, responsive, l10n)
│   ├── localization/
│   │   └── app_localizations.dart        # English & Indonesian localizations
│   ├── settings/
│   │   └── app_settings.dart             # Reactive ThemeMode & Locale state controller
│   ├── theme/
│   │   ├── app_colors.dart               # Adaptive light/dark color tokens
│   │   ├── app_spacing.dart              # Spacing, radius, and elevation tokens
│   │   └── app_theme.dart                # Material 3 light & dark ThemeData
│   └── utils/
│       ├── responsive_layout.dart        # Responsive breakpoint builder
│       └── url_helper.dart               # Safe external URL launcher
├── data/                                 # Data Layer & Models
│   ├── models/
│   │   ├── profile_info.dart             # Personal bio & contact data model
│   │   ├── experience_item.dart          # Work experience data model
│   │   ├── education_item.dart           # Education entry data model
│   │   ├── skill_item.dart               # Technical skill model
│   │   └── link_item.dart                # Social/portfolio link model
│   └── portfolio_data.dart               # Single source of truth for portfolio info
└── presentation/                         # UI Presentation Layer
    ├── pages/
    │   └── portfolio_page.dart           # Main responsive portfolio screen
    └── widgets/
        ├── common/
        │   ├── app_bar_controls.dart     # Floating theme & language switcher
        │   ├── card_box.dart             # Theme-aware modern card container
        │   ├── custom_divider.dart       # Gradient accent divider
        │   └── section_card.dart         # Standardized section header & body
        └── sections/
            ├── header_section.dart       # Avatar, name, role, contact & location
            ├── about_section.dart        # Bio & areas of expertise
            ├── experience_section.dart   # Career history & interactive project links
            ├── education_section.dart    # Academic degree & achievements
            ├── skill_section.dart        # Technical skill chips
            ├── link_section.dart         # Clickable social & GitHub links
            └── footer_section.dart       # Build badge & update date
```

---

## 🚀 Getting Started

### Prerequisites
- Flutter SDK `>=3.0.0`
- Dart SDK `>=3.0.0 <4.0.0`

### Installation
```bash
flutter pub get
```

### Run Locally
```bash
# Run on Chrome
flutter run -d chrome

# Run on macOS / Desktop
flutter run -d macos
```

### Run Tests
```bash
flutter test
```

### Analyze Code
```bash
flutter analyze
```

### Build for Production Web
```bash
flutter build web
```
