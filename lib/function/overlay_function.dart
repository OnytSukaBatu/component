part of 'main_function.dart';

mixin OverlayFunction {
  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showSnackBar({
    required Widget content,
    SnackBarAction? action,
    Animation<double>? animation,
    Color? backgroundColor,
    SnackBarBehavior? behavior,
    Duration? duration,
    double? elevation,
    EdgeInsetsGeometry? padding,
    bool persist = false,
    ShapeBorder? shape,
    bool showCloseIcon = false,
    double? width,
    BorderRadius? borderRadius,
    BorderSide? borderSide,
    Color? borderColor,
    double? borderWidth,
  }) {
    Duration dDuration = Duration(seconds: 5);
    Color dBorderColor = Colors.transparent;
    double dBorderWidth = 1.0;
    BorderRadius dBorderRadius = BorderRadius.zero;

    BorderSide dBorderSide = BorderSide(
      color: borderColor ?? dBorderColor,
      width: borderWidth ?? dBorderWidth,
    );

    ShapeBorder dShape = RoundedRectangleBorder(
      borderRadius: borderRadius ?? dBorderRadius,
      side: borderSide ?? dBorderSide,
    );

    return ScaffoldMessenger.of(Get.context!).showSnackBar(
      SnackBar(
        content: content,
        action: action,
        animation: animation,
        backgroundColor: backgroundColor,
        behavior: behavior,
        duration: duration ?? dDuration,
        elevation: elevation,
        padding: padding,
        persist: persist,
        shape: shape ?? dShape,
        showCloseIcon: showCloseIcon,
        width: width,
      ),
    );
  }

  Future<T?> showDialogs<T>({
    required Widget child,
    Color? barrierColor,
    bool barrierDismissible = true,
    bool fullScreenDialog = false,
    bool useSafeArea = true,
    bool canPop = true,
    AlignmentGeometry? alignment,
    Color? backgroundColor,
    double? elevation,
    EdgeInsets? insetPadding,
    Color? shadowColor,
    ShapeBorder? shape,
    BorderRadiusGeometry? borderRadius,
    BorderSide? borderSide,
    Color? borderColor,
    double? borderWidth,
  }) {
    Color dBorderColor = Colors.transparent;
    double dBorderWidth = 1.0;

    BorderSide dBorderSide = BorderSide(
      color: borderColor ?? dBorderColor,
      width: borderWidth ?? dBorderWidth,
    );

    BorderRadius dBorderRadius = BorderRadius.circular(8.0);

    ShapeBorder dShape = RoundedRectangleBorder(
      borderRadius: borderRadius ??= dBorderRadius,
      side: borderSide ?? dBorderSide,
    );

    return showDialog(
      context: Get.context!,
      builder: (BuildContext context) {
        return PopScope(
          canPop: canPop,
          child: Dialog(
            alignment: alignment,
            backgroundColor: backgroundColor,
            elevation: elevation,
            insetPadding: insetPadding,
            shadowColor: shadowColor,
            shape: shape ?? dShape,
            child: child,
          ),
        );
      },
      barrierColor: barrierColor,
      barrierDismissible: barrierDismissible,
      fullscreenDialog: fullScreenDialog,
      useSafeArea: useSafeArea,
    );
  }

  Future<T?> showAlertDialogAdaptive<T>({
    Color? barrierColor,
    bool barrierDismissible = true,
    bool fullScreenDialog = false,
    bool useSafeArea = true,
    bool canPop = true,
    List<Widget>? actions,
    MainAxisAlignment? actionsAlignment,
    EdgeInsetsGeometry? actionsPadding,
    AlignmentGeometry? alignment,
    Color? backgroundColor,
    Widget? content,
    double? elevation,
    EdgeInsets? insetPadding,
    Color? shadowColor,
    ShapeBorder? shape,
    BorderRadiusGeometry? borderRadius,
    BorderSide? borderSide,
    Color? borderColor,
    double? borderWidth,
    Widget? title,
  }) {
    Color dBorderColor = Colors.transparent;
    double dBorderWidth = 1.0;

    BorderRadius dBorderRadius = BorderRadius.circular(8.0);

    BorderSide dBorderSide = BorderSide(
      color: borderColor ?? dBorderColor,
      width: borderWidth ?? dBorderWidth,
    );

    ShapeBorder dShape = RoundedRectangleBorder(
      borderRadius: borderRadius ??= dBorderRadius,
      side: borderSide ??= dBorderSide,
    );

    return showDialog(
      context: Get.context!,
      builder: (BuildContext context) {
        return PopScope(
          canPop: canPop,
          child: AlertDialog(
            actions: actions,
            actionsAlignment: actionsAlignment,
            actionsPadding: actionsPadding,
            alignment: alignment,
            backgroundColor: backgroundColor,
            content: content,
            elevation: elevation,
            insetPadding: insetPadding,
            shadowColor: shadowColor,
            shape: shape ?? dShape,
            title: title,
          ),
        );
      },
      barrierColor: barrierColor,
      barrierDismissible: barrierDismissible,
      fullscreenDialog: fullScreenDialog,
      useSafeArea: useSafeArea,
    );
  }

  Future<T?> showBottomSheet<T>({
    double? width,
    BorderRadius? borderRadius,
    Color? backgroundColor,
    Widget? child,
  }) {
    BorderRadius dBorderRadius = BorderRadius.only(
      topLeft: Radius.circular(8.0),
      topRight: Radius.circular(8.0),
    );

    return showModalBottomSheet(
      context: Get.context!,
      builder: (BuildContext context) {
        return Container(
          width: width,
          decoration: BoxDecoration(
            borderRadius: borderRadius ?? dBorderRadius,
            color: backgroundColor,
          ),
          child: child,
        );
      },
    );
  }

  Future<T?> showCupertinoActionSheet<T>({
    Color? barrierColor,
    bool? barrierDismissible,
    required List<CupertinoActionSheetAction> actions,
    required CupertinoActionSheetAction cancelButton,
    required Widget meesage,
    required Widget title,
  }) {
    Color dBarrierColor = Colors.grey.withValues(alpha: .25);

    return showCupertinoModalPopup(
      context: Get.context!,
      builder: (BuildContext context) {
        return CupertinoActionSheet(
          actions: actions,
          cancelButton: cancelButton,
          message: meesage,
          title: title,
        );
      },
      barrierColor: barrierColor ?? dBarrierColor,
      barrierDismissible: barrierDismissible ?? true,
    );
  }

  Future<T?> showCupertinoAlertDialog<T>({
    required List<CupertinoDialogAction> actions,
    Color? barrierColor,
    bool? barrierDismissible,
    Widget? content,
    Widget? title,
  }) {
    Color dBarrierColor = Colors.grey.withValues(alpha: .25);

    return showCupertinoDialog(
      context: Get.context!,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          actions: actions,
          content: content,
          title: title,
        );
      },
      barrierColor: barrierColor ?? dBarrierColor,
      barrierDismissible: barrierDismissible ?? true,
    );
  }
}
