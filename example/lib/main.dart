import 'package:flutter/material.dart';
import 'dart:async';

import 'package:root_check/root_check.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _text = 'Unknown';

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    bool? checkForBinary = await RootCheck.checkForBinary("main.dart");
    bool? checkForBusyBoxBinary = await RootCheck.checkForBusyBoxBinary;
    bool? canLoadNativeLibrary = await RootCheck.canLoadNativeLibrary;
    bool? checkForDangerousProps = await RootCheck.checkForDangerousProps;
    bool? checkForMagiskBinary = await RootCheck.checkForMagiskBinary;
    bool? checkForNativeLibraryReadAccess =
        await RootCheck.checkForNativeLibraryReadAccess;
    bool? checkForRootNative = await RootCheck.checkForRootNative;
    bool? checkForRWPaths = await RootCheck.checkForRWPaths;
    bool? checkForSuBinary = await RootCheck.checkForSuBinary;
    bool? checkSuExists = await RootCheck.checkSuExists;
    bool? isRootedWithBusyBoxCheck = await RootCheck.isRootedWithBusyBoxCheck;
    bool? isRooted = await RootCheck.isRooted;
    bool? detectPotentiallyDangerousApps =
        await RootCheck.detectPotentiallyDangerousApps;
    bool? detectRootCloakingApps = await RootCheck.detectRootCloakingApps;
    bool? detectRootManagementApps = await RootCheck.detectRootManagementApps;
    bool? detectTestKeys = await RootCheck.detectTestKeys;

    String t =
        "\ncheckForBinary : $checkForBinary\ncheckForBusyBoxBinary : $checkForBusyBoxBinary\ncanLoadNativeLibrary : $canLoadNativeLibrary\ncheckForDangerousProps : $checkForDangerousProps\ncheckForMagiskBinary : $checkForMagiskBinary\ncheckForNativeLibraryReadAccess : $checkForNativeLibraryReadAccess\ncheckForRootNative : $checkForRootNative\ncheckForRWPaths : $checkForRWPaths\ncheckForSuBinary : $checkForSuBinary\ncheckSuExists : $checkSuExists\nisRootedWithBusyBoxCheck : $isRootedWithBusyBoxCheck\nisRooted : $isRooted\ndetectPotentiallyDangerousApps : $detectPotentiallyDangerousApps\ndetectRootCloakingApps : $detectRootCloakingApps\ndetectRootManagementApps : $detectRootManagementApps\ndetectTestKeys : $detectTestKeys";

    if (!mounted) return;

    setState(() {
      _text = t;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Text('Running on: $_text\n'),
        ),
      ),
    );
  }
}
