import 'package:flutter/material.dart';
import 'package:pockectcheff/screens/login/login_screen.dart';

class RegisterFood extends StatefulWidget {
  const RegisterFood({super.key});

  @override
  State<RegisterFood> createState() => _RegisterFoodState();
}

class _RegisterFoodState extends State<RegisterFood> {
  TextEditingController alimentoController = TextEditingController();
  TextEditingController descricaoController = TextEditingController();
  TextEditingController precoController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey();

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
                SizedBox(
                  height: 30,
                ),
                Align(
                    alignment: Alignment.center,
                    child: Text('Cadastre seu alimento')),
                SizedBox(
                  height: 30,
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        cursorColor: Color(0XFFFC8228),
                        keyboardType: TextInputType.emailAddress,
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
                        controller: alimentoController,
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                        textAlign: TextAlign.center,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Insira seu alimento";
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
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: InputBorder.none,
                          labelText: "Descrição",
                          labelStyle: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 15,
                          ),
                        ),
                        controller: descricaoController,
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                        textAlign: TextAlign.center,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Insira a descrição de seu alimento";
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
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: InputBorder.none,
                          labelText: "Preço (Reais)",
                          labelStyle: TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 15,
                          ),
                        ),
                        controller: precoController,
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                        textAlign: TextAlign.center,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Insira o valor de seu alimento";
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
                          SizedBox(
                            width: 300,
                            child: Text(
                              'Certificação por auditoria, participativa ou vinculada a uma organização de controle social',
                              style: TextStyle(fontSize: 12),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: 70,
                            child: ButtonTheme(
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  minimumSize: const Size.fromHeight(50),
                                  primary: Color.fromARGB(255, 255, 255, 255),
                                ),
                                onPressed: () {},
                                child: Text("Upload", style: TextStyle(color: Color(0XFFFC8228), fontSize: 12),),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 300,
                            child: Text(
                              'MAPA',
                              style: TextStyle(fontSize: 12),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: 70,
                            child: ButtonTheme(
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  minimumSize: const Size.fromHeight(50),
                                  primary: Color.fromARGB(255, 255, 255, 255),
                                ),
                                onPressed: () {},
                                child: Text("Upload", style: TextStyle(color: Color(0XFFFC8228), fontSize: 12),),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 300,
                            child: Text(
                              'Instruções normativas',
                              style: TextStyle(fontSize: 12),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: 70,
                            child: ButtonTheme(
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  minimumSize: const Size.fromHeight(50),
                                  primary: Color.fromARGB(255, 255, 255, 255),
                                ),
                                onPressed: () {},
                                child: Text("Upload", style: TextStyle(color: Color(0XFFFC8228), fontSize: 12),),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 300,
                            child: Text(
                              'Foto',
                              style: TextStyle(fontSize: 12),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: 70,
                            child: ButtonTheme(
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  minimumSize: const Size.fromHeight(50),
                                  primary: Color.fromARGB(255, 255, 255, 255),
                                ),
                                onPressed: () {},
                                child: Text("Upload", style: TextStyle(color: Color(0XFFFC8228), fontSize: 12),),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      ButtonTheme(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size.fromHeight(50),
                            primary: Color(0XFF91C788),
                          ),
                          onPressed: () {},
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
