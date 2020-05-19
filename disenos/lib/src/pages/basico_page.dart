import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubtitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          _crearImagen(),
          _crearTitulo(),
          _crearAcciones(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto()
        ]),
      ),
    );
  }

  Widget _crearImagen() {
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage(
            "https://www.elconfidencialdigital.com/asset/zoomcrop,1366,800,center,center//media/elconfidencialdigital/images/2018/08/21/2018082110450128772.jpg"),
            height: 200.0,
            fit: BoxFit.cover,
      ),
    );
  }

  Widget _crearTitulo() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Playa en las Maldivas',
                    style: estiloTitulo,
                  ),
                  SizedBox(height: 7.0),
                  Text(
                    'Playa para visitar algún día',
                    style: estiloSubtitulo,
                  ),
                ],
              ),
            ),
            Icon(Icons.star, color: Colors.red, size: 30.0),
            Text('41', style: TextStyle(fontSize: 20.0))
          ],
        ),
      ),
    );
  }

  Widget _crearAcciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _accion(Icons.call, 'CALL'),
        _accion(Icons.near_me, 'ROUTE'),
        _accion(Icons.share, 'SHARE')
      ],
    );
  }

  Widget _accion(IconData icon, String texto) {
    return Column(children: <Widget>[
      Icon(icon, color: Colors.blue, size: 40.0),
      SizedBox(height: 5.0),
      Text(texto, style: TextStyle(fontSize: 15.0, color: Colors.blue))
    ]);
  }

  Widget _crearTexto() {
    return SafeArea(
          child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
          child: Text(
            'Anim aute ex eiusmod excepteur enim et labore deserunt duis anim reprehenderit proident. Enim consequat veniam sunt nostrud enim qui irure nisi dolor eu magna. Magna sint fugiat est nulla id in magna ex culpa culpa id eiusmod non dolor. Laborum Lorem aliqua officia anim consectetur exercitation reprehenderit.',
            textAlign: TextAlign.justify,
          )),
    );
  }
}
