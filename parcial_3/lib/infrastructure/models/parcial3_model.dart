import 'package:parcial_3/domain/entities/message.dart';

class Parcial3Model {
  String answer;
  bool forced;
  String image;

  Parcial3Model({
    required this.answer,
    required this.forced,
    required this.image,
  });

  factory Parcial3Model.fromJson(Map<String, dynamic> json) => Parcial3Model(
    answer: json['answer'],
    forced: json['forced'],
    image: json['image'],
  );

  Message toMessageEntity() {
    return Message(
      text: answer == 'yes' ? 'Sí' : 'No',
      fromWho: FromWho.his,
      imageUrl: image,
    );
  }
}
