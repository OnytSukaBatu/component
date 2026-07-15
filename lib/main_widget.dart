import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MainWidget {
  static final MainWidget _instance = MainWidget._internal();
  MainWidget._internal();
  factory MainWidget() => _instance;

  final TextStyle _dStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    letterSpacing: 0.25,
  );

  Widget text(
    String data, {
    int? maxLines,
    TextOverflow? overflow,
    Color? selectionColor,
    bool? softWrap,
    TextStyle? style,
    TextAlign? textAlign,
    TextDirection? textDirection,
    Color? color,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
    double? fontSize,
    FontWeight? fontWeight,
    double? height,
    double letterSpacing = 0.25,
    List<Shadow>? shadows,
    double? wordSpacing,
  }) {
    return Text(
      data,
      maxLines: maxLines,
      overflow: overflow,
      selectionColor: selectionColor,
      softWrap: softWrap,
      style: (style ?? _dStyle).copyWith(
        color: color,
        decoration: decoration,
        decorationColor: decorationColor,
        decorationStyle: decorationStyle,
        decorationThickness: decorationThickness,
        fontSize: fontSize,
        fontWeight: fontWeight,
        height: height,
        letterSpacing: letterSpacing,
        shadows: shadows,
        wordSpacing: wordSpacing,
      ),
      textAlign: textAlign,
      textDirection: textDirection,
    );
  }

  Widget button({
    required Function() onPressed,
    required Widget child,
    bool autofocus = false,
    Function()? onLongPress,
    AlignmentGeometry? alignment,
    Color? backgroundColor,
    Color? disabledBackgroundColor,
    double? elevation,
    Size? maximumSize,
    Size? minimumSize,
    Color? overlayColor,
    Color? shadowColor,
    EdgeInsetsGeometry? padding,
    OutlinedBorder? shape,
    BorderRadiusGeometry? borderRadius,
    BorderSide? borderSide,
    MaterialTapTargetSize? tapTargetSize,
    Color? borderColor,
    double? borderWidth,
    bool enabled = true,
    bool shrink = false,
  }) {
    BorderRadius dBorderRadius = BorderRadius.circular(32);

    OutlinedBorder dShape = RoundedRectangleBorder(
      borderRadius: borderRadius ?? dBorderRadius,
    );

    Color dBorderColor = backgroundColor ?? Colors.transparent;
    double dBorderWidth = 1.0;

    BorderSide dBorderSide = BorderSide(
      color: borderColor ?? dBorderColor,
      width: borderWidth ?? dBorderWidth,
    );

    return FilledButton(
      onPressed: enabled ? onPressed : null,
      autofocus: autofocus,
      onLongPress: enabled ? onLongPress : null,
      style: FilledButton.styleFrom(
        alignment: alignment,
        backgroundColor: backgroundColor,
        disabledBackgroundColor: disabledBackgroundColor,
        elevation: elevation,
        maximumSize: maximumSize,
        minimumSize: shrink ? Size.zero : minimumSize,
        overlayColor: overlayColor,
        padding: padding,
        shadowColor: shadowColor,
        shape: shape ?? dShape,
        side: borderSide ?? dBorderSide,
        tapTargetSize: shrink ? MaterialTapTargetSize.shrinkWrap : tapTargetSize,
      ),
      child: child,
    );
  }

  Widget input({
    bool autoFocus = false,
    Widget? Function(
      BuildContext, {
      required int currentLength,
      required bool isFocused,
      required int? maxLength,
    })?
    buildCounter,
    TextEditingController? controller,
    Color? cursorColor,
    Color? cursorErrorColor,
    double? cursorHeight,
    Radius? cursorRadius,
    double? cursorWidth,
    InputDecoration? decoration,
    bool? enabled,
    Widget Function(BuildContext, String)? errorBuilder,
    bool expands = false,
    FocusNode? focusNode,
    String? initialValue,
    List<TextInputFormatter>? inputFormatters,
    Brightness? keyboardAppearance,
    TextInputType? keyboardType,
    int? maxLength,
    int? maxLines,
    int? minLines,
    bool obscureText = false,
    String? obscuringCharacter,
    Function(String)? onChanged,
    Function()? onEditingComplete,
    Function(String)? onFieldSubmitted,
    Function()? onTap,
    Function(PointerDownEvent)? onTapOutside,
    bool readOnly = false,
    TextStyle? style,
    TextAlign? textAlign,
    TextDirection? textDirection,
    String? Function(String?)? validator,
    EdgeInsetsGeometry? contentPadding,
    Widget? counter,
    TextStyle? counterStyle,
    String? counterText,
    InputBorder? disabledBorder,
    InputBorder? enabledBorder,
    Widget? error,
    InputBorder? errorBorder,
    int? errorMaxLines,
    TextStyle? errorStyle,
    String? errorText,
    Color? fillColor,
    bool? filled,
    InputBorder? focusedBorder,
    InputBorder? focusedErrorBorder,
    FloatingLabelAlignment? floatingLabelAlignment,
    TextStyle? floatingLabelStyle,
    Widget? helper,
    int? helperMaxLines,
    TextStyle? helperStyle,
    String? helperText,
    Widget? hint,
    int? hintMaxLines,
    TextStyle? hintStyle,
    String? hintText,
    Widget? icon,
    bool isDense = true,
    Widget? label,
    TextStyle? labelStyle,
    String? labelText,
    Widget? prefix,
    Widget? suffix,
    InputBorder? border,
    BorderSide? borderSide,
    Color? borderColor,
    double? borderWidth,
    BorderSide? disabledBorderSide,
    Color? disabledBorderColor,
    double? disabledBorderWidth,
    BorderSide? enabledBorderSide,
    Color? enabledBorderColor,
    double? enabledBorderWidth,
    BorderSide? errorBorderSide,
    Color? errorBorderColor,
    double? errorBorderWidth,
    BorderSide? focusedBorderSide,
    Color? focusedBorderColor,
    double? focusedBorderWidth,
    BorderSide? focusedErrorBorderSide,
    Color? focusedErrorBorderColor,
    double? focusedErrorBorderWidth,
  }) {
    double dCursorWidth = 2.0;
    String dObscuringCharacter = '•';

    double dSmallFontSize = 12;

    TextStyle dCounterStyle = _dStyle.copyWith(
      fontSize: dSmallFontSize,
    );

    TextStyle dErrorStyle = _dStyle.copyWith(
      fontSize: dSmallFontSize,
    );

    TextStyle dFloatingLabelStyle = _dStyle.copyWith(
      fontSize: dSmallFontSize,
    );

    TextStyle dHelperStyle = _dStyle.copyWith(
      fontSize: dSmallFontSize,
    );

    TextStyle dHintStyle = _dStyle.copyWith();

    TextStyle dLabelStyle = _dStyle.copyWith();

    void dOnTapOutside(_) {
      FocusManager.instance.primaryFocus?.unfocus();
    }

    TextAlign dTextAlign = TextAlign.start;

    InputBorder dBorder = UnderlineInputBorder();

    Color dBorderColor = Colors.black54;
    double dBorderWidth = 1.0;
    Color dDisabledBorderColor = Colors.grey;
    Color dErrorBorderColor = Colors.red;
    Color dFocusedBorderColor = Colors.black;
    double dFocusedBorderWidth = 1.5;

    BorderSide dDisabledBorderSide = BorderSide(
      color: disabledBorderColor ?? dDisabledBorderColor,
      width: disabledBorderWidth ?? dBorderWidth,
    );

    InputBorder dDisabledBorder = (border ?? dBorder).copyWith(
      borderSide: disabledBorderSide ?? dDisabledBorderSide,
    );

    BorderSide dEnabledBorderSide = BorderSide(
      color: enabledBorderColor ?? dBorderColor,
      width: enabledBorderWidth ?? dBorderWidth,
    );

    InputBorder dEnabledBorder = (border ?? dBorder).copyWith(
      borderSide: enabledBorderSide ?? dEnabledBorderSide,
    );

    BorderSide dErrorBorderSide = BorderSide(
      color: errorBorderColor ?? dErrorBorderColor,
      width: errorBorderWidth ?? dBorderWidth,
    );

    InputBorder dErrorBorder = (border ?? dBorder).copyWith(
      borderSide: errorBorderSide ?? dErrorBorderSide,
    );

    BorderSide dFocusedBorderSide = BorderSide(
      color: focusedBorderColor ?? dFocusedBorderColor,
      width: focusedBorderWidth ?? dFocusedBorderWidth,
    );

    InputBorder dFocusedBorder = (border ?? dBorder).copyWith(
      borderSide: focusedBorderSide ?? dFocusedBorderSide,
    );

    BorderSide dFocusedErrorBorderSide = BorderSide(
      color: focusedBorderColor ?? dFocusedBorderColor,
      width: focusedErrorBorderWidth ?? dFocusedBorderWidth,
    );

    InputBorder dFocusedErrorBorder = (border ?? dBorder).copyWith(
      borderSide: focusedErrorBorderSide ?? dFocusedErrorBorderSide,
    );

    return TextFormField(
      autofocus: autoFocus,
      buildCounter: buildCounter,
      controller: controller,
      cursorColor: cursorColor,
      cursorErrorColor: cursorErrorColor,
      cursorHeight: cursorHeight,
      cursorRadius: cursorRadius,
      cursorWidth: cursorWidth ?? dCursorWidth,
      decoration: (decoration ?? InputDecoration()).copyWith(
        contentPadding: contentPadding,
        counter: counter,
        counterStyle: counterStyle ?? dCounterStyle,
        counterText: counterText,
        disabledBorder: disabledBorder ?? dDisabledBorder,
        enabledBorder: enabledBorder ?? dEnabledBorder,
        error: error,
        errorBorder: errorBorder ?? dErrorBorder,
        errorMaxLines: errorMaxLines,
        errorStyle: errorStyle ?? dErrorStyle,
        errorText: errorText,
        fillColor: fillColor,
        filled: filled,
        focusedBorder: focusedBorder ?? dFocusedBorder,
        focusedErrorBorder: focusedErrorBorder ?? dFocusedErrorBorder,
        floatingLabelAlignment: floatingLabelAlignment,
        floatingLabelStyle: floatingLabelStyle ?? dFloatingLabelStyle,
        helper: helper,
        helperMaxLines: helperMaxLines,
        helperStyle: helperStyle ?? dHelperStyle,
        helperText: helperText,
        hint: hint,
        hintMaxLines: hintMaxLines,
        hintStyle: hintStyle ?? dHintStyle,
        hintText: hintText,
        icon: icon,
        isDense: isDense,
        label: label,
        labelStyle: labelStyle ?? dLabelStyle,
        labelText: labelText,
        prefix: prefix,
        suffix: suffix,
      ),
      enabled: enabled,
      errorBuilder: errorBuilder,
      expands: expands,
      focusNode: focusNode,
      initialValue: initialValue,
      inputFormatters: inputFormatters,
      keyboardAppearance: keyboardAppearance,
      keyboardType: keyboardType,
      maxLength: maxLength,
      maxLines: maxLines,
      minLines: minLines,
      obscureText: obscureText,
      obscuringCharacter: obscuringCharacter ?? dObscuringCharacter,
      onChanged: onChanged,
      onEditingComplete: onEditingComplete,
      onFieldSubmitted: onFieldSubmitted,
      onTap: onTap,
      onTapOutside: onTapOutside ?? dOnTapOutside,
      readOnly: readOnly,
      style: style ?? _dStyle,
      textAlign: textAlign ?? dTextAlign,
      textDirection: textDirection,
      validator: validator,
    );
  }

  Widget switchAdaptive({
    required bool value,
    required void Function(bool) onChanged,
    ImageProvider<Object>? activeThumbImage,
    bool autoFocus = false,
    ImageProvider<Object>? inactiveThumbImage,
    Function(Object, StackTrace?)? onActiveThumbImageError,
    Function(Object, StackTrace?)? onInactiveThumbImageError,
    EdgeInsetsGeometry? padding,
    WidgetStateProperty<Color?>? overlayColor,
    WidgetStateProperty<Color?>? thumbColor,
    Color? activeThumbColor,
    Color? inactiveThumbColor,
    WidgetStateProperty<Icon?>? thumbIcon,
    Icon? activeThumbIcon,
    Icon? inactiveThumbIcon,
    WidgetStateProperty<Color?>? trackColor,
    Color? activeTrackColor,
    Color? inactiveTrackColor,
    WidgetStateProperty<Color?>? trackOutlineColor,
    Color? activeTrackOutlineColor,
    Color? inactiveTrackOutlineColor,
    WidgetStateProperty<double?>? trackOutlineWidth,
    double? activeTrackWidth,
    double? inactiveTrackWidth,
  }) {
    Color dStatesOverlayColor = Colors.grey.withValues(alpha: 0.1);

    WidgetStateProperty<Color?>? dOverlayColor = WidgetStateProperty.resolveWith<Color>((states) {
      return dStatesOverlayColor;
    });

    Color dStatesThumbColor = Colors.white;

    WidgetStateProperty<Color> dThumbColor = WidgetStateProperty.resolveWith<Color>((states) {
      if (states.contains(WidgetState.selected)) {
        return activeThumbColor ??= dStatesThumbColor;
      }

      return inactiveThumbColor ??= dStatesThumbColor;
    });

    Icon dIcon = Icon(Icons.circle, color: Colors.transparent);

    WidgetStateProperty<Icon> dThumbIcon = WidgetStateProperty.resolveWith<Icon>((states) {
      if (states.contains(WidgetState.selected)) {
        return activeThumbIcon ??= dIcon;
      }

      return inactiveThumbIcon ??= dIcon;
    });

    Color dActiveTrackColor = Colors.green;
    Color dInactiveTrackColor = Colors.grey;

    WidgetStateProperty<Color?>? dTrackColor = WidgetStateProperty.resolveWith<Color>((states) {
      if (states.contains(WidgetState.selected)) {
        return activeTrackColor ??= dActiveTrackColor;
      }

      return inactiveTrackColor ??= dInactiveTrackColor;
    });

    Color dStatesTrackOutlineColor = Colors.transparent;

    WidgetStateProperty<Color?>? dTrackOutlineColor = WidgetStateProperty.resolveWith<Color>((states) {
      if (states.contains(WidgetState.selected)) {
        return activeTrackOutlineColor ??= dStatesTrackOutlineColor;
      }

      return inactiveTrackOutlineColor ??= dStatesTrackOutlineColor;
    });

    double dStatesTrackWidth = 1.0;

    WidgetStateProperty<double?>? dTrackOutlineWidth = WidgetStateProperty.resolveWith<double>((states) {
      if (states.contains(WidgetState.selected)) {
        return activeTrackWidth ??= dStatesTrackWidth;
      }

      return inactiveTrackWidth ??= dStatesTrackWidth;
    });

    return Switch.adaptive(
      value: value,
      activeThumbImage: activeThumbImage,
      autofocus: autoFocus,
      inactiveThumbImage: inactiveThumbImage,
      onActiveThumbImageError: onActiveThumbImageError,
      onInactiveThumbImageError: onInactiveThumbImageError,
      overlayColor: overlayColor ?? dOverlayColor,
      padding: padding,
      thumbColor: thumbColor ?? dThumbColor,
      thumbIcon: thumbIcon ?? dThumbIcon,
      trackColor: trackColor ?? dTrackColor,
      trackOutlineColor: trackOutlineColor ?? dTrackOutlineColor,
      trackOutlineWidth: trackOutlineWidth ?? dTrackOutlineWidth,
      onChanged: onChanged,
    );
  }

  Widget checkBoxAdaptive({
    required Function(bool?)? onChanged,
    required bool? value,
    Color? checkColor,
    WidgetStateProperty<Color?>? fillColor,
    bool isError = false,
    WidgetStateProperty<Color?>? overlayColor,
    OutlinedBorder? shape,
    BorderSide? borderSide,
    Color? borderColor,
    double? borderWidth,
    double? splashRadius,
    bool tristate = false,
    Color? activeBackgroundColor,
    Color? inactiveBackgroundColor,
  }) {
    Color dActiveBackgroundColor = Colors.blue;
    Color dInactiveBackgroundColor = Colors.white;

    WidgetStateProperty<Color> dFillColor = WidgetStateProperty.resolveWith((Set<WidgetState> states) {
      if (states.contains(WidgetState.selected)) {
        return activeBackgroundColor ?? dActiveBackgroundColor;
      }

      return inactiveBackgroundColor ?? dInactiveBackgroundColor;
    });

    Color dStatesOverlayColor = Colors.grey.withValues(alpha: 0.1);

    WidgetStateProperty<Color?>? dOverlayColor = WidgetStateProperty.resolveWith<Color>((states) {
      return dStatesOverlayColor;
    });

    Color dBorderColor = Colors.black;
    double dBorderWidth = 1.0;

    BorderSide dBorderSide = BorderSide(
      color: borderColor ?? dBorderColor,
      width: borderWidth ?? dBorderWidth,
    );

    return Checkbox.adaptive(
      onChanged: onChanged,
      value: value,
      checkColor: checkColor,
      fillColor: fillColor ?? dFillColor,
      isError: isError,
      overlayColor: overlayColor ?? dOverlayColor,
      shape: shape,
      side: borderSide ?? dBorderSide,
      splashRadius: splashRadius,
      tristate: tristate,
    );
  }

  Widget radioGroup<T>({
    required T groupValue,
    required void Function(T?) onChanged,
    required Widget child,
  }) {
    return RadioGroup<T>(
      groupValue: groupValue,
      onChanged: onChanged,
      child: child,
    );
  }

  Widget radioAdaptive<T>({
    required T value,
    double? innerRadius,
    double? splashRadius,
    bool toggleable = true,
    WidgetStateProperty<Color?>? backgroundColor,
    Color? selectecBackgroundColor,
    Color? unselectecBackgroundColor,
    WidgetStateProperty<Color?>? fillColor,
    Color? activeFillColor,
    Color? inactiveFillColor,
    WidgetStateProperty<Color?>? overlayColor,
    BorderSide? activeBorderSide,
    BorderSide? inactiveBorderSide,
    Color? activeBorderColor,
    double? activeBorderWidth,
    Color? inactiveBorderColor,
    double? inactiveBorderWidth,
  }) {
    Color dStatesBackgroundColor = Colors.white;

    WidgetStateProperty<Color?>? dBackgroundColor = WidgetStateColor.resolveWith((Set<WidgetState> states) {
      if (states.contains(WidgetState.selected)) {
        return selectecBackgroundColor ?? dStatesBackgroundColor;
      }

      return unselectecBackgroundColor ?? dStatesBackgroundColor;
    });

    Color dActiveFillColor = Colors.blue;
    Color dInactiveFillColor = Colors.grey;

    WidgetStateProperty<Color?>? dFillColor = WidgetStateColor.resolveWith((Set<WidgetState> states) {
      if (states.contains(WidgetState.selected)) {
        return activeFillColor ?? dActiveFillColor;
      }

      return inactiveFillColor ?? dInactiveFillColor;
    });

    double dInnerRadius = 6.0;

    Color dStatesOverlayColor = Colors.grey.withValues(alpha: 0.1);

    WidgetStateProperty<Color?>? dOverlayColor = WidgetStateProperty.resolveWith<Color>((states) {
      return dStatesOverlayColor;
    });

    Color dActiveBorderColor = Colors.blue;
    double dStatesBorderWidth = 1.0;

    BorderSide defaultActiveBorderSide = BorderSide(
      color: activeBorderColor ?? activeFillColor ?? dActiveBorderColor,
      width: activeBorderWidth ?? dStatesBorderWidth,
    );

    Color dInactiveBorderColor = Colors.grey;

    BorderSide defaultInactiveBorderSide = BorderSide(
      color: inactiveBorderColor ?? inactiveFillColor ?? dInactiveBorderColor,
      width: inactiveBorderWidth ?? dStatesBorderWidth,
    );

    BorderSide side = WidgetStateBorderSide.resolveWith((Set<WidgetState> states) {
      if (states.contains(WidgetState.selected)) {
        return activeBorderSide ?? defaultActiveBorderSide;
      }

      return inactiveBorderSide ?? defaultInactiveBorderSide;
    });

    return Radio.adaptive(
      value: value,
      backgroundColor: backgroundColor ?? dBackgroundColor,
      fillColor: fillColor ?? dFillColor,
      innerRadius: WidgetStatePropertyAll<double>(innerRadius ?? dInnerRadius),
      overlayColor: overlayColor ?? dOverlayColor,
      side: side,
      splashRadius: splashRadius,
      toggleable: toggleable,
    );
  }
}

MainWidget get w => MainWidget._instance;
