import 'package:flutter/material.dart';
import "widgets/botoes.dart";
import "widgets/campo_texto.dart";

void main() {
  runApp(MeuApp());
}

class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MinhaTela());
  }
}

  final TextEditingController nomeController = TextEditingController();
  final TextEditingController valorController = TextEditingController();
  final TextEditingController quantidadeController = TextEditingController();
  final TextEditingController categoriaController = TextEditingController();
  final TextEditingController codigoController = TextEditingController();

  double total = 0;

  void somar(){
    double valor=double.tryParse(valorController.text) ?? 0;
    double quantidade=double.tryParse(quantidadeController.text) ?? 0;
  
  setState((){
    total = valor * quantidade;
  });
  }

  void limpar(){
    double nome=double.tryParse(nomeController.text) ?? 0;
    double valor=double.tryParse(valorController.text) ?? 0;
    double quantidade=double.tryParse(quantidadeController.text) ?? 0;
    double categoria=double.tryParse(categoriaController.text) ?? 0;
    double codigo=double.tryParse(codigoController.text) ?? 0;
  }


class MinhaTela extends StatelessWidget {
  void total() {
    print("Calculando...");
  }

  void limpar() {
    print("Limpando...");
  }

  void salvar() {
    print("Salvando...");
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: const Text("Cadastro de Produtos"),
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        backgroundColor: Colors.deepOrange,
      ),

      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            meuTextField("Nome do Produto", Icons.local_offer),
            meuTextField("Preço", Icons.money),
            meuTextField("Quantidade (Estoque)", Icons.inventory),
            meuTextField("Categoria", Icons.category),
            meuTextField("Código de Acesso", Icons.lock,senha:true),

            const SizedBox(height: 25),
            meuBotao("Total", Colors.deepOrange, total),
            meuBotao("limpar", Colors.deepOrange, limpar),
            meuBotao("Salvar", Colors.deepOrange, salvar),
          ],
        ),
      ),
    );
  }
}