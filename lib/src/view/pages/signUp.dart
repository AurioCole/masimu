// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:masimu_app/src/view/components/button.dart';
import 'package:masimu_app/src/view/components/passwordTextField.dart';
import 'package:masimu_app/src/view/components/textForm.dart';
import 'package:masimu_app/src/view/components/topBar.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("lib/assets/images/auth-bg2.png"),
          fit: BoxFit.cover
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          title: const Row(
            children: [
              Icon(
                Icons.arrow_back_ios,
                color: Colors.black54
              ),
              Text(
                "Criar Conta", 
                style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.w600
                ),
              ),
            ],
          ),
          backgroundColor: Colors.transparent,
        ),
        body: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget> [
              const TopBar(),
              const SizedBox(height: 60),
              const SizedBox(height: 20),
              const TextForm(hintText: "Nome"),
              const TextForm(hintText: "Email"),
              const PasswordTextField(hintText: "Senha"),
              const PasswordTextField(hintText: "Confirmar Senha"),
              const SizedBox(height: 20),
              const Button(text: "Criar Conta"),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  const Text("Possui uma conta?"),
                  TextButton(
                   onPressed: (){
                    Navigator.of(context).pushReplacementNamed("/");
                   },
                    child: const Text(
                      "Entrar",
                      style: TextStyle(
                        color: Color(0xff639655),
                        fontSize: 15,
                      ),
                    )
                  ),
                ],
              )              
            ],
          )
        ),
      ),
    );
  }
}