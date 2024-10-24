import 'package:chat/models/auth_form_data.dart';
import 'package:flutter/material.dart';

class AuthForm extends StatefulWidget {
  const AuthForm({super.key});

  @override
  State<AuthForm> createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  final _formKey = GlobalKey<FormState>();
  final _fromData = AuthFormData();

  void _submit() {
    _formKey.currentState?.validate();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(20),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              if (_fromData.isSignup)
              TextFormField(
                key: const ValueKey('name'),
                initialValue: _fromData.name,
                onChanged: (name) => _fromData.name = name,
                decoration: const InputDecoration(labelText: 'Nome'),
              ),
              TextFormField(
                key: const ValueKey('email'),
                initialValue: _fromData.email,
                onChanged: (email) => _fromData.email = email,
                decoration: const InputDecoration(labelText: 'E-mail'),
              ),
              TextFormField(
                key: const ValueKey('password'),
                initialValue: _fromData.password,
                onChanged: (password) => _fromData.password = password,
                obscureText: true,
                decoration: const InputDecoration(labelText: 'Senha'),
              ),
              const SizedBox(height: 12),
              ElevatedButton(
                onPressed: _submit,
                child: Text(
                  _fromData.isLogin ? 'Entrar' : 'Cadastrar',
                ),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    _fromData.toggleAuthMode();
                  });
                },
                child: Text(
                  _fromData.isLogin
                      ? 'Criar uma nova conta?'
                      : 'Já possui conta?',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
