import 'package:flutter/material.dart';
import 'package:testing/app1/ui/styles/colors.dart';

class EmptyWidget extends StatelessWidget {
  final String msg;
  final double height;

  EmptyWidget({Key? key, required this.msg, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      child: Center(
        child: Text(
          msg,
          style: TextStyle(color: AppColors.lightColor),
        ),
      ),
    );
  }
}

class LoadingWidget extends StatelessWidget {
  final double height;

  const LoadingWidget({Key? key, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 25.0,
              width: 25.0,
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(AppColors.whiteColor),
                strokeWidth: 4.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}