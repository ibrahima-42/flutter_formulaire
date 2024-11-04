import 'package:flutter/material.dart';

class AddUser extends StatefulWidget {
  const AddUser({super.key});

  @override
  State<AddUser> createState() => _AddUserState();
}

class _AddUserState extends State<AddUser> {
  String? genre = 'Homme';
  final _keyForm = GlobalKey<FormState>();
  final TextEditingController _nomController = new TextEditingController();
  final TextEditingController _prenomController = new TextEditingController();
  final TextEditingController _emailController = new TextEditingController();
  final TextEditingController _phoneController = new TextEditingController();
  final TextEditingController _dateController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(padding: EdgeInsets.only(top: 50.0)),
              const Text(
                'Ajouter un utilisateur',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 32.0,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Form(
                key: _keyForm,
                child: Column(
                  children: [
                    SizedBox(
                      width: 364.0,
                      child: TextFormField(
                        controller: _nomController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'le champ nom est obligatiore';
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          labelText: 'Nom',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    SizedBox(
                      width: 364.0,
                      child: TextFormField(
                        controller: _prenomController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'le champ prenom est obligatoire';
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          labelText: 'Prenom',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    SizedBox(
                      width: 364.0,
                      child: TextFormField(
                        controller: _phoneController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'le champ telephone est obligatoire';
                          }
                          return null;
                        },
                        keyboardType: TextInputType.phone,
                        decoration: const InputDecoration(
                          labelText: 'Telephone',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    SizedBox(
                      width: 364.0,
                      child: TextFormField(
                        controller: _emailController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'le champ email est obligatoire';
                          }
                          return null;
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          labelText: 'email',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    SizedBox(
                      width: 364.0,
                      child: TextFormField(
                        controller: _dateController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'le champ date naissance est obligatoire';
                          }
                          return null;
                        },
                        keyboardType: TextInputType.datetime,
                        decoration: const InputDecoration(
                          labelText: 'date de naissance',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    RadioListTile(
                        title: const Text("Homme"),
                        value: 'Homme',
                        groupValue: genre,
                        onChanged: (value) {
                          setState(() {
                            genre = value;
                          });
                        }),
                    RadioListTile(
                        title: const Text("Femme"),
                        value: 'Femme',
                        groupValue: genre,
                        onChanged: (value) {
                          setState(() {
                            genre = value;
                          });
                        }),
                    const SizedBox(
                      height: 10.0,
                    ),
                    SizedBox(
                      width: 364.0,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueAccent,
                        ),
                        onPressed: () {
                          print(_keyForm.currentState!.validate());
                          print(_nomController.text);
                          print(_prenomController.text);
                          print(_phoneController.text);
                          print(_emailController.text);
                          print(_dateController.text);
                        },
                        child: Text(
                          'Enregistrer',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
