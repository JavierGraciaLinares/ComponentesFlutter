import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = [
    'Uno',
    'Dos',
    'Tres',
    'Cuatro',
    'Cinco',
    'Seis',
    'Siete',
    'Ocho'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Componentes Temp')),
      body: ListView(children: _crearItemsCorto()),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> lista = new List<Widget>();

    for (String item in opciones) {
      final tempWidget = ListTile(title: Text(item));
      lista
        ..add(tempWidget)
        ..add(Divider(
          height: 0.0,
        ));
    }

    return lista;
  }

  List<Widget> _crearItemsCorto() {
    return opciones.map((item) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item),
            subtitle: Text('Este es el subtítulo'),
            leading: Icon(Icons.perm_contact_calendar),
            trailing: Icon(Icons.arrow_forward),
            onTap: (){},
          ),
          Divider(height: 5.0,)
        ],
      );
    }).toList();
  }
}
