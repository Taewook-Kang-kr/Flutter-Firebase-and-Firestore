import 'package:questor/constants/route_names.dart';
import 'package:questor/locator.dart';
import 'package:questor/services/authentication_service.dart';
import 'package:questor/services/navigation_service.dart';
import 'package:questor/viewmodels/base_model.dart';

class StartUpViewModel extends BaseModel {
  final AuthenticationService _authenticationService =
      locator<AuthenticationService>();
  final NavigationService _navigationService = locator<NavigationService>();

  Future handleStartUpLogic() async {
    var hasLoggedInUser = await _authenticationService.isUserLoggedIn();
 _navigationService.navigateTo(LoginViewRoute);
    // if (hasLoggedInUser) {
    //   _navigationService.navigateTo(HomeViewRoute);
    // } else {
    //   _navigationService.navigateTo(LoginViewRoute);
    // }
  }
}