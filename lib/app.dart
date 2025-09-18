import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'config/app_router.dart';


class TestTask extends StatelessWidget {
  const TestTask({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppDevicePreview();
  }
}


class AppDevicePreview extends StatelessWidget {
  const AppDevicePreview({super.key});

  @override
  Widget build(BuildContext context)
  {
    return DevicePreview(
      enabled: false,
      builder: (context) => const AppScreenUtil(),
    );
  }
}


class AppScreenUtil extends StatelessWidget {
  const AppScreenUtil({super.key});

  @override
  Widget build(BuildContext context)
  {
    return ScreenUtilInit(
      designSize: const Size(440, 956),
      builder: (context, child) => const AppMaterial(),
    );
  }
}


class AppMaterial extends StatelessWidget {
  const AppMaterial({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
    );
  }
}
