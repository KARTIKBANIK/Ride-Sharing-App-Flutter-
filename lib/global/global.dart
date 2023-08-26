import 'package:firebase_auth/firebase_auth.dart';
import 'package:ride_sharing_app/models/user_model.dart';

final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
User? currentUser;
UserModel? userModelCurrentInfo;
