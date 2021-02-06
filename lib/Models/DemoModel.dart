class DemoModel {
  final String id;
  final String name;
  final String tech;

  DemoModel({this.id, this.name,this.tech});

  factory DemoModel.fromJson(Map<String, dynamic> json) {
    return DemoModel(
      id: json['id'],
      name: json['name'],
      tech: json['tech'],
    );
  }
}
