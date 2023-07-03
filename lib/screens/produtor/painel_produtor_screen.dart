import 'package:flutter/material.dart';
import 'package:pockectcheff/screens/produtor/produtos_produtor_screen.dart';

class PainelProdutorScreen extends StatefulWidget {
  const PainelProdutorScreen({super.key});

  @override
  State<PainelProdutorScreen> createState() => _PainelProdutorScreenState();
}

class _PainelProdutorScreenState extends State<PainelProdutorScreen> {
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
      backgroundColor: Color(0XFFEDEDED),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(
          10,
          0,
          10,
          0,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Alinhamento horizontal no início
            children: [
              Column(
                children: [
                  
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Painel da Loja',
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                  ),
                  // Align(
                  //   alignment: Alignment.center,
                  //   child: Image.asset(
                  //     'assets/venda.png',
                  //     width: 100,
                  //   ),
                  // ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  children: [
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Dados',
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(15),
                          child: Text(
                            'Bem-vindo à nossa loja de frutas orgânicas!Localizada no coração da cidade, nossa loja se dedica a fornecer produtos frescos e saudáveis para você e sua família. Nossas frutas orgânicas são cultivadas com cuidado, sem o uso de pesticidas ou produtos químicos, garantindo a máxima qualidade e sabor.',
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Produtos',
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(children: [
                                Container(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Row(
                                  children: [
                                    Text('Pepino Chinês • '),
                                    Text('R\$15,00 (UN)'),
                                    Spacer(),
                                  ],
                                )),
                                Container(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Row(
                                  children: [
                                    Text('Tomate • '),
                                    Text('R\$10,00 (KG)'),
                                    Spacer(),
                                  ],
                                )), Container(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Row(
                                  children: [
                                    Text('Alface • '),
                                    Text('R\$7,00 (UN)'),
                                    Spacer(),
                                  ],
                                )), Container(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Row(
                                  children: [
                                    Text('Beterraba • '),
                                    Text('R\$6,00 (KG)'),
                                    Spacer(),
                                  ],
                                )),
                                Container(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Row(
                                  children: [
                                    Text('Bata doce • '),
                                    Text('R\$11,00 (KG)'),
                                    Spacer(),
                                  ],
                                )),                            
                              ],)
                            ),
                          ),
                        ),  
                        SizedBox(height: 10,),
                        SizedBox(
                          width: 300, // Defina o valor desejado para a largura
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ProdutosProdutorScreen(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              backgroundColor: const Color(0XFF91C788),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(20),
                              child: Text('Ver mais'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20,),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Endereço',
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        ' Rua dos Legumes, N°999, Campo Verde, Natal-RN.',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),   
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Image.asset(
                          'assets/localização.png',
                          width: double.infinity,
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
