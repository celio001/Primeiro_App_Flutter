import 'package:flutter/material.dart';

class ItemAddPage extends StatelessWidget {
  TextEditingController _controllerText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        //botão segunda pagina
        backgroundColor: Colors.green, // cor do botão
        onPressed: () {
          Navigator.pop(context,
              _controllerText.text = _controllerText.text.isEmpty ? '': _controllerText.text ); //Se o valor não estiver vazio ele voltar para a primeira pagina
        },
        child: Icon(Icons.done),
      ),
      // ignore: prefer_const_constructors
      appBar: AppBar(
        title: Text('Novo Item'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Descrição do Item'),
            TextField(
              controller: _controllerText,
            ), //aqui nos temos nosso campo de texto
          ],
        ),
      ),
    );
  }
}
