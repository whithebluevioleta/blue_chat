import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:logging/logging.dart';
import 'package:flutter/foundation.dart'; 
import 'firebase_options.dart';
import 'screens/login_screen.dart'; // Asegúrate de que esta ruta coincida con la estructura de tu proyecto
import 'utils/custom_theme.dart';

final Logger _logger = Logger('BlueChatApp');

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Logger.root.level = Level.ALL; 
  Logger.root.onRecord.listen((record) {
    if (kDebugMode) {
      print('${record.level.name}: ${record.time}: ${record.message}');
    }
  });

  try {
    _logger.info('Initializing Firebase...');
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    _logger.info('Firebase initialized successfully.');

    if (kIsWeb) {
      _logger.info('Activating Firebase App Check for Web...');
      await FirebaseAppCheck.instance.activate(
        webProvider: ReCaptchaV3Provider('6LeomjAqAAAAALtfxyMqZfyBwt_jSpbImLWd3Ry-'),
      );
    } else if (defaultTargetPlatform == TargetPlatform.android) {
      _logger.info('Activating Firebase App Check for Android...');
      await FirebaseAppCheck.instance.activate(
        androidProvider: AndroidProvider.debug,
      );
    }
    _logger.info('Firebase App Check activated successfully.');
  } catch (e) {
    _logger.severe('Error initializing Firebase', e);
  }

  runApp(const BlueApp());
}

class BlueApp extends StatelessWidget {
  const BlueApp({super.key});

  @override
  Widget build(BuildContext context) {
    _logger.info('Building main widget tree...');
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Blue Chat',
      theme: CustomTheme.lightTheme,
      home: const LoginScreen(), // Dirige al login_screen.dart
    );
  }
}
