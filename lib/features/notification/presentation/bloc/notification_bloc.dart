
import 'package:veloria/features/notification/domain/usecases/notification_usecases.dart';
import 'package:veloria/features/notification/presentation/bloc/notification_event.dart';
import 'package:veloria/features/notification/presentation/bloc/notification_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  final NotificationUsecases notificationUsecases;
  NotificationBloc(this.notificationUsecases)
    : super(NotificationStateInitial()) {
    on<NotificationEvent>((event, emit) async {
      emit(NotificationStateLoading());
      try {
        final response = await notificationUsecases.get();
        emit(NotificationStateLoaded(response));
      } catch (e) {
        emit(NotificationStateError(e.toString()));
      }
    });
  }
}
