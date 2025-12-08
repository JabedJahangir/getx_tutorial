import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'gender_selection_controller.dart';

class GenderSelection extends StatelessWidget {
  GenderSelection({super.key});

  final List<String> genders = ['Male', 'Female', 'Other'];

  @override
  Widget build(BuildContext context) {
    final genderController = Get.put(GenderController());
    print('build');
    return Scaffold(
      appBar: AppBar(title: Text("RadioMenuButton with Obx")),
      body: Obx(
        () => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RadioMenuButton(
              value: genders[0],
              groupValue: genderController.selectedGender.value,
              onChanged: (value) =>
                  genderController.selectedGender.value = value!,
              child: Text('Male'),
            ),
            RadioMenuButton(
              value: genders[1],
              groupValue: genderController.selectedGender.value,
              onChanged: (value) =>
                  genderController.selectedGender.value = value!,
              child: Text('Female'),
            ),
            RadioMenuButton(
              value: genders[2],
              groupValue: genderController.selectedGender.value,
              onChanged: (value) =>
                  genderController.selectedGender.value = value!,
              child: Text('Other'),
            ),
          ],
        ),
      ),
    );
  }
}
