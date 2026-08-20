part of 'main_function.dart';

mixin NavigationFunction {
  void back<T>({T? result}) {
    return Get.back(result: result);
  }

  Future<T?> to<T>(dynamic page) async {
    return await Get.to(page);
  }

  Future<T?> off<TO, T>(dynamic page) async {
    return await Get.off(page);
  }

  Future<T?> offAll<T>(dynamic page) async {
    return await Get.offAll(page);
  }
}
