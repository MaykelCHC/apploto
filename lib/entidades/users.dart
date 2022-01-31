class Users {
  late int id;
  final String usuario;
  final String correo;
  final String contrasena;
  final String telefono;

  Users(this.usuario, this.correo, this.contrasena, this.telefono);

  Users.fromJson(Map<dynamic, dynamic> json)
      : usuario = json['usuario'] as String,
        correo = json['correo'] as String,
        contrasena = json['contrasena'] as String,
        telefono = json['telefono'] as String;

  Map<dynamic, dynamic> toJson() => <dynamic, dynamic>{
        'usuario': usuario,
        'correo': correo,
        'contrasena': contrasena,
        'telefono': telefono,
      };
}
