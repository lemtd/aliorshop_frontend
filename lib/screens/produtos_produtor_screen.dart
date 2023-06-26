import 'package:flutter/material.dart';

class ProdutosProdutorScreen extends StatefulWidget {
  const ProdutosProdutorScreen({super.key});

  @override
  State<ProdutosProdutorScreen> createState() => _ProdutosProdutorScreenState();
}

class _ProdutosProdutorScreenState extends State<ProdutosProdutorScreen> {
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
      appBar: AppBar(),
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
              const Padding(
                padding: EdgeInsets.only(top: 20  ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Produtos da Loja',
                    style: TextStyle(fontSize: 35),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
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
                              padding: EdgeInsets.all(10),
                              child: Row(
                              children: [
                                Text('Pepino Chinês • R\$15,00 (UN)',style: TextStyle(fontSize: 17),),
                                Spacer(),
                                Icon(Icons.edit, size: 30,),
                                Icon(Icons.delete, size: 30,)
                              ],
                            )),
                            Divider(),
                            Container(
                              padding: EdgeInsets.all(10),
                              child: Row(
                              children: [
                                Text('Soja • R\$6,00 (KG)',style: TextStyle(fontSize: 17),),
                                Spacer(),
                                Icon(Icons.edit, size: 30,),
                                Icon(Icons.delete, size: 30,)
                              ],
                            )),
                            Divider(),
                            Container(
                              padding: EdgeInsets.all(10),
                              child: Row(
                              children: [
                                Text('Batata Doce • R\$12,00 (KG)',style: TextStyle(fontSize: 17),),
                                Spacer(),
                                Icon(Icons.edit, size: 30,),
                                Icon(Icons.delete, size: 30,)
                              ],
                            )),
                            Divider(),
                            Container(
                              padding: EdgeInsets.all(10),
                              child: Row(
                              children: [
                                Text('Beterraba • R\$11,00 (KG)',style: TextStyle(fontSize: 17),),
                                Spacer(),
                                Icon(Icons.edit, size: 30,),
                                Icon(Icons.delete, size: 30,)
                              ],
                            )),
                            Divider(),
                            Container(
                              padding: EdgeInsets.all(10),
                              child: Row(
                              children: [
                                Text('Tomate • R\$10,00 (KG)',style: TextStyle(fontSize: 17),),
                                Spacer(),
                                Icon(Icons.edit, size: 30,),
                                Icon(Icons.delete, size: 30,)
                              ],
                            )),
                            Divider(),
                            Container(
                              padding: EdgeInsets.all(10),
                              child: Row(
                              children: [
                                Text('Alface • R\$7,00 (UN)',style: TextStyle(fontSize: 17),),
                                Spacer(),
                                Icon(Icons.edit, size: 30,),
                                Icon(Icons.delete, size: 30,)
                              ],
                            )),     
                                 
                          ]),
                        ),
                      ),
                    ),
                    ButtonTheme(
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  minimumSize: const Size.fromHeight(50),
                                  primary: const Color(0XFF91C788),
                                ),
                                onPressed: () {
                                  
                                },
                                child: const Text("Adicionar Produto"),
                              ),
                            )  
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
