import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:veloria/features/notification/data/model/notification_model.dart';
import 'package:veloria/features/notification/domain/entity/notification_entity.dart';
import 'package:veloria/features/notification/domain/repository/notification_repository.dart';
// ignore: depend_on_referenced_packages
import 'package:http/http.dart' as http;

class NotificationRepoImpl implements NotificationRepository {
  final http.Client client;
  NotificationRepoImpl(this.client);

  @override
  Future<List<NotificationEntity>> fetchNotification() async {
    try {
      final response = await client.get(
        Uri.parse(
          'https://raw.githubusercontent.com/sayanp23/test-api/main/test-notifications.json',
        ),
      );
      if (response.statusCode == 200) {
        return compute(parseNotificationJson, response.body);
      } else {
        throw Exception(
          'Failed to fetch notifications. Status: ${response.statusCode}',
        );
      }
    } catch (e) {
      print('🚨 Exception caught in fetchNotification: $e');
      rethrow;
    }
  }
}

List<NotificationEntity> parseNotificationJson(String body) {
  final jsonData = json.decode(body);

  final List data = jsonData['data'];
  return data.map((item) {
    final model = NotificationModel.fromJson(item);

    return NotificationEntity(
      image: model.image,
      title: model.title,
      body: model.body,
      timestamp: model.timestamp,
    );
  }).toList();
}
