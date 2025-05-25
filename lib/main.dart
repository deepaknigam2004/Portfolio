import 'package:flutter/material.dart';
import 'package:portfolio/screens/chatbot.dart';
import 'package:portfolio/screens/home_screen.dart';
import 'package:portfolio/theme/theme.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Tech Portfolio',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      // theme: lightTheme,
      darkTheme: darkTheme,

      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        // '/about': (context) => AboutScreen(),
        // '/projects': (context) => ProjectScreen(),
        // '/contact': (context) => ContactScreen(),
        'chat': (context) => ChatBotScreen(),
      },
    );
  }
}



















//
//
//
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:portfolio/firebase_options.dart';
// import 'package:portfolio/screens/about_screen.dart';
// import 'package:portfolio/screens/contact_screen.dart';
// import 'package:portfolio/screens/project_screen.dart';
//
// void main() async{
//     WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Portfolio',
//       theme: ThemeData(
//         // primarySwatch: Colors.blue,
//         fontFamily: 'Inter',
//       ),
//       home: const MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
//
//
//
// class _MyHomePageState extends State<MyHomePage> {
//   // Key for each section.  Used for scrolling.
//   final GlobalKey _profileKey = GlobalKey();
//   final GlobalKey _experienceKey = GlobalKey();
//   final GlobalKey _projectsKey = GlobalKey();
//   final GlobalKey _contactKey = GlobalKey();
//   final ScrollController _scrollController = ScrollController();
//   bool _isDarkMode = false; // Added for theme toggle
//
//   // Function to scroll to a specific section
//   void _scrollToSection(GlobalKey key) {
//     final context = key.currentContext;
//     if (context != null) {
//       Scrollable.ensureVisible(
//         context,
//         duration: const Duration(milliseconds: 500),
//         curve: Curves.easeInOut,
//       );
//     }
//   }
//
//   // Method to show an alert dialog
//   void _showAlert(BuildContext context, String title, String content) {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: Text(title),
//           content: Text(content),
//           actions: <Widget>[
//             TextButton(
//               child: const Text('OK'),
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//             ),
//           ],
//         );
//       },
//     );
//   }
//
//   @override
//   void dispose() {
//     _scrollController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blue, // Fixed color.
//         title: const Text(
//           'Surjakanta Das', // Name fixed
//           style: TextStyle(
//             fontFamily: 'Inter',
//             fontWeight: FontWeight.w600,
//           ),
//         ),
//         actions: [
//           // Navigation buttons.
//           TextButton(
//             onPressed: () => _scrollToSection(_profileKey),
//             style: TextButton.styleFrom(foregroundColor: Colors.white),
//             child: const Text('Profile', style: TextStyle(fontFamily: 'Inter')),
//           ),
//           TextButton(
//             onPressed: () => _scrollToSection(_experienceKey),
//             style: TextButton.styleFrom(foregroundColor: Colors.white),
//             child: const Text('Experience', style: TextStyle(fontFamily: 'Inter')),
//           ),
//           TextButton(
//             onPressed: () => _scrollToSection(_projectsKey),
//             style: TextButton.styleFrom(foregroundColor: Colors.white),
//             child: const Text('Projects', style: TextStyle(fontFamily: 'Inter')),
//           ),
//           TextButton(
//             onPressed: () => _scrollToSection(_contactKey),
//             style: TextButton.styleFrom(foregroundColor: Colors.white),
//             child: const Text('Contact', style: TextStyle(fontFamily: 'Inter')),
//           ),
//         ],
//       ),
//       body: Scrollbar(
//         controller: _scrollController,
//         child: SingleChildScrollView(
//           controller: _scrollController,
//           child: Column(
//             children: <Widget>[
//               // Profile Section
//               Container(
//                 key: _profileKey,
//                 padding: const EdgeInsets.all(20.0),
//                 child: AboutScreen(),
//               ),
//               Container(
//                 key: _experienceKey,
//                 padding: const EdgeInsets.all(20.0),
//                 child: ProjectScreen(),
//               ),
//               Container(
//                 key: _projectsKey,
//                 padding: const EdgeInsets.all(20.0),
//                 child: ContactScreen(),
//               ),
//               Container(
//                 key: _contactKey,
//                 padding: const EdgeInsets.all(20.0),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
