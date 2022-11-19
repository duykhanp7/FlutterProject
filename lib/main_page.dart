import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:learn_flutter/app_storage.dart';
import 'package:learn_flutter/home_page.dart';
import 'package:learn_flutter/login_controller.dart';
import 'package:learn_flutter/login_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'l10n/generated/l10n.dart';

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainPage();
  }
}

class _MainPage extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: "/LoginPage",
      getPages: [
        GetPage(
            name: "/LoginPage",
            page: () => LoginPage(),
            binding: BindingsBuilder(
              () {
                Get.lazyPut(() => LoginController());
              },
            )),
        GetPage(
          name: "/HomePage",
          page: () => HomePage(),
        )
      ],
      locale: Locale(AppStorage.getLanguages()),
      localizationsDelegates: const [
        SLocation.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [Locale('vi'), Locale('en')],
    );
  }
}
