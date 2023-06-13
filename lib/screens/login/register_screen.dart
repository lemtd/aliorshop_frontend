import 'package:flutter/material.dart';
import 'package:pockectcheff/screens/login/login_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey();

  bool _passwordObscure = true;
  bool _confirmPasswordObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFEDEDED),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(
          10,
          0,
          10,
          0,
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Image.asset('veggie.png', width: 150,)
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "Já é usuário? ",
                      style: TextStyle(
                        color: Color(0XFF3B5137),
                        fontWeight: FontWeight.bold,
                        fontSize: 11,
                      ),
                    ),
                    InkWell(
                      child: new Text(
                        'Faça login.',
                        style: TextStyle(
                          color: Color(0XFFFC8228),
                          fontWeight: FontWeight.bold,
                          fontSize: 11,
                        ),
                      ),
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        cursorColor: Color(0XFFFC8228),
                        keyboardType: TextInputType.name,
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: InputBorder.none,
                          labelText: "Nome",
                          labelStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                        controller: nameController,
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                        textAlign: TextAlign.center,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Insira seu nome";
                          } else {
                            return null;
                          }
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        cursorColor: Color(0XFFFC8228),
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: InputBorder.none,
                          labelText: "E-mail",
                          labelStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                        controller: emailController,
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                        textAlign: TextAlign.center,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Insira seu email";
                          } else {
                            return null;
                          }
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        obscureText: _passwordObscure,
                        cursorColor: Color(0XFFFC8228),
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: InputBorder.none,
                          labelText: "Senha",
                          labelStyle: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 15,
                          ),
                          suffixIcon: IconButton(
                              icon: Icon(_passwordObscure
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                              onPressed: () {
                                setState(() {
                                  _passwordObscure = !_passwordObscure;
                                });
                              }),
                        ),
                        controller: passwordController,
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                        textAlign: TextAlign.center,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Insira sua senha";
                          } else {
                            return null;
                          }
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        obscureText: _confirmPasswordObscure,
                        cursorColor: Color(0XFFFC8228),
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: InputBorder.none,
                          labelText: "Confirme a senha",
                          labelStyle: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 15,
                          ),
                          suffixIcon: IconButton(
                              icon: Icon(_confirmPasswordObscure
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                              onPressed: () {
                                setState(() {
                                  _confirmPasswordObscure =
                                      !_confirmPasswordObscure;
                                });
                              }),
                        ),
                        controller: confirmPasswordController,
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                        textAlign: TextAlign.center,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Confirme sua senha";
                          } else {
                            return null;
                          }
                        },
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Ao clicar em Cadastrar, você concorda com",
                            style: TextStyle(
                              color: Color(0XFF3B5137),
                              fontWeight: FontWeight.bold,
                              fontSize: 11,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "os nossos ",
                                style: TextStyle(
                                  color: Color(0XFF3B5137),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 11,
                                ),
                              ),
                              InkWell(
                                child: new Text(
                                  'Termos de uso.',
                                  style: TextStyle(
                                    color: Color(0XFFFC8228),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 11,
                                  ),
                                ),
                                onTap: () {},
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ButtonTheme(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size.fromHeight(50),
                            primary: Color(0XFF91C788),
                          ),
                          onPressed: () {
                          },
                          child: Text("Cadastrar"),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      InkWell(
                        child: new Text(
                          'Voltar',
                          style: TextStyle(
                            color: Color(0XFF3B5137),
                            fontWeight: FontWeight.bold,
                            fontSize: 11,
                          ),
                        ),
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
