import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 50.0;
  bool _bloquearCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sliders')),
      body: Container(
          padding: EdgeInsets.only(top: 50),
          child: Column(
            children: <Widget>[
              _crearSlider(),
              _crearCheckBox(),
              _crearSwitch(),
              Expanded(child: _crearImagen())
            ],
          )),
    );
  }

  Slider _crearSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de la imagen $_valorSlider',
      divisions: 20,
      onChanged: (_bloquearCheck)
          ? null
          : (double newValue) {
              setState(() {
                _valorSlider = newValue;
              });
            },
      value: _valorSlider,
      min: 0.0,
      max: 100.0,
    );
  }

  Image _crearImagen() {
    return Image(
      image: NetworkImage(
          'https://s5.eestatic.com/2019/04/02/actualidad/Actualidad_387973992_130504868_1024x576.jpg'),
      width: _valorSlider + 250,
      fit: BoxFit.contain,
    );
  }

  Widget _crearCheckBox() {
    /* return Checkbox(
      value: _bloquearCheck,
      onChanged: (valor) {
        setState(() {
          _bloquearCheck = valor;
        });
      },
    );*/
    return CheckboxListTile(
      title: Text('Bloquear slider'),
      value: _bloquearCheck,
      onChanged: (valor) {
        setState(() {
          _bloquearCheck = valor;
        });
      },
    );
  }
Widget _crearSwitch() {
    /* return Checkbox(
      value: _bloquearCheck,
      onChanged: (valor) {
        setState(() {
          _bloquearCheck = valor;
        });
      },
    );*/
    return SwitchListTile(
      title: Text('Bloquear slider'),
      value: _bloquearCheck,
      activeColor: Colors.green,
      inactiveTrackColor: Colors.red[300],
      inactiveThumbColor: Colors.redAccent,
      
      onChanged: (valor) {
        setState(() {
          _bloquearCheck = valor;
        });
      },
    );
  }


}
