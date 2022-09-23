import 'package:cloud_firestore/cloud_firestore.dart';

import '../../features/auth/domain/usecases/get_signed_in_user.dart';
import '../../injection.dart';
import '../entities/errors.dart';

extension FirestoreX on FirebaseFirestore {
  DocumentReference<Map<String, dynamic>> userAccountDocument() {
    final userOption = getIt<GetSignedInUser>().call();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return getIt<FirebaseFirestore>()
        .collection('users')
        .doc(user.uniqueId.getOrCrash());
  }

  DocumentReference<Map<String, dynamic>> userUtils() {
    final userOption = getIt<GetSignedInUser>().call();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return getIt<FirebaseFirestore>()
        .collection('users_utils')
        .doc(user.uniqueId.getOrCrash());
  }

  CollectionReference<Map<String, dynamic>> userCart() {
    final userOption = getIt<GetSignedInUser>().call();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return getIt<FirebaseFirestore>()
        .collection('users_utils')
        .doc(user.uniqueId.getOrCrash())
        .collection('cart');
  }

  CollectionReference<Map<String, dynamic>> userFavourites() {
    final userOption = getIt<GetSignedInUser>().call();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return getIt<FirebaseFirestore>()
        .collection('users_utils')
        .doc(user.uniqueId.getOrCrash())
        .collection('favourite_products');
  }

  CollectionReference<Map<String, dynamic>> userOrders() {
    final userOption = getIt<GetSignedInUser>().call();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return getIt<FirebaseFirestore>()
        .collection('users_utils')
        .doc(user.uniqueId.getOrCrash())
        .collection('orders');
  }
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference<Map<String, dynamic>> get usersCollection =>
      collection('users');

  CollectionReference<Map<String, dynamic>> get userUtilsCollection =>
      collection('users_utils');

  CollectionReference<Map<String, dynamic>> get userOrdersCollection =>
      collection('orders');

  CollectionReference<Map<String, dynamic>> get userFavouritesCollection =>
      collection('favourite_products');

  CollectionReference<Map<String, dynamic>> get userCartCollection =>
      collection('cart');

  CollectionReference<Map<String, dynamic>> get productsCollection =>
      collection('products');
}
