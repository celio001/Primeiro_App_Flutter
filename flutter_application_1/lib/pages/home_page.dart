import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/item_add_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> _list = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          //botão
          backgroundColor: Colors.green, //Cor do botão
          child: Icon(Icons.add), //icone do botão
          onPressed: () async {
            final result = (await Navigator.push(
              context,
              MaterialPageRoute<String>(
                builder: (context) {
                  return ItemAddPage();
                },
              ),
            ))!;
            setState(() {
              if (result.isNotEmpty) {
                _list.add(result);
              }
            });
          }), //ação de clicar no botão
      appBar: AppBar(
        title: Text('Primeiro App'),
      ),
      body: _list.length > 0
          ? ListView.builder(
              itemCount: _list.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(// ação do toque do botão
                  child: ListTile(
                    title: Text(_list[index]),
                  ),
                );
              },
            )
          : Center(
              child: Text('Não há nenhum Item'),
            ),
    );
  }
}
