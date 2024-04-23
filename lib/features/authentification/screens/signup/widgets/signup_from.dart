import 'package:flutter/material.dart';
import 'package:maisonparfaite/features/authentification/controllers/authentification.dart';
import 'package:get/get.dart';

class TSignupForm extends StatefulWidget {
  const TSignupForm({Key? key}) : super(key: key);

  @override
  State<TSignupForm>createState() => _TSignupFormState();
}

class _TSignupFormState extends State<TSignupForm> {
  // Define controller for each text field
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneNoController = TextEditingController();
  final TextEditingController _typeController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final AuthentificationController _authentificationController =
      Get.put(AuthentificationController());

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            controller: _firstNameController,
            obscureText: false,
            decoration: const InputDecoration(
            hintText: 'nom',
            ),
          ),
          TextFormField(
            controller: _lastNameController,
            obscureText: false,
            decoration: const InputDecoration(
              hintText: 'prenom',
            ),
          ),
          TextFormField(
            controller: _emailController,
            obscureText: false,
            decoration: const InputDecoration(
              hintText: 'email',
            ),
          ),
          TextFormField(
            controller: _passwordController,
            obscureText: true,
            decoration: const InputDecoration(
              hintText: 'password',
            ),
          ),
          TextFormField(
            controller: _phoneNoController,
            obscureText: false,
            decoration: const InputDecoration(
              hintText: 'numero_tel',
            ),
          ),
          
           DropdownButtonFormField<String>(
    value: _typeController.text.isEmpty ? 'client' : _typeController.text,
    hint: const Text('Select Type'),
    items: const [
      DropdownMenuItem<String>(
        value: 'client',
        child: Text('Client'),
      ),
      DropdownMenuItem<String>(
        value: 'magasinier',
        child: Text('Magasinier'),
      ),
    ],
    onChanged: (value) {
      setState(() {
        _typeController.text = value!;
      });
    },
  ),

          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              elevation: 0,
              padding: const EdgeInsets.symmetric(
                horizontal: 50,
                vertical: 15,
              ),
            ),
            onPressed: () async {
              await _authentificationController.signup(
                nom: _firstNameController.text.trim(),
                prenom: _lastNameController.text.trim(),
                email: _emailController.text.trim(),
                password: _passwordController.text.trim(),
                numero_tel: _phoneNoController.text.trim(),
                type: _typeController.text.trim(),
              );
            },
            child: Obx(() {
              return _authentificationController.isLoading.value
                  ? const Center(
                      child: CircularProgressIndicator(
                        color: Colors.white,
                      ),
                    )
                  : Text(
                      'SignUp',
                    );
            }),
          ),
        ],
      ),
    );
  }
}
