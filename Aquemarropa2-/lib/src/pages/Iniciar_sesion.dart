import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/pages/Registrar.dart';
import 'package:flutter_application_1/src/pages/home_screen.dart';
import '../../controlador/usuarios.dart';

class Iniciar_sesion extends StatelessWidget {
  Usuarios usuario = Usuarios();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffdfaf6),
      body: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
                  child: Image(
                    image: AssetImage("assets/logo.png"),
                    height: 90,
                    width: 90,
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  " ¡BIENVENIDO :)! ",
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                    fontSize: 20,
                    color: Color(0xfff63e6f),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 50),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "DE NUEVO EN CASA",
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal,
                        fontSize: 15,
                        color: Color(0xff592a4d),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 16, 0, 50),
                  child: TextField(
                    controller: usuario.correo,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 16,
                      color: Color(0xff000000),
                    ),
                    decoration: InputDecoration(
                      labelText: "Correo",
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 16,
                        color: Color(0xff9e9e9e),
                      ),
                      filled: true,
                      fillColor: Color(0xffffffff),
                      isDense: false,
                      contentPadding: EdgeInsets.fromLTRB(12, 8, 12, 1),
                      prefixIcon:
                          Icon(Icons.mail, color: Color(0xfff4357c), size: 24),
                    ),
                  ),
                ),
                TextField(
                  controller: usuario.clave,
                  obscureText: true,
                  textAlign: TextAlign.left,
                  maxLines: 1,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    fontSize: 16,
                    color: Color(0xff000000),
                  ),
                  decoration: InputDecoration(
                    labelText: "Contraseña",
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 16,
                      color: Color(0xff9e9e9e),
                    ),
                    filled: true,
                    fillColor: Color(0xffffffff),
                    isDense: false,
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                    prefixIcon:
                        Icon(Icons.vpn_key, color: Color(0xfff4357b), size: 24),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 30, 0, 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                        width: 16,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                        child: MaterialButton(
                          onPressed: () async {
                            // Lógica de inicio de sesión
                            var res = await usuario.Iniciar_sesion(); // Suponiendo que tienes un método iniciarSesion() en la clase Usuarios
                            if (res) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => HomeScreen()),
                              );
                            }
                          },
                          color: Color(0xfff64070),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          padding: EdgeInsets.all(16),
                          child: Text(
                            "Iniciar sesion",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          textColor: Color(0xffffffff),
                          height: 40,
                          minWidth: 140,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: MaterialButton(
                    onPressed: () {
                      // Navegar a la página de registro
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Registrar()),
                      );
                    },
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      side: BorderSide(color: Colors.grey, width: 1),
                    ),
                    child: Text(
                      "Volver",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    textColor: Colors.black,
                    height: 40,
                    minWidth: MediaQuery.of(context).size.width,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 0),
                  child: Text(
                    "O continua con",
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 14,
                      color: Color(0xff9e9e9e),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment(0.0, 0.0),
                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(0),
                    padding: EdgeInsets.all(8),
                    width: MediaQuery.of(context).size.width * 0.5,
                    decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(color: Color(0xff9e9e9e), width: 1),
                    ),
                    child: Align(
                      alignment: Alignment(0.0, 0.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Image(
                            image: AssetImage("assets/gmail.png"),
                            height: 28,
                            width: 25,
                            fit: BoxFit.cover,
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                            child: Text(
                              "Gmail",
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontStyle: FontStyle.normal,
                                fontSize: 16,
                                color: Color(0xffbbb8b8),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
