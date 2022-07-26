import 'package:cloud_firestore/cloud_firestore.dart';

import '../../features/auth/domain/usecases/get_signed_in_user.dart';
import '../../injection.dart';
import '../entities/errors.dart';

extension FirestoreX on FirebaseFirestore {
  Future<DocumentReference> userDocument() async {
    final userOption = await getIt<GetSignedInUser>().call();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return getIt<FirebaseFirestore>()
        .collection('users')
        .doc(user.uniqueId.getOrCrash());
  }

}

extension DocumentReferenceX on DocumentReference {
  CollectionReference get usersCollection => collection('users');
}
