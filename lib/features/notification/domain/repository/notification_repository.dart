import 'package:veloria/features/notification/domain/entity/notification_entity.dart';

abstract class NotificationRepository {
  Future<List<NotificationEntity>> fetchNotification();
}
