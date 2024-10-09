import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:timasso_escalacao/app/routes/app_pages.dart';
import 'package:timasso_escalacao/utils/primary_theme.dart';
import 'package:timasso_escalacao/utils/utils.dart';

void main() => runApp(const TimassoEscalacao());

class TimassoEscalacao extends StatelessWidget {
  const TimassoEscalacao({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = createTextTheme(context, "Anton", "Anton");
    PrimaryTheme theme = PrimaryTheme(textTheme);

    return GetMaterialApp(
      title: "Timasso Escalação",
      theme: theme.light(),
      initialRoute: AppPages.initial,
      //debugShowCheckedModeBanner: false,
      getPages: AppPages.routes,
    );
  }
}
