import 'package:flutter/material.dart';

class RegisterAlimentoScreen extends StatefulWidget {
  const RegisterAlimentoScreen({super.key});

  @override
  State<RegisterAlimentoScreen> createState() => _RegisterAlimentoScreenState();
}

class _RegisterAlimentoScreenState extends State<RegisterAlimentoScreen> {
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
      appBar: AppBar(backgroundColor: Color(0XFFEDEDED),),
      backgroundColor: const Color(0XFFEDEDED),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(0.0),
                child: Text(
                  'Cadastre seu Alimento',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              // Align(
              //   alignment: Alignment.centerLeft,
              //   child: Image.asset('assets/venda.png', width: 150,)
              // ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 15,
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      cursorColor: const Color(0XFFFC8228),
                      keyboardType: TextInputType.name,
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: InputBorder.none,
                        labelText: "Alimento",
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      controller: nameController,
                      style: const TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      textAlign: TextAlign.center,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Alimento";
                        } else {
                          return null;
                        }
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      cursorColor: const Color(0XFFFC8228),
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: InputBorder.none,
                        labelText: "Descrição",
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      controller: emailController,
                      style: const TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      textAlign: TextAlign.center,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Descrição";
                        } else {
                          return null;
                        }
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      cursorColor: const Color(0XFFFC8228),
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: InputBorder.none,
                        labelText: "Preço (R\$)",
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      controller: emailController,
                      style: const TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      textAlign: TextAlign.center,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Preço (R\$)";
                        } else {
                          return null;
                        }
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      child: Text(
                        textAlign: TextAlign.center,
                        "Certificação por auditoria, participativa ou vinculada a uma organização de controle social",
                        style: TextStyle(
                          color: Color(0XFF3B5137),
                          fontWeight: FontWeight.bold,
                          fontSize: 11,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () => {},
                      child:  const Text('Upload', style: TextStyle(color: Colors.orange,)),
                       style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 255, 255, 255),
                        ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      child: Text(
                        textAlign: TextAlign.center,
                        "Instruções normativas",
                        style: TextStyle(
                          color: Color(0XFF3B5137),
                          fontWeight: FontWeight.bold,
                          fontSize: 11,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () => {},
                      child:  const Text('Upload', style: TextStyle(color: Colors.orange,)),
                       style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 255, 255, 255),
                        ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      child: Text(
                        textAlign: TextAlign.center,
                        "Foto",
                        style: TextStyle(
                          color: Color(0XFF3B5137),
                          fontWeight: FontWeight.bold,
                          fontSize: 11,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () => {},
                      child:  const Text('Upload', style: TextStyle(color: Colors.orange,)),
                       style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 255, 255, 255),
                        ),
                    ),                    
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 300, // Defina o valor desejado para a largura
                      child: ElevatedButton(
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => const PainelProdutorScreen(),
                          //   ),
                          // );
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          backgroundColor: const Color(0XFF91C788),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(20),
                          child: Text('Cadastrar Alimento'),
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
    );
  }
}
