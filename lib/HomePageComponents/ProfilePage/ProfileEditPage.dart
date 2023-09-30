import 'package:flutter/material.dart';

class LoginBox extends StatefulWidget {
  @override
  _LoginBoxState createState() => _LoginBoxState();
}

class _LoginBoxState extends State<LoginBox> {
  final _formKey = GlobalKey<FormState>();
  late String _email, _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                validator: (input) {
                  if(input!.isEmpty){
                    return 'Provide an email';
                  }
                },
                onSaved: (input) => _email = input!,
                decoration: InputDecoration(
                    labelText: 'Email'
                ),
              ),
              TextFormField(
                validator: (input) {
                  if(input!.length < 6){
                    return 'Longer password please';
                  }
                },
                onSaved: (input) => _password = input!,
                decoration: InputDecoration(
                    labelText: 'Password'
                ),
                obscureText: true,
              ),
              TextButton(
                onPressed: _submit,
                child: Text('Submit'),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _submit() {
    if(_formKey.currentState!.validate()){
      _formKey.currentState!.save();
      // Perform login
    }
  }
}
