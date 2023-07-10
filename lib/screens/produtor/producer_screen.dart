import 'package:flutter/material.dart';

class ProducerScreen extends StatefulWidget {
  const ProducerScreen({super.key});

  @override
  State<ProducerScreen> createState() => _ProducerScreenState();
}

class _ProducerScreenState extends State<ProducerScreen> {
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
      appBar: AppBar(
        backgroundColor: Color(0XFFEDEDED),
      ),
      backgroundColor: const Color(0XFFEDEDED),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  width: 80,
                  height: 20,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      backgroundColor: const Color(0XFF91C788),
                    ),
                    child: Text('Voltar'),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Perfil produtor',
                style: TextStyle(fontSize: 15),
              ),
              // Align(
              //   alignment: Alignment.centerLeft,
              //   child: Image.asset('assets/venda.png', width: 150,)
              // ),
              const SizedBox(
                height: 25,
              ),
              Container(
                width: 250,
                height: 400,
                child: Container(
                  child: Column(
                    children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text('Informação')),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/veggie.png',
                                width: 65,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                children: [
                                  Text('Maria Lucerda',
                                      style: TextStyle(fontSize: 10)),
                                  Text('marialucerda@gmail.com',
                                      style: TextStyle(fontSize: 10)),
                                  Text('Rua de Barro, Centro, Natal-RN',
                                      style: TextStyle(fontSize: 10))
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
