# Flutter Portfolio 🚀

A personal **portfolio** built using **Flutter**, integrated with **Firebase** for backend services and the **Gemini Chatbot API** for an intelligent conversational assistant.

## 🔥 Features

- ✨ Clean, modern portfolio UI
- 🔐 Firebase integration:
  - Authentication (Email/Google)
  - Firestore (Project & Experience Data)
  - Cloud Storage (for media or resume)
- 🤖 Gemini Chatbot API integration for:
  - Smart portfolio assistant
  - Answering career/tech-related questions
- 🌐 Responsive design for both mobile and web
- ☁️ Deployment-ready structure


## 📸 Screenshots

| Home Screen | Chatbot Interface |
|-------------|--------------------|
| ![Screenshot 1](https://github.com/user-attachments/assets/29a957b5-d063-4a76-be38-7a3cb0059ced) | ![Screenshot 2](https://github.com/user-attachments/assets/3c2254df-fd97-401f-b61f-28f700945e85) |

| Project Section | Chatbot Reply | Resume Preview |
|------------------|----------------|-----------------|
| ![Screenshot 3](https://github.com/user-attachments/assets/66cfd8c1-d19d-4357-ae66-4ab30f7ae956) | ![Screenshot 4](https://github.com/user-attachments/assets/1b3abc7a-d856-490d-a239-c6c1c298a193) | ![Screenshot 5](https://github.com/user-attachments/assets/e04ffbd9-d511-46d1-8345-c2a9f02f27c8) |



## 🛠️ Technologies Used

- **Flutter** (Dart)
- **Firebase** (Auth, Firestore, Storage)
- **Google Gemini API** (via REST or SDK)
- **GitHub Actions** (optional: CI/CD)

## Firebase
- dependencies:
  - firebase_core: ^2.25.4
  - firebase_auth: ^4.14.0
  - cloud_firestore: ^4.12.2
  - firebase_storage: ^11.5.2
 
## 🔧 Firebase Setup

To connect your Flutter portfolio app to Firebase, follow these steps:

### 1. Create a Firebase Project

- Go to [Firebase Console](https://console.firebase.google.com/)
- Click **"Add project"** and follow the setup steps
- Once created, go to the project dashboard

### 2. Add Firebase to Your Flutter App

#### ➤ Android

- In Firebase Console, select **Android** as a platform
- Enter your Android package name (e.g., `com.example.portfolio`)
- Download the `google-services.json` file
- Place it in your Flutter project at:  
  `android/app/google-services.json`

#### ➤ iOS

- Select **iOS** in Firebase Console
- Enter your iOS bundle ID
- Download the `GoogleService-Info.plist` file
- Place it in:  
  `ios/Runner/GoogleService-Info.plist`

#### ➤ Web

1. In the [Firebase Console](https://console.firebase.google.com/), click **"Add app"** and choose the **Web</>** option.
2. Register your app with a nickname (e.g., `portfolio`) and (optionally) set up Firebase Hosting.
3. After registering, you'll receive a Firebase config snippet that looks like this:


### 3. Add Firebase SDK to Your Flutter Project

In your `pubspec.yaml`, add dependencies:

```yaml
dependencies:
  firebase_core: ^latest
  firebase_auth: ^latest
  cloud_firestore: ^latest
  firebase_storage: ^latest

## 📁 Project Structure

```plaintext
lib/
├── main.dart                   # Entry point of the app
├── screens/                   # UI screens
│   ├── home.dart              # Home/Portfolio screen
│   ├── chat.dart              # Chatbot interface screen
├── services/                  # API and backend services
│   ├── firebase_service.dart  # Handles Firebase CRUD/auth logic
│   ├── gemini_service.dart    # Integrates Gemini Chatbot API
├── models/                    # Data models
│   ├── project.dart           # Model for project data
├── widgets/                   # Reusable UI components
│   ├── portfolio_card.dart    # UI card for displaying project info
│   ├── chat_bubble.dart       # Chat bubble for displaying messages

