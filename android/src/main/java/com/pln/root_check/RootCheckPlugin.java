package com.pln.root_check;

import android.annotation.SuppressLint;
import android.content.ContentResolver;
import android.content.Context;

import androidx.annotation.NonNull;

import com.scottyab.rootbeer.RootBeer;

import java.util.HashMap;
import java.util.Map;

import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;
import io.flutter.plugin.common.PluginRegistry.Registrar;

/**
 * RootCheckPlugin
 */
public class RootCheckPlugin implements FlutterPlugin, MethodCallHandler {
    MethodChannel channel;
    Context context;
    Map<String, Object> list = new HashMap<String, Object>();

    @Override
    public void onAttachedToEngine(@NonNull FlutterPluginBinding flutterPluginBinding) {
        setupMethodChannel(
                flutterPluginBinding.getFlutterEngine().getDartExecutor(),
                flutterPluginBinding.getApplicationContext()
        );
    }

    public static void registerWith(Registrar registrar) {
        RootCheckPlugin plugin = new RootCheckPlugin();
        plugin.setupMethodChannel(registrar.messenger(), registrar.context());
    }

    @SuppressLint("MethodCall")
    @Override
    public void onMethodCall(MethodCall call, MethodChannel.Result result) {
        RootBeer rootBeer = new RootBeer(this.context);

        if (call.method.equals("checkForBinary")) {
            result.success(rootBeer.checkForBinary(call.argument("filename").toString()));
        } else if (call.method.equals("checkForBusyBoxBinary")) {
            result.success(rootBeer.checkForBusyBoxBinary());
        } else if (call.method.equals("canLoadNativeLibrary")) {
            result.success(rootBeer.canLoadNativeLibrary());
        } else if (call.method.equals("checkForDangerousProps")) {
            result.success(rootBeer.checkForDangerousProps());
        } else if (call.method.equals("checkForMagiskBinary")) {
            result.success(rootBeer.checkForMagiskBinary());
        } else if (call.method.equals("checkForNativeLibraryReadAccess")) {
            result.success(rootBeer.checkForNativeLibraryReadAccess());
        } else if (call.method.equals("checkForRootNative")) {
            result.success(rootBeer.checkForRootNative());
        } else if (call.method.equals("checkForRWPaths")) {
            result.success(rootBeer.checkForRWPaths());
        } else if (call.method.equals("checkForSuBinary")) {
            result.success(rootBeer.checkForSuBinary());
        } else if (call.method.equals("checkSuExists")) {
            result.success(rootBeer.checkSuExists());
        } else if (call.method.equals("isRootedWithBusyBoxCheck")) {
            result.success(rootBeer.isRootedWithBusyBoxCheck());
        } else if (call.method.equals("isRooted")) {
            result.success(rootBeer.isRooted());
        } else if (call.method.equals("detectPotentiallyDangerousApps")) {
            result.success(rootBeer.detectPotentiallyDangerousApps());
        } else if (call.method.equals("detectRootCloakingApps")) {
            result.success(rootBeer.detectRootCloakingApps());
        } else if (call.method.equals("detectRootManagementApps")) {
            result.success(rootBeer.detectRootManagementApps());
        } else if (call.method.equals("detectTestKeys")) {
            result.success(rootBeer.detectTestKeys());
        }
        else {
            result.notImplemented();
        }
    }

    @Override
    public void onDetachedFromEngine(@NonNull FlutterPluginBinding binding) {
        channel.setMethodCallHandler(null);
        channel = null;
    }

    private void setupMethodChannel(BinaryMessenger messenger, Context context) {
        channel = new MethodChannel(messenger, "pln.com/root_check");
        this.context = context;
        channel.setMethodCallHandler(this);
    }
}
