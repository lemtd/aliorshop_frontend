import 'package:flutter/material.dart';
import 'package:pockectcheff/screens/consumidor/mercado_consumidor_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF91C788),
      appBar: AppBar(
        backgroundColor: const Color(0XFF91C788),
      ),
      body: Center(child: buildHomeScreenBody(context)),
    );
  }

  Widget buildHomeScreenBody(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: <Widget>[
          Align(
              alignment: Alignment.topLeft,
              child: const Text('AliorShop',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left)),
          const SizedBox(
            height: 30,
          ),
          Align(
              alignment: Alignment.topLeft,
              child: SizedBox(
                width: 200,
                child: Text('O poder dos orgânicos!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.left),
              )),
          // const Spacer(),
          SizedBox(
            height: 55,
          ),
          Align(
              alignment: Alignment.topCenter,
              child: Image.asset(
                'assets/veggie.png',
                width: 600,
              )),
          Spacer(),
          SizedBox(
            height: 60,
            width: 300, // Defina o valor desejado para a largura
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MercadoConsumidorScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                backgroundColor: Colors.white,
              ),
              child: const Padding(
                padding: EdgeInsets.all(5),
                child: Text(
                  'Começar',
                  style: TextStyle(color: const Color(0XFF91C788)),
                ),
              ),
            ),
          ),
          SizedBox(height: 20,)
        //   SizedBox(height: 5,),
        //   SizedBox(
        //     width: 300, // Defina o valor desejado para a largura
        //     child: ElevatedButton(
        //       onPressed: () {
        //         Navigator.push(
        //           context,
        //           MaterialPageRoute(
        //             builder: (context) => const LoginScreen(),
        //           ),
        //         );
        //       },
        //       style: ElevatedButton.styleFrom(
        //         shape: RoundedRectangleBorder(
        //           borderRadius: BorderRadius.circular(25),
        //         ),
        //         backgroundColor: Colors.white,
        //       ),
        //       child: const Padding(
        //         padding: EdgeInsets.all(5),
        //         child: Text(
        //           'Login',
        //           style: TextStyle(color: const Color(0XFF91C788)),
        //         ),
        //       ),
        //     ),
        //   ),
        //   SizedBox(height: 5,),
        //   SizedBox(
        //     width: 300, // Defina o valor desejado para a largura
        //     child: ElevatedButton(
        //       onPressed: () {
        //         Navigator.push(
        //           context,
        //           MaterialPageRoute(
        //             builder: (context) => RegisterScreen(),
        //           ),
        //         );
        //       },
        //       style: ElevatedButton.styleFrom(
        //         shape: RoundedRectangleBorder(
        //           borderRadius: BorderRadius.circular(25),
        //         ),
        //         backgroundColor: Colors.white,
        //       ),
        //       child: const Padding(
        //         padding: EdgeInsets.all(5),
        //         child: Text(
        //           'Cadastrar usuário',
        //           style: TextStyle(color: const Color(0XFF91C788)),
        //         ),
        //       ),
        //     ),
        //   ),
        //   SizedBox(height: 5,),
        //   SizedBox(
        //     width: 300, // Defina o valor desejado para a largura
        //     child: ElevatedButton(
        //       onPressed: () {
        //         Navigator.push(
        //           context,
        //           MaterialPageRoute(
        //             builder: (context) => const RegisterProdutorScreen(),
        //           ),
        //         );
        //       },
        //       style: ElevatedButton.styleFrom(
        //         shape: RoundedRectangleBorder(
        //           borderRadius: BorderRadius.circular(25),
        //         ),
        //         backgroundColor: Colors.white,
        //       ),
        //       child: const Padding(
        //         padding: EdgeInsets.all(5),
        //         child: Text(
        //           'Cadastrar loja',
        //           style: TextStyle(color: const Color(0XFF91C788)),
        //         ),
        //       ),
        //     ),
        //   ),
        //   SizedBox(height: 5,),
        //   SizedBox(
        //     width: 300, // Defina o valor desejado para a largura
        //     child: ElevatedButton(
        //       onPressed: () {
        //         Navigator.push(
        //           context,
        //           MaterialPageRoute(
        //             builder: (context) => InstructionsScreen(),
        //           ),
        //         );
        //       },
        //       style: ElevatedButton.styleFrom(
        //         shape: RoundedRectangleBorder(
        //           borderRadius: BorderRadius.circular(25),
        //         ),
        //         backgroundColor: Colors.white,
        //       ),
        //       child: const Padding(
        //         padding: EdgeInsets.all(5),
        //         child: Text(
        //           'Aprender a cultivar!',
        //           style: TextStyle(color: const Color(0XFF91C788)),
        //         ),
        //       ),
        //     ),
        //   ),
        ],
      ),
    );
  }
}
