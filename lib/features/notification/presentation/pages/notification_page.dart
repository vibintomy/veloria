import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:veloria/features/notification/presentation/bloc/notification_bloc.dart';
import 'package:veloria/features/notification/presentation/bloc/notification_state.dart';

class NotificationEntity {
  final String title;
  final String body;
  final DateTime dateTime;

  NotificationEntity({
    required this.title,
    required this.body,
    required this.dateTime,
  });
}

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 1,
          shadowColor: Colors.grey.withOpacity(0.2),
          leading: Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              onTap: () => Navigator.of(context).pop(),
              borderRadius: BorderRadius.circular(20),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.arrow_back, color: Colors.white, size: 20),
              ),
            ),
          ),
          title: const Text(
            'Notifications',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          centerTitle: false,
        ),
      ),
      body: BlocBuilder<NotificationBloc, NotificationState>(
        builder: (context, state) {
          if (state is NotificationStateLoading) {
            return const Center(
              child: CircularProgressIndicator(color: Colors.green),
            );
          } else if (state is NotificationStateLoaded) {
            // Convert raw data to NotificationEntity if needed
            List<NotificationEntity> notifications = state.notification
                .map((n) => NotificationEntity(
                      title: n.title,
                      body: n.body,
                      dateTime: DateTime.now().subtract(const Duration(days: 2)), // example
                    ))
                .toList();

            // Insert custom notification at position 3
            if (notifications.length >= 3) {
              notifications.insert(
                3,
                NotificationEntity(
                  title: '1 item unavailable',
                  body: '1 item from your order is unavailable at the moment. Your money will be refunded.',
                  dateTime: DateTime.now().subtract(const Duration(days: 2)),
                ),
              );
            }

            // Show only first 7
            notifications = notifications.take(7).toList();

            return ListView.separated(
              itemCount: notifications.length,
              separatorBuilder: (_, __) => const Divider(height: 1),
              itemBuilder: (context, index) {
                final notification = notifications[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        margin: const EdgeInsets.only(right: 12),
                        child: Image.asset(
                          getImageForNotification(notification.title),
                          fit: BoxFit.contain,
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              notification.title,
                              style: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              notification.body,
                              style: const TextStyle(fontSize: 12, color: Colors.black87),
                            ),
                            const SizedBox(height: 6),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Text(
                                timeAgo(notification.dateTime),
                                style: const TextStyle(fontSize: 10, color: Colors.grey),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            );
          } else {
            return const Center(child: Text('No notifications found'));
          }
        },
      ),
    );
  }

  /// Maps notification title to image asset
  String getImageForNotification(String title) {
    title = title.toLowerCase();
    if (title.contains('assigned')) return 'asset/order_assigned.png';
    if (title.contains('delivered')) return 'asset/order_delivered.png';
    if (title.contains('cancelled')) return 'asset/order_cancelled.png';
    if (title.contains('unavailable') || title.contains('1 item')) return 'asset/out-of-stock 1.png';
    if (title.contains('mega sale') || title.contains('promotion')) return 'asset/promotion_marketplace.png';
    if (title.contains('googlepay') || title.contains('cashback')) return 'asset/promotion_nootify.png';
    if (title.contains('support')) return 'asset/support_peersonnel.png';
    return 'asset/promotion_nootify.png';
  }

  /// Converts DateTime to time-ago format (e.g. "2 days ago", "57 mins ago")
  String timeAgo(DateTime dateTime) {
    final now = DateTime.now();
    final difference = now.difference(dateTime);

    if (difference.inMinutes < 60) return '${difference.inMinutes} mins ago';
    if (difference.inHours < 24) return '${difference.inHours} hours ago';
    return '${difference.inDays} days ago';
  }
}
