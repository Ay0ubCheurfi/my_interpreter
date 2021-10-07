import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'splash_viewmodel.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SplashViewModel>.reactive(
      onModelReady: (model) {
        WidgetsBinding.instance!.addPostFrameCallback((_) {
          model.checkIfAssistantIsinstalled();
        });
      },
      builder: (context, model, child) => Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Color(0xff5768FE),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.translate,
                color: Colors.white,
                size: 70,
              ),
              const SizedBox(height: 50),
              Container(
                height: 25,
                width: 25,
                child: CircularProgressIndicator(
                  color: Colors.white,
                  strokeWidth: 2.5,
                ),
              ),
            ],
          ),
        ),
      ),
      viewModelBuilder: () => SplashViewModel(),
    );
  }
}
