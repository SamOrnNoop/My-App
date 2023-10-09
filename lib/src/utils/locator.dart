import 'package:get_it/get_it.dart';
import 'package:my_app/src/utils/navigator_state.dart';

GetIt getIt = GetIt.instance;
void registerServicesReuse() {
  getIt.registerSingleton(NavigatorService());
}
