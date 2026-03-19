import 'dart:ffi';

import 'package:flutter_avif_platform_interface/flutter_avif_platform_interface.dart';

class FlutterAvifIos extends FlutterAvifPlatform {
  static void registerWith() {
    // FlutterAvifPlatform.api = FlutterAvifImpl(DynamicLibrary.executable());
    // iOS에서 store_dart_post_cobject 등 Dart VM 심볼은 executable()에 없음.
    // process()로 조회해야 함 (flutter_avif #24, flutter_rust_bridge #898).
    FlutterAvifPlatform.api = FlutterAvifImpl(DynamicLibrary.process());
  }
}
