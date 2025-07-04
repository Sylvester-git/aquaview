import 'package:waterapp/features/model/alerts.dart';
import 'package:waterapp/features/model/prediction.dart';
import 'package:waterapp/features/model/wqms.dart';

extension ConvertToPredictionModel on Map<String, dynamic> {
  PredictionModel convertToPredictionModel() {
    final data = this;
    return PredictionModel(
      timestamp: data['timestamp'],
      pH: data['pH'],
      tds: data['tds'],
      temp: data['temp'],
      tub: data['turbidity'],
      confidence: data['confidence'],
      status: data['status'],
    );
  }
}

extension ConvertToAlertsModel on Map<String, dynamic> {
  Alerts convertToAlertsModel() {
    final data = this;
    return Alerts(
      id: data['_id'],
      timestamp: data['timestamp'],
      alerts: (data['alerts'] as List).cast<String>(),
    );
  }
}

extension ConvertToWQMSModel on Map<String, dynamic> {
  WQMSModel convertToWQMSModel() {
    final data = this;
    return WQMSModel(
      id: data['_id'],
      timestamp: data['timestamp'],
      pH: data['pH'],
      tds: data['tds'],
      temp: data['temp'],
      tub: data['turbidity'],
    );
  }
}

extension ConvertToDateTime on String {
  DateTime convertToDateTime() {
    final DateTime data = DateTime.parse(this);
    return data;
  }
}
