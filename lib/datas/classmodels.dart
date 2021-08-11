import 'dart:typed_data';

class Pictures {
  Uint8List? picture;

  Pictures({this.picture});

  Pictures.fromMap(Map map) {
    this.picture = map['picture'];
  }

  Map<String, dynamic> toMap() =>
      {'image': picture};
}