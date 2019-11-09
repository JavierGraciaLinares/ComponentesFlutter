import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: (AppBar(
        title: Text('Cards'),
      )),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 2.0),
        children: <Widget>[_cardTipo1(), SizedBox(height: 30.0), _cardTipo2Tutorial(),
        _cardTipo1(), SizedBox(height: 30.0), _cardTipo2Tutorial(),
        _cardTipo1(), SizedBox(height: 30.0), _cardTipo2Tutorial(),
        _cardTipo1(), SizedBox(height: 30.0), _cardTipo2Tutorial(),
        _cardTipo1(), SizedBox(height: 30.0), _cardTipo2Tutorial(),
        _cardTipo1(), SizedBox(height: 30.0), _cardTipo2Tutorial(),
        _cardTipo1(), SizedBox(height: 30.0), _cardTipo2Tutorial(),
        _cardTipo1(), SizedBox(height: 30.0), _cardTipo2Tutorial(),],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
        elevation: 3.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        child: Column(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.photo_album, color: Colors.green),
              title: Text("Soy el título de esta tarjeta"),
              subtitle: Text(
                  "Soy el subtítulo de esta tarjeta y este texto es muy largo para que hagamos la prueba de la longitud de la tarjeta"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FlatButton(
                  child: Text('Cancelar'),
                  onPressed: () {},
                ),
                FlatButton(
                  child: Text('OK'),
                  onPressed: () {},
                )
              ],
            )
          ],
        ));
  }

  Widget _cardTipo2Actualizado() {
    return Card(
      clipBehavior: Clip.antiAlias, //¡¡ESTO YA FUNCIONA!!!
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage(
                'https://wallpaperplay.com/walls/full/f/f/1/122862.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          /* Image(
              image: NetworkImage(
                  'https://wallpaperplay.com/walls/full/f/f/1/122862.jpg')),*/
          Container(
            padding: EdgeInsets.all(5.0),
            child: Text("No tengo idea que poner"),
          )
        ],
      ),
    );
  }

  Widget _cardTipo2Tutorial() {
    final card = Container(
      //clipBehavior: Clip.antiAlias, //Antes esto no funcionaba ahora sí, por ello en el tutorial hacen el container
      //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage(
                'https://wallpaperplay.com/walls/full/f/f/1/122862.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          /* Image(
              image: NetworkImage(
                  'https://wallpaperplay.com/walls/full/f/f/1/122862.jpg')),*/
          Container(
            padding: EdgeInsets.all(5.0),
            child: Text("No tengo idea que poner"),
          )
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(color: Colors.black26,blurRadius: 10.0,spreadRadius: 2.0,offset: Offset(2.0,10.0))
        ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: card,
      ),
    );
  }
}
