import 'package:appsivalmattel/app/ui/views/login/widgets/login_form.dart';
import 'package:appsivalmattel/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BodyForm extends StatelessWidget {
  const BodyForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            width: MediaQuery.of(context).size.width * .35,
            color: Colors.white,
          ),
        ),
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * .342,
          padding: const EdgeInsets.all(40.0),
          decoration: BoxDecoration(
            color: AppColors.kBase,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(70.r),
            ),
          ),
          child: Row(
            children: [
              Image.asset(
                "assets/logo_transparente1w.png",
              )
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * .6,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(70.r),
              ),
            ),
            child: const LoginForm(),
          ),
        ),
      ],
    );
  }
}
