import 'package:flutter/material.dart';

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
      appBar: AppBar(backgroundColor: const Color(0XFF91C788),),
      backgroundColor: const Color(0XFF91C788),
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
                            backgroundColor: Color.fromARGB(255, 255, 255, 255),
                          ),
                          child: Text('Voltar',style: TextStyle(color: const Color(0XFF91C788)),),
                        ),
                      ),
              ),
                    SizedBox(height: 30,),
              const Padding(
                padding: EdgeInsets.all(0.0),
                child: Text(
                  'Quer saber como cultivar',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(0.0),
                child: Text(
                  'produtos orgânicos?',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ),
              // Align(
              //   alignment: Alignment.centerLeft,
              //   child: Image.asset('assets/venda.png', width: 150,)
              // ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Container(padding: EdgeInsets.all(20),color: Colors.white, width: double.infinity, child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: SizedBox(
                      child: Text(
                        'Passo a passo',
                        style: TextStyle(fontSize: 12),
                                  ),
                    ),
                  ),
                  SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: SizedBox(
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
                      child: Text(
                        '4. Etiam gravida urna in malesuada tincidunt. Integer ultrices orci sed ante volutpat, in bibendum dui tincidunt.',
                        style: TextStyle(fontSize: 12),
                                  ),
                    ),
                  ),
                ],),),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: SizedBox(
                  width: double.infinity, // Defina o valor desejado para a largura
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.pop(context);
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(20),
                      child: Text('Falar com o suporte', style: TextStyle(color: const Color(0XFF91C788)),),
                    ),
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
