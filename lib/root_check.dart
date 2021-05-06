import 'dart:async';

import 'package:flutter/services.dart';

///RootCheck class
class RootCheck {
  static const MethodChannel _channel =
      const MethodChannel('pln.com/root_check');

  ///method to check if binary file exists or not
  static Future<bool?> checkForBinary(String filename) async {
    try {
      final bool? result =
          await _channel.invokeMethod('checkForBinary', {"filename": filename});
      return result;
    } catch (error) {
      return null;
    }
  }

  ///method to check if busyboxbinary exists or not
  static Future<bool?> get checkForBusyBoxBinary async {
    try {
      final bool? result = await _channel.invokeMethod('checkForBusyBoxBinary');
      return result;
    } catch (error) {
      return null;
    }
  }

  ///check if it can load native library
  static Future<bool?> get canLoadNativeLibrary async {
    try {
      final bool? result = await _channel.invokeMethod('canLoadNativeLibrary');
      return result;
    } catch (error) {
      return null;
    }
  }

  static Future<bool?> get checkForDangerousProps async {
    try {
      final bool? result =
          await _channel.invokeMethod('checkForDangerousProps');
      return result;
    } catch (error) {
      return null;
    }
  }

  static Future<bool?> get checkForMagiskBinary async {
    try {
      final bool? result = await _channel.invokeMethod('checkForMagiskBinary');
      return result;
    } catch (error) {
      return null;
    }
  }

  static Future<bool?> get checkForNativeLibraryReadAccess async {
    try {
      final bool? result =
          await _channel.invokeMethod('checkForNativeLibraryReadAccess');
      return result;
    } catch (error) {
      return null;
    }
  }

  static Future<bool?> get checkForRootNative async {
    try {
      final bool? result = await _channel.invokeMethod('checkForRootNative');
      return result;
    } catch (error) {
      return null;
    }
  }

  static Future<bool?> get checkForRWPaths async {
    try {
      final bool? result = await _channel.invokeMethod('checkForRWPaths');
      return result;
    } catch (error) {
      return null;
    }
  }

  static Future<bool?> get checkForSuBinary async {
    try {
      final bool? result = await _channel.invokeMethod('checkForSuBinary');
      return result;
    } catch (error) {
      return null;
    }
  }

  ///Check if SU is exists
  static Future<bool?> get checkSuExists async {
    try {
      final bool? result = await _channel.invokeMethod('checkSuExists');
      return result;
    } catch (error) {
      return null;
    }
  }

  ///Check if rooted with busybox or not
  static Future<bool?> get isRootedWithBusyBoxCheck async {
    try {
      final bool? result =
          await _channel.invokeMethod('isRootedWithBusyBoxCheck');
      return result;
    } catch (error) {
      return null;
    }
  }

  ///Check if rooted, it might be false alarm, some vendor add busybox for default,
  ///check method isRootedWithBusyBoxCheck
  static Future<bool?> get isRooted async {
    try {
      final bool? result = await _channel.invokeMethod('isRooted');
      return result;
    } catch (error) {
      return null;
    }
  }

  static Future<bool?> get detectPotentiallyDangerousApps async {
    try {
      final bool? result =
          await _channel.invokeMethod('detectPotentiallyDangerousApps');
      return result;
    } catch (error) {
      return null;
    }
  }

  static Future<bool?> get detectRootCloakingApps async {
    try {
      final bool? result =
          await _channel.invokeMethod('detectRootCloakingApps');
      return result;
    } catch (error) {
      return null;
    }
  }

  static Future<bool?> get detectRootManagementApps async {
    try {
      final bool? result =
          await _channel.invokeMethod('detectRootManagementApps');
      return result;
    } catch (error) {
      return null;
    }
  }

  static Future<bool?> get detectTestKeys async {
    try {
      final bool? result = await _channel.invokeMethod('detectTestKeys');
      return result;
    } catch (error) {
      return null;
    }
  }
}
