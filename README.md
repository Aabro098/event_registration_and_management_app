Event Registration and Management App

The app includes the following key features:

Event Registration Form with fields for Name, Email, Phone Number, Event Date (using a Date Picker), Event Type (using a Dropdown), and Comments. All fields have validation and provide user-friendly error messages.

Event List Page that displays upcoming events in a card format, including the event title, date, time, and a short description. Each card has a Register button linking back to the registration form.

User Profile Page where users can view and edit their profile details such as name, email, and phone number, along with an option to upload a profile picture.

To run this application , follow these steps:

Prerequisites:
Ensure that Flutter is installed on your system. If not, you can follow the installation guide from the official Flutter website.
Ensure that you have an IDE like Android Studio or Visual Studio Code set up for Flutter development.
Make sure the Flutter SDK is added to your system's PATH.
Steps to Run the Flutter App:
Clone the Repository: If your project is hosted on GitHub or any version control platform, clone the repository using the terminal or command prompt:

bash
Copy code
git clone https://github.com/Aabro098/event_registration_and_management_app.git
cd event_registration_and_management_app
Install Flutter SDK and Dependencies: Ensure that Flutter is installed by running:

bash
Copy code
flutter --version
If you see Flutter version information, it means Flutter is correctly installed. If not, follow the installation guide.

Install Dependencies: In the root folder of the project (where the pubspec.yaml is located), run the following command to install all required dependencies:

bash
Copy code
flutter pub get
This will download and install all the packages defined in the pubspec.yaml file, such as cupertino_icons and curved_navigation_bar.

Run the App on an Emulator or Physical Device:

For Android Emulator: Open Android Studio, launch an emulator from the AVD Manager, or connect a physical device.
For iOS: Open Xcode, and run the app on a simulator or a connected iOS device.
Then, in the terminal, run:

bash
Copy code
flutter run
This will build the Flutter app and deploy it to the selected device or emulator.

Build the App for a Specific Platform: If you want to specifically build for Android or iOS, you can run the following commands:

For Android:

bash
Copy code
flutter build apk
This will generate the APK file for Android.

For iOS (macOS required):

bash
Copy code
flutter build ios
This will build the app for iOS devices.

Hot Reload (While Running): While running the app, you can make changes in the code and see the updates instantly by pressing:

bash
Copy code
r
This will trigger a hot reload which applies code changes without restarting the app.

Additional Notes:
The pubspec.yaml includes an assets section. Ensure that the assets (e.g., images) are present in the assets/images/ folder.
If you face any issues with the emulator or build, make sure the SDK version specified (sdk: ^3.5.3) in the pubspec.yaml is compatible with your Flutter installation by running flutter doctor to check for any configuration issues.
That's it! Once you complete these steps, your app should be running successfully on your emulator or physical device.









