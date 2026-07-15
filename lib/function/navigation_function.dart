part of 'main_function.dart';

mixin NavigationFunction {
  void back<T>({T? result}) {
    return Get.back(result: result);
  }

  Future<T?> to<T>(Widget page) async {
    return Get.to(page);
  }

  Future<T?> off<TO, T>(Widget page) async {
    return Get.off(page);
  }

  Future<T?> offAll<T>(Widget page) async {
    return Get.offAll(page);
  }
}
