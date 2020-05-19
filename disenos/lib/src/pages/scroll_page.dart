import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          _pagina1(),
          _pagina2()],
      ),
    );
  }

  Widget _pagina1() {
    return Stack(
      children: <Widget>[
        _colorFondo(),
        _imagenFondo(),
        _textos(),
        



      ]
    );
  }

  Widget _colorFondo(){
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
    );
  }

  Widget _imagenFondo(){
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/scroll-1.png'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _textos(){
    final estiloTexto = TextStyle(color: Colors.white, fontSize: 50.0);
    return SafeArea(
          child: Column(
        children: <Widget>[
          Text('11º', style: estiloTexto,),
          Text('Miércoles', style: estiloTexto),
          Expanded(child: Container()),
          Icon(Icons.keyboard_arrow_down, size: 70.0, color: Colors.white)

        ],
      ),
    );
  }



  Widget _pagina2() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
      child: _boton(),
    );
  }

  Widget _boton(){
    return Center(
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        shape: StadiumBorder(),
        onPressed: (){},
        child: Padding(
          child: Text('Bienvenidos', style: TextStyle(fontSize: 20.0)),
          padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
          ),
        
        ),
    );
  }
}
