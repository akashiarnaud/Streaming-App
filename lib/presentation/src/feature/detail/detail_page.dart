import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home/widget/category_list.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  final _formKey = GlobalKey<FormState>();
  // controller get from category list page
  final Controller ctrl = Get.find();
  // to change button color if its pressed
  var isValidatePressed = false.obs;
  // to change button color if form is validated
  var isFormValidated = false.obs;
  @override
  Widget build(BuildContext context) {
    print(isValidatePressed.value);
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Page, view count: ${ctrl.count}'),
      ),
      body: Center(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(children: [
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Email*',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez saisir un email*';
                  } else {
                    if (!RegExp(
                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        .hasMatch(value)) {
                      return 'Veuillez saisir un email valide';
                    }
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Pseudo*',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Veuillez entrer un pseudo';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              Obx(
                () => ElevatedButton(
                    onPressed: () {
                      isValidatePressed.value = true;
                      if (_formKey.currentState!.validate()) {
                        isFormValidated.value = true;
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text(
                                  'Le formulaier est valide et la couleur du bouton est verte !')),
                        );
                      } else {
                        isFormValidated.value = false;
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: !isValidatePressed.value
                          ? Colors.blue
                          : isFormValidated.value
                              ? Colors.green
                              : Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0),
                      ),
                    ),
                    child: const Text('Submit')),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
