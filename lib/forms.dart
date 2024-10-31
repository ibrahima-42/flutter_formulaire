import 'package:flutter/material.dart';

class Forms extends StatefulWidget {
  const Forms({super.key});

  @override
  State<Forms> createState() => _FormsState();
}

class _FormsState extends State<Forms> {
  bool isPasswordObscure = true;
  String? genre = 'Homme';
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        children: [
          TextFormField(
            validator: (value) {
              if (value!.isEmpty) {
                return "l'email doit etre renseigner";
              }
            },
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
                labelText: 'email', border: OutlineInputBorder()),
          ),
          const SizedBox(
            height: 20.0,
          ),
          TextFormField(
            obscureText: isPasswordObscure,
            decoration: const InputDecoration(
                labelText: 'password', border: OutlineInputBorder()),
          ),
          const SizedBox(
            height: 20.0,
          ),
          TextFormField(
            // obscureText: isPasswordObscure,
            keyboardType: TextInputType.datetime,
            decoration: const InputDecoration(
                labelText: 'Date', border: OutlineInputBorder()),
          ),
          const SizedBox(
            height: 20.0,
          ),

          const TextField(
            decoration: InputDecoration(
                labelText: 'address', border: OutlineInputBorder()),
          ),

          RadioListTile(
              title: Text('Homme'),
              value: 'Homme',
              groupValue: genre,
              onChanged: (value) {
                setState(() {
                  genre = value;
                });
              }),
          RadioListTile(
              title: Text('Femme'),
              value: 'Femme',
              groupValue: genre,
              onChanged: (value) {
                setState(() {
                  genre = value;
                });
              }),

          CheckboxListTile(
              title: Text('Banane'),
              value: isChecked,
              onChanged: (value) {
                print(value);
                setState(() {
                  isChecked = value;
                });
              })

          // IconButton(
          //     onPressed: () {
          //       setState(() {
          //         isPasswordObscure = !isPasswordObscure;
          //       });
          //     },
          //     icon: Icon(
          //       isPasswordObscure
          //           ? Icons.remove_red_eye
          //           : Icons.visibility_off_outlined,
          //     ))
        ],
      ),
    ));
  }
}
