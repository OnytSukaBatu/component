import 'dart:developer' as dev;

import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

part 'navigation_function.dart';
part 'overlay_function.dart';

class MainFunction with NavigationFunction, OverlayFunction {
  static final MainFunction _instance = MainFunction._internal();
  MainFunction._internal();
  factory MainFunction() => _instance;

  void log(
    dynamic log, {
    Color? color,
    String? name,
    bool? bold,
    bool? faint,
    bool? italic,
    bool? underline,
  }) {
    name ??= 'log';
    String logStr = log is String ? log : log.toString();

    List<String> codes = [];
    if (bold == true) codes.add('1');
    if (faint == true) codes.add('2');
    if (italic == true) codes.add('3');
    if (underline == true) codes.add('4');

    if (color != null) {
      int red = (color.r * 255.0).round() & 0xff;
      int green = (color.g * 255.0).round() & 0xff;
      int blue = (color.b * 255.0).round() & 0xff;
      codes.add('38;2;$red;$green;$blue');
    }

    if (codes.isNotEmpty) {
      String start = '\x1B[${codes.join(';')}m';
      String end = '\x1B[0m';

      logStr = logStr.split('\n').map((line) => '$start$line$end').join('\n');
    }

    dev.log(logStr, name: name);
  }
}

MainFunction get f => MainFunction._instance;
