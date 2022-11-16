
class TodoModel {
  final String id;
  String? title;
  bool isFavorite;

  TodoModel({
    required this.id,
    this.title = '',
    this.isFavorite = false,

  });

  // TODO: implement props

  Map<String, dynamic> toMap() {
    return {
      'id': id,

      'title': title,
      'isFavorite': isFavorite,

    };
  }

  factory TodoModel.fromMap(Map<String, dynamic> map) {
    return TodoModel(
      id: map['id'] ?? '',
      title: map['title'],
      isFavorite: map['isFavorite'],

    );
  }


}

