# Scribbly Notes (Flutter)

Scribbly is a modern Notes Management Application built with Flutter and Cloud Firestore. It is a rebuild of an original Kotlin Android application, designed to demonstrate clean architecture and seamless real-time cloud syncing.

## Features

- **Real-Time Sync**: Notes update instantly across devices via Cloud Firestore.
- **Full CRUD Operations**: Create, Read, Update, and Delete notes.
- **Beautiful UI**: Built with Material 3, featuring clean neumorphic-inspired layouts and smooth empty-states.
- **Validation**: Form validation ensures notes always have content.

## Tech Stack

- **Flutter**: Latest stable version for cross-platform UI.
- **Firebase Core**: For initializing the Firebase context.
- **Cloud Firestore**: For a scalable, NoSQL cloud database.
- **Intl**: For human-readable date and time formatting.

## Project Architecture

The app uses a clean architecture suitable for simple scalability:
- `lib/models/`: Contains the `Note` model with Firestore serialization.
- `lib/services/`: Contains `FirestoreService` to encapsulate all database logic.
- `lib/screens/`: Contains the UI screens (`NotesListScreen`, `AddEditNoteScreen`).
- `lib/widgets/`: Contains reusable UI components like `NoteCard`.

## Getting Started

1. **Clone the repository**:
   ```bash
   git clone https://github.com/NareshBaruaIsHere/scribbly-notes-flutter.git
   ```

2. **Navigate to the project directory**:
   ```bash
   cd scribbly-notes-flutter
   ```

3. **Install dependencies**:
   ```bash
   flutter pub get
   ```

4. **Run the app**:
   ```bash
   flutter run
   ```

