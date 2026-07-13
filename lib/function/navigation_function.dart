part of 'main_function.dart';

mixin NavigationFunction {
  void back<T>({T? result}) {
    BuildContext? context = navigatorKey.currentContext;
    if (context == null) return;

    Navigator.pop<T>(context, result);
  }

  Future<T?> to<T>(Widget page) async {
    BuildContext? context = navigatorKey.currentContext;
    if (context == null) return null;

    return await Navigator.push<T>(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  Future<T?> off<TO, T>(Widget page) async {
    BuildContext? context = navigatorKey.currentContext;
    if (context == null) return null;

    return await Navigator.pushReplacement<T, TO>(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  Future<T?> offAll<T>(Widget page) async {
    BuildContext? context = navigatorKey.currentContext;
    if (context == null) return null;

    return await Navigator.pushAndRemoveUntil<T>(
      context,
      MaterialPageRoute(builder: (context) => page),
      (route) => false,
    );
  }
}
