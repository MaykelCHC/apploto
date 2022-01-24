class LoteriaNacional {
  final String title;
  final DateTime fecha;
  final String descripcion;
  final String link;

  LoteriaNacional({required this.title, required this.fecha, required this.descripcion, required this.link});

  factory LoteriaNacional.fromJson(Map<String, dynamic> json) {
    return LoteriaNacional(
      title: json['title'],
      fecha: json['fecha'],
      descripcion: json['descripcion'],
      link: json['link'],
    );
  }
}
