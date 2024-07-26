import 'package:docdoc/core/di/dependency_injection.dart';
import 'package:docdoc/core/routing/app_router.dart';
import 'package:docdoc/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<void> main() async {
  // fix font in realese mode
  await ScreenUtil.ensureScreenSize();
  setupGetIt();
  runApp( DocDoc( appRouter: AppRouter(),));
}

