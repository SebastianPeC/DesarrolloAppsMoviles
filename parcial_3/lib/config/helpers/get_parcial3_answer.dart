import 'package:parcial_3/domain/entities/message.dart';
import 'package:dio/dio.dart';
import 'package:parcial_3/infrastructure/models/parcial3_model.dart';

class GetParcial3Answer {
  final _dio = Dio();

  Future<Message> getAnswer() async {
    final response = await _dio.get('https://yesno.wtf/api');

    final parcial3Model = Parcial3Model.fromJson(response.data);

    return parcial3Model.toMessageEntity();
  }
}
