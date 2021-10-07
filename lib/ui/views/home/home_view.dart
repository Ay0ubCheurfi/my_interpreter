import 'package:flutter/material.dart';
import 'package:language_picker/language_picker_dropdown.dart';
import 'package:language_picker/languages.dart';
import 'package:language_picker/languages.g.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Image.asset(
                  'assets/images/App_Translate_Language_05_generated.jpg',
                ),
              ),
              const SizedBox(height: 15),
              Container(
                child: Opacity(
                  opacity: .6,
                  child: LanguagePickerDropdown(
                    initialValue: Languages.french,
                    onValuePicked: model.setSelectedLanguageTo,
                  ),
                ),
                margin: const EdgeInsets.symmetric(horizontal: 20.0),
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                height: 65,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 1, color: Color(0xff5768FE)),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              const SizedBox(height: 15),
              Text(
                'select a language to be interpreted to',
                textAlign: TextAlign.center,
                style: TextStyle(color: Color(0xff16155C).withOpacity(.55)),
              ),
              const SizedBox(height: 60),
              Text(
                'Tap to launch Google\nassistant in interpretor mode',
                textAlign: TextAlign.center,
                style: TextStyle(color: Color(0xff16155C), fontSize: 17.5),
              ),
              const SizedBox(height: 40),
              GestureDetector(
                onTap: model.activateInterpreterMode,
                child: Container(
                  height: 100,
                  width: 100,
                  child: Center(
                    child: Container(
                      child: Icon(Icons.translate, color: Colors.white),
                      height: 72,
                      width: 72,
                      decoration: BoxDecoration(
                        color: Color(0xff5768FE),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xff5768FE).withOpacity(.35),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}
