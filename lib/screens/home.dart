import 'package:flutter/material.dart';
import 'package:pockectcheff/screens/consumidor/mercado_consumidor_screen.dart';
import 'package:pockectcheff/screens/produtor/register_produtor_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF91C788),
      appBar: AppBar(backgroundColor: const Color(0XFF91C788),),
      body: Center(child: buildHomeScreenBody(context)),
    );
  }

  Widget buildHomeScreenBody(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: <Widget>[
          const Text('AliorShop',style: TextStyle(color: Colors.white, fontSize: 50,fontWeight: FontWeight.bold,),textAlign: TextAlign.left),
          const SizedBox(height: 50,),
          const Padding(
            padding: EdgeInsets.only(right: 20),
            child: Text('Seu prato mais verde!',style: TextStyle(color: Colors.white, fontSize: 50 ,fontWeight: FontWeight.bold,),textAlign: TextAlign.left),
          ),
          const Spacer(),
          Align(
            alignment: Alignment.centerLeft,
            child: Image.asset('assets/veggie.png', width: double.infinity,)
          ),  
          SizedBox(
            width: 300, // Defina o valor desejado para a largura
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
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
                padding: EdgeInsets.all(20),
                child: Text('Começar',style: TextStyle(color: const Color(0XFF91C788)),),
              ),
            ),
          ),
          SizedBox(
            width: 300, // Defina o valor desejado para a largura
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RegisterProdutorScreen(),
                  ),
                );
              },
              child: const Padding(
                padding: EdgeInsets.all(20),
                child: Text('Cadastrar Loja',style: TextStyle(color: Colors.white),),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
