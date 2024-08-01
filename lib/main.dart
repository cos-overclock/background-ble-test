import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:background_ble_test/api/impl/bluetooth_api_impl_blue_plus.dart';
import 'package:background_ble_test/provider/bluetooth/bluetooth_api_provider.dart';

import 'theme/theme.dart';
import 'view/main_view/main_view.dart';

void main() {
  runApp(ProviderScope(
    overrides: [
      bluetoothApiProvider.overrideWithValue(BluetoothApiImplBluePlus()),
    ],
    child: const MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    const theme = MaterialTheme(TextTheme());
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme.light(),
      darkTheme: theme.dark(),
      themeMode: ThemeMode.system,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [Locale("ja", "JP")],
      home: const MainView(),
    );
  }
}
