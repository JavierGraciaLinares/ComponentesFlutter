import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(7.5),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://www.lavanguardia.com/r/GODO/LV/p6/WebSite/2019/08/01/Recortada/img_druiz_20190801-172758_imagenes_lv_otras_fuentes_the_isleworth_mona_lisa-kkIH-U463807700160eq-992x558@LaVanguardia-Web.jpg'),
              radius: 20.0,
            ),
          ),
          Container(
            child: CircleAvatar(
              child: Text('PP'),
              backgroundColor: Colors.pink,
            ),
            margin: EdgeInsets.only(right: 10.0),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage(
              'https://ep01.epimg.net/cultura/imagenes/2019/07/02/actualidad/1562050308_163028_1562050892_noticia_normal.jpg'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}
