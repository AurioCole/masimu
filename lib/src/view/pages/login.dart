import 'package:flutter/material.dart';
import 'package:masimu_app/src/view/components/button.dart';
import 'package:masimu_app/src/view/components/passwordTextField.dart';
import 'package:masimu_app/src/view/components/textForm.dart';
import 'package:masimu_app/src/view/components/topBar.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                "Entrar", 
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
              const Opacity(
                opacity: 0.9,
                child:Image(
                  image: AssetImage(
                    "lib/assets/images/main-logo.png"
                  ),
                  width: 78, 
                  height: 100,
                ),
              ),
              const SizedBox(height: 20),
              const TextForm(hintText: "Email"),
              const PasswordTextField(hintText: "Senha"),
              Row(
                children: <Widget> [
                  Checkbox(
                    side: const BorderSide(
                      color: Colors.black45,
                      width: 1.5
                    ),
                    activeColor: const Color(0xff639655),
                    value: isChecked, 
                    onChanged: (newvalue){
                      setState(() {
                        isChecked = newvalue;
                      });
                    }
                  ),
                  const Text(
                    "Lembrar-me",
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w400
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              const Button(text: "Entrar"),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  TextButton(
                    onPressed: (){
                      Navigator.of(context).pushReplacementNamed("/signup");
                    },
                    child: const Text(
                      "Criar Conta",
                      style: TextStyle(
                        color: Color(0xff639655),
                        fontSize: 15,
                      ),
                    )
                  ),
                  TextButton(
                    onPressed: () {}, 
                    child: const Text(
                      "Esqueceu a Senha?",
                      style: TextStyle(
                        color: Color(0xff639655),
                        fontSize: 15,
                      ),
                    )
                  )
                ],
              )              
            ],
          )
        ),
      ),
    );
  }
}