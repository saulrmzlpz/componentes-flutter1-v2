import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myFormKey = GlobalKey<FormState>();
    final Map<String, String> formValues = {
      'first_name': '',
      'last_name': '',
      'email': '',
      'password': '',
      'role': '',
    };
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Form(
          key: myFormKey,
          child: Column(children: [
            CustomInputField(
              labelText: 'Nombre',
              hintText: 'Nombre del usuario',
              formProperty: 'first_name',
              formValues: formValues,
            ),
            const SizedBox(
              height: 30,
            ),
            CustomInputField(
              labelText: 'Apellido',
              hintText: 'Apellido del usuario',
              formProperty: 'last_name',
              formValues: formValues,
            ),
            const SizedBox(
              height: 30,
            ),
            CustomInputField(
              labelText: 'Correo',
              hintText: 'Correo del usuario',
              keyboardType: TextInputType.emailAddress,
              formProperty: 'email',
              formValues: formValues,
            ),
            const SizedBox(
              height: 30,
            ),
            CustomInputField(
              labelText: 'contraseña',
              hintText: 'contraseña del usuario',
              keyboardType: TextInputType.emailAddress,
              formProperty: 'password',
              formValues: formValues,
              isPassword: true,
            ),
            const SizedBox(
              height: 30,
            ),
            DropdownButtonFormField<String>(
                items: const [
                  DropdownMenuItem(
                      value: 'Superuser', child: Text('Superuser')),
                  DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                  DropdownMenuItem(
                      value: 'Developer', child: Text('Developer')),
                  DropdownMenuItem(
                      value: 'Jr. Developer', child: Text('Jr. Developer')),
                ],
                onChanged: (value) {
                  formValues['role'] = value ?? 'Admin';
                }),
            ElevatedButton(
              child: const SizedBox(
                  width: double.infinity,
                  child: Center(child: Text('Guardar'))),
              onPressed: () {
                FocusScope.of(context).requestFocus(FocusNode());
                if (!myFormKey.currentState!.validate()) {
                  print('Formulario no válido');
                  return;
                }
                print(formValues);
              },
            )
          ]),
        ),
      ),
    );
  }
}
