import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import './injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
  // generateForDir: ['lib//core//utils'] // this will only process files inside of the utils folder.
)
void configureDependencies(String env) => $initGetIt(getIt, environment: env);
