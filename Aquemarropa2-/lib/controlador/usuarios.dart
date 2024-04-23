import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/pages/Iniciar_sesion.dart';
import 'package:flutter_application_1/src/pages/Registrar.dart';
import 'package:firebase_auth/firebase_auth.dart';



class Usuarios {

  TextEditingController correo = TextEditingController();
  TextEditingController clave = TextEditingController();

  Future<bool> Iniciar_sesion() async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: correo.text,
        password: clave.text,
      );
      // Si el inicio de sesión es exitoso, devolvemos true
      return credential != null;
    } on FirebaseAuthException catch (e) {
      // Manejar errores de autenticación
      if (e.code == 'wrong-password') {
        print('Contraseña incorrecta.');
      } else if (e.code == 'user-not-found') {
        print('No se encontró un usuario con ese correo electrónico.');
      }
      // Devolver false en caso de error
      return false;
    } catch (e) {
      // Manejar otros errores
      print(e);
      return false;
    }
  }

  Future<bool> registrar() async {
    try {
      final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: correo.text,
        password: clave.text,
      );
      // Si el registro es exitoso, devolvemos true
      return credential != null;
    } on FirebaseAuthException catch (e) {
      // Manejar errores de autenticación
      if (e.code == 'weak-password') {
        print('La contraseña proporcionada es demasiado débil.');
      } else if (e.code == 'email-already-in-use') {
        print('Ya existe una cuenta con ese correo electrónico.');
      }
      // Devolver false en caso de error
      return false;
    } catch (e) {
      // Manejar otros errores
      print(e);
      return false;
    }
  }
}



