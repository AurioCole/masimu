// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:masimu_app/src/service/firebase_service.dart';
import 'package:masimu_app/src/view/components/button.dart';
import 'package:masimu_app/src/view/components/password_textfield.dart';
import 'package:masimu_app/src/view/components/text_form.dart';
import 'package:masimu_app/src/view/components/top_bar.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool? isChecked = false;

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final FirebaseAuthService auth = FirebaseAuthService();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

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
                color: Color(0xff3D3D3D)
              ),
              Text(
                "Criar Conta", 
                style: TextStyle(
                  color: Color(0xff3D3D3D),
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
              const SizedBox(height: 100),
              const Opacity(
                opacity: 0.9,
                child:Image(
                  image: AssetImage(
                    "lib/assets/images/LogoUpdated.png"
                  ),
                  width: 100, 
                  height: 100,
                ),
              ),
              //const TextForm(hintText: "Nome"),
              TextForm(hintText: "Email", controller: emailController),
              PasswordTextField(hintText: "Senha", controller: passwordController),
              const SizedBox(height: 20),
              Button(
                text: "Criar Conta",
                onPressed: (){
                  auth.signUp(emailController.text, passwordController.text);
                }
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  const Text("Possui uma conta?", style: TextStyle(color: Color(0xff3D3D3D)),),
                  TextButton(
                   onPressed: (){
                    context.pushReplacement("/login");
                   },
                    child: const Text(
                      "Entrar",
                      style: TextStyle(
                        color: Color(0xFF39B54A),
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