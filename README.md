# Chat-X

## Installation
- Add [Flutter](https://flutter.dev/docs/get-started/install 'Flutter') to your machine
- Open this project folder with Terminal/CMD
- Ensure there's no cache/build left over by running `flutter clean` in the Terminal
- Run in the Terminal `flutter pub get`
- Run in the Terminal `dart run build_runner build --delete-conflicting-outputs`

## Before Run
- Make sure the .env(dev, prod) file is in the root project

## Running the App
- Open Android Emulator
- Run `flutter run --flavor {RELEASE_TYPE}`
- Supported release type: `development,`production`

## Build an APK
- Run `flutter build apk --flavor {RELEASE_TYPE}` or Run `flutter build apk --flavor {RELEASE_TYPE} --split-per-abi` for split the APK
- The apk will be saved under this location: `[project]/build/app/outputs/flutter-apk/`
- We can also build appbundle (.aab) by running this command: `flutter build appbundle --flavor {RELEASE_TYPE}`

## Build an IOS
- Before Build : `Product -> Clean Build Folder`
- Run in the terminal `flutter clean`->`flutter pub get`->`dart run build_runner build --delete-conflicting-outputs`
- dir /ios run : `pod install --repo-update`
- Run `flutter build ios --flavor {RELEASE_TYPE}`
- Archive iOS: `Product -> Archive`