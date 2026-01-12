class Data {
  final int id;
  final String chapter;
  final String text;

  Data({required this.id, required this.chapter, required this.text});

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      id: json['id'] ?? 0,
      chapter: json['chapter'] ?? 'unknows',
      text: json['text'] ?? 'unknow',
    );
  }
  Map<String, dynamic> toJson() {
    return {'id': id, 'chapter': chapter, 'text': text};
  }
}
