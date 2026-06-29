# Student Grade Tracker

A clean Flutter app for tracking student subjects, marks, grades, and overall performance in one place.

## Overview

Student Grade Tracker lets you add subjects with marks, automatically converts each mark into a letter grade, and shows a quick performance summary. The app uses a simple in-memory state model, so it is fast and lightweight, but data resets when the app restarts.

## Features

- Add a subject with a name and a mark from 0 to 100.
- See the calculated grade for each subject instantly.
- Swipe a subject away to remove it.
- View summary stats for total subjects, passed subjects, average mark, and overall grade.
- Switch between light and dark themes.
- Navigate with a bottom bar between the subject list and summary screens.

## Grade Rules

The app uses the following grading scale:

- 80 and above: A+
- 70 to 79.99: A
- 60 to 69.99: A-
- 50 to 59.99: B
- 40 to 49.99: C
- 33 to 39.99: D
- Below 33: F

Passing is defined as a mark of 33 or higher.

## Tech Stack

- Flutter
- Provider for state management
- GoRouter for navigation
- Material Design theming

## Project Structure

- lib/main.dart: App bootstrap and provider setup
- lib/models/subject.dart: Subject model and grade logic
- lib/providers/subject_provider.dart: Subject state and summary calculations
- lib/providers/theme_provider.dart: Light and dark theme toggle state
- lib/router/app_router.dart: Route definitions
- lib/pages/home_page.dart: Main shell with bottom navigation
- lib/screens/add_subject_screen.dart: Subject entry form
- lib/screens/subject_list_screen.dart: Subject list and delete interactions
- lib/screens/summary_screen.dart: Performance summary view
- lib/themes/app_theme.dart: Light and dark theme definitions
- lib/widgets/app_bottom_nav.dart: Bottom navigation bar

## Getting Started

### Prerequisites

- Flutter SDK 3.12.2 or newer
- A connected device, emulator, or browser target

### Install Dependencies

```bash
flutter pub get
```

### Run the App

```bash
flutter run
```

If you want to target a specific platform, use the standard Flutter run options, for example:

```bash
flutter run -d chrome
flutter run -d android
```

### Run Tests

```bash
flutter test
```

### Build for Release

```bash
flutter build apk
flutter build ios
flutter build web
```

## How It Works

1. Open the Subjects tab.
2. Tap the add button to create a subject.
3. Enter a subject name and a valid mark between 0 and 100.
4. Save the subject to update the list and summary.
5. Swipe a subject away to delete it.
6. Open the Summary tab to review totals, pass count, average mark, and the overall grade.

## Notes

- Data is stored in memory only and is not persisted to disk.
- The app is currently focused on subject tracking and summary calculations; there is no authentication or remote backend.

## Flutter Resources

If you are new to Flutter, these are good next steps:

- [Flutter documentation](https://docs.flutter.dev/)
- [Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Flutter cookbook](https://docs.flutter.dev/cookbook)
