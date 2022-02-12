import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import '../../presentation/routes/router.gr.dart';

@module
abstract class InjectableModule {
  @singleton
  AppRouter get appRouter => AppRouter();

  @lazySingleton
  FirebaseFirestore get firestore => FirebaseFirestore.instance;

  @lazySingleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;
}
