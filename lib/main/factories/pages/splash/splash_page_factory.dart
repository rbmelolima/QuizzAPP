import 'package:flutter/material.dart';
import 'package:quizzApp/main/factories/factories.dart';
import 'package:quizzApp/ui/pages/pages.dart';

Widget makeSplashPage() {
  return SplashPage(presenter: makeGetxSplashPresenter());
}
