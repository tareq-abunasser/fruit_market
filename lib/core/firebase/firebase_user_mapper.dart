import 'package:firebase_auth/firebase_auth.dart' as firebase;
import 'package:fruit_market/features/auth/data/models/user_dtos.dart';

import '../../features/auth/domain/entities/user.dart';
import '../entities/value_objects.dart';

extension FirebaseUserDomainX on firebase.User {
  UserDTO toDomain() {
    return UserDTO.fromDomain(User(
      uniqueId: UniqueId.fromUniqueString(uid),
    ));
  }
}
