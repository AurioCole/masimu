import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:masimu_app/src/view/components/button.dart';
import 'package:masimu_app/src/view/components/password_textfield.dart';
import 'package:masimu_app/src/view/components/text_form.dart';
import 'package:masimu_app/src/view/components/top_bar.dart';
import 'package:masimu_app/src/viewModel/login_viewmodel.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final auth = LoginViewModel();

  bool? isChecked = false;

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    auth.addListener(() {
      setState(() {});
    });
  }

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
                "Entrar", 
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
              const SizedBox(height: 60),
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
              const SizedBox(height: 20),
              TextForm(hintText: "Email", controller: emailController),
              PasswordTextField(hintText: "Senha", controller: passwordController),
              Row(
                children: <Widget> [
                  Checkbox(
                    side: const BorderSide(
                      color: Color(0xff3D3D3D),
                      width: 1.5
                    ),
                    activeColor: const Color(0xFF39B54A),
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
                      color: Color(0xff3D3D3D),
                      fontWeight: FontWeight.w400
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              Button(
                text: "Entrar",
                onPressed: () {
                  auth.signIn(context, emailController.text, passwordController.text);
                },
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  TextButton(
                    onPressed: () => context.pushReplacement("/signup"),
                    child: const Text(
                      "Criar Conta",
                      style: TextStyle(
                        color: Color(0xFF39B54A),
                        fontSize: 15,
                      ),
                    )
                  ),
                  TextButton(
                    onPressed: () {}, 
                    child: const Text(
                      "Esqueceu a Senha?",
                      style: TextStyle(
                        color: Color(0xFF39B54A),
                        fontSize: 15,
                      ),
                    )
                  )
                ],
              )              
            ],
          )
        )
      ),
    );
  }
}