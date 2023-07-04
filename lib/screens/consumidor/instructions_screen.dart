import 'package:flutter/material.dart';
import 'package:pockectcheff/screens/consumidor/register_screen.dart';
import 'package:pockectcheff/screens/home.dart';

import '../produtor/painel_produtor_screen.dart';

class InstructionsScreen extends StatefulWidget {
  const InstructionsScreen({super.key});

  @override
  State<InstructionsScreen> createState() => _InstructionsScreenState();
}

class _InstructionsScreenState extends State<InstructionsScreen> {
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
              Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                        width: 80,
                        height: 20,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeScreen(),
                              ),
                            );
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
                    SizedBox(height: 30,),
              const Padding(
                padding: EdgeInsets.all(0.0),
                child: Text(
                  'Quer saber como cultivar',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(0.0),
                child: Text(
                  'produtos orgânicos?',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              // Align(
              //   alignment: Alignment.centerLeft,
              //   child: Image.asset('assets/venda.png', width: 150,)
              // ),
              const SizedBox(
                height: 25,
              ),
              Container(color: Colors.white, width: 250, height: 500, child: Column(children: [
                SizedBox(height: 5,),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: SizedBox(
                    width: 200,
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce vitae purus eget nisl efficitur aliquet. Vestibulum ac tortor eu nunc convallis ultrices. Nulla facilisi. Integer non dui euismod, ultrices nisl eget, posuere justo.',
                      style: TextStyle(fontSize: 12),
                                ),
                  ),
                ),
                SizedBox(height: 5,),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: SizedBox(
                    width: 200,
                    child: Text(
                      'Sed ullamcorper justo sit amet faucibus convallis. Vestibulum auctor neque vitae nisl tincidunt convallis. Proin eget dolor eu lacus tristique rhoncus nec eu mi. Nulla facilisi.',
                      style: TextStyle(fontSize: 12),
                                ),
                  ),
                ),
                SizedBox(height: 5,),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: SizedBox(
                    width: 200,
                    child: Text(
                      '1. Curabitur volutpat, elit ac dictum luctus, metus libero mollis tellus, vitae iaculis leo ligula et risus. Sed fringilla ex sed neque lacinia, non mattis lacus condimentum.',
                      style: TextStyle(fontSize: 12),
                                ),
                  ),
                ),
                SizedBox(height: 5,),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: SizedBox(
                    width: 200,
                    child: Text(
                      '2. Praesent non feugiat enim.',
                      style: TextStyle(fontSize: 12),
                                ),
                  ),
                ),
                SizedBox(height: 5,),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: SizedBox(
                    width: 200,
                    child: Text(
                      '3. Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                      style: TextStyle(fontSize: 12),
                                ),
                  ),
                ),
                SizedBox(height: 5,),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: SizedBox(
                    width: 200,
                    child: Text(
                      '4. Etiam gravida urna in malesuada tincidunt. Integer ultrices orci sed ante volutpat, in bibendum dui tincidunt.',
                      style: TextStyle(fontSize: 12),
                                ),
                  ),
                ),
              ],),)
            ],
          ),
        ),
      ),
    );
  }
}
