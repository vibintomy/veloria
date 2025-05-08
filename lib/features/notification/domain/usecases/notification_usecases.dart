import 'package:veloria/features/notification/domain/entity/notification_entity.dart';
import 'package:veloria/features/notification/domain/repository/notification_repository.dart';

class NotificationUsecases {
  final NotificationRepository notificationRepository;
  NotificationUsecases(this.notificationRepository);

  Future<List<NotificationEntity>> get() async {
    return await notificationRepository.fetchNotification();
  }
}
