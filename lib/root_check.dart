import 'dart:async';

import 'package:flutter/services.dart';

class RootCheck {
  static const MethodChannel _channel = const MethodChannel('root_check');

  static Future<bool> get checkForBinary async {
    try {
      final bool result = await _channel.invokeMethod('checkForBinary');
      return result;
    } catch (error) {
      return null;
    }
  }

  static Future<bool> get checkForBusyBoxBinary async {
    try {
      final bool result = await _channel.invokeMethod('checkForBusyBoxBinary');
      return result;
    } catch (error) {
      return null;
    }
  }

  static Future<bool> get canLoadNativeLibrary async {
    try {
      final bool result = await _channel.invokeMethod('canLoadNativeLibrary');
      return result;
    } catch (error) {
      return null;
    }
  }

  static Future<bool> get checkForDangerousProps async {
    try {
      final bool result = await _channel.invokeMethod('checkForDangerousProps');
      return result;
    } catch (error) {
      return null;
    }
  }

  static Future<bool> get checkForMagiskBinary async {
    try {
      final bool result = await _channel.invokeMethod('checkForMagiskBinary');
      return result;
    } catch (error) {
      return null;
    }
  }

  static Future<bool> get checkForNativeLibraryReadAccess async {
    try {
      final bool result =
          await _channel.invokeMethod('checkForNativeLibraryReadAccess');
      return result;
    } catch (error) {
      return null;
    }
  }

  static Future<bool> get checkForRootNative async {
    try {
      final bool result = await _channel.invokeMethod('checkForRootNative');
      return result;
    } catch (error) {
      return null;
    }
  }

  static Future<bool> get checkForRWPaths async {
    try {
      final bool result = await _channel.invokeMethod('checkForRWPaths');
      return result;
    } catch (error) {
      return null;
    }
  }

  static Future<bool> get checkForSuBinary async {
    try {
      final bool result = await _channel.invokeMethod('checkForSuBinary');
      return result;
    } catch (error) {
      return null;
    }
  }

  static Future<bool> get checkSuExists async {
    try {
      final bool result = await _channel.invokeMethod('checkSuExists');
      return result;
    } catch (error) {
      return null;
    }
  }

  static Future<bool> get isRootedWithBusyBoxCheck async {
    try {
      final bool result =
          await _channel.invokeMethod('isRootedWithBusyBoxCheck');
      return result;
    } catch (error) {
      return null;
    }
  }

  static Future<bool> get isRooted async {
    try {
      final bool result = await _channel.invokeMethod('isRooted');
      return result;
    } catch (error) {
      return null;
    }
  }

  static Future<bool> get detectPotentiallyDangerousApps async {
    try {
      final bool result =
          await _channel.invokeMethod('detectPotentiallyDangerousApps');
      return result;
    } catch (error) {
      return null;
    }
  }

  static Future<bool> get detectRootCloakingApps async {
    try {
      final bool result = await _channel.invokeMethod('detectRootCloakingApps');
      return result;
    } catch (error) {
      return null;
    }
  }

  static Future<bool> get detectRootManagementApps async {
    try {
      final bool result =
          await _channel.invokeMethod('detectRootManagementApps');
      return result;
    } catch (error) {
      return null;
    }
  }

  static Future<bool> get detectTestKeys async {
    try {
      final bool result = await _channel.invokeMethod('detectTestKeys');
      return result;
    } catch (error) {
      return null;
    }
  }
}
