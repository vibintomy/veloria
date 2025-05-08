import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:veloria/features/home/presentation/pages/home_page.dart';
import 'package:veloria/features/notification/data/repository_impl/notification_repo_impl.dart';
import 'package:http/http.dart' as http;
import 'package:veloria/features/notification/domain/usecases/notification_usecases.dart';
import 'package:veloria/features/notification/presentation/bloc/notification_bloc.dart';
import 'package:veloria/features/notification/presentation/bloc/notification_event.dart';

void main() {
  final repo = NotificationRepoImpl(http.Client());
  final usecases = NotificationUsecases(repo);
  runApp(MyApp(notificationUsecases: usecases));
}

class MyApp extends StatelessWidget {
  final NotificationUsecases notificationUsecases;
  const MyApp({super.key, required this.notificationUsecases});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=> NotificationBloc(notificationUsecases)..add(FetchNotificationEvent()))
      ],
      child: MaterialApp(
        theme: ThemeData(
          textTheme: GoogleFonts.nunitoTextTheme(
            Theme.of(context).textTheme
          )
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        
        routes: {'/': (context) => HomePage()},
      ),
    );
  }
}
