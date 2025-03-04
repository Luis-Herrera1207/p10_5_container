import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Elimina el banner de depuración
      home: Scaffold(
        appBar: AppBar(
          title: Text("Luis Herrera 1207 6-J"),
          centerTitle: true,
          titleTextStyle: TextStyle(color: Color(0xff000000), fontSize: 20),
          backgroundColor: Color(0x005e3500),
        ),
        body: Container(
          // Agrega un Container para el color de fondo
          color: Colors.grey[200], // Cambia el color de fondo aquí
          child: Center(
            child: iPhoneFrame(
              // Envuelve el contenido en el marco de iPhone
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.7,
                decoration: BoxDecoration(
                  color: Color(0xffd5d5d5),
                  border: Border.all(color: Colors.black12),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.blue[100],
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'CONTAINER DECORATION',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: Colors.blue[200],
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xc300478b),
                                blurRadius: 8,
                                offset: Offset(2, 7),
                              ),
                            ],
                          ),
                          child: Text(
                            "I am a \n container            ",
                            style: TextStyle(fontSize: 23),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// Widget para el marco de iPhone
class iPhoneFrame extends StatelessWidget {
  final Widget child;

  iPhoneFrame({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400, // Ancho del marco del iPhone
      height: 800, // Alto del marco del iPhone
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(40), // Bordes redondeados del marco
      ),
      child: ClipRRect(
        borderRadius:
            BorderRadius.circular(40), // Recorta el contenido al marco
        child: Padding(
          padding: EdgeInsets.all(10), // Espacio entre el marco y el contenido
          child: child,
        ),
      ),
    );
  }
}
