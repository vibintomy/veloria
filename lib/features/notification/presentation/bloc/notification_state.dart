import 'package:veloria/features/notification/domain/entity/notification_entity.dart';

abstract class NotificationState {}

class NotificationStateInitial extends NotificationState {}

class NotificationStateLoading extends NotificationState {}

class NotificationStateLoaded extends NotificationState {
  final List<NotificationEntity> notification;
  NotificationStateLoaded(this.notification);
}

class NotificationStateError extends NotificationState {
  final String message;
  NotificationStateError(this.message);
}
