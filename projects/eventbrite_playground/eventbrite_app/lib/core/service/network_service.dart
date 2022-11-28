import 'package:dio/dio.dart';
import 'package:eventbrite_app/core/model/event/event.dart';
import 'package:eventbrite_app/core/model/user/user.dart';
import 'package:logger/logger.dart';
import 'package:retrofit/retrofit.dart';

part 'network_service.g.dart';

@RestApi(baseUrl: 'https://636e5c82b567eed48adb2eec.mockapi.io/api/v1/')
abstract class NetworkService {
  factory NetworkService(Dio dio, {String baseUrl}) = _NetworkService;

  @GET('/users')
  Future<List<User>> getUsers();

  @POST('/users')
  Future<User> createUser(@Body() User user);

  @GET('/events')
  Future<List<Event>> getEvents();
}

class Service {
  Service._init();
  static final Service _instance = Service._init();
  static Service get instance => _instance;
  static final NetworkService _networkService = NetworkService(Dio());

  Future<List<User>> getUsers() async {
    try {
      final List<User> users = await _networkService.getUsers();
      return users;
    } on DioError catch (e) {
      Logger().e(e);
      return [];
    }
  }

  Future<List<Event>> getEvents() async {
    try {
      final List<Event> events = await _networkService.getEvents();
      return events;
    } on DioError catch (e) {
      Logger().e(e);
      return [];
    }
  }

  Future<bool> isEmailExist({required String email}) async {
    try {
      var response = await _networkService.getUsers();
      return response.map((e) => e.email).toList().contains(email);
    } catch (e) {
      return false;
    }
  }

  Future<User?> isLogin(
      {required String email, required String password}) async {
    try {
      var response = await _networkService.getUsers();
      return response
          .where((element) => element.email == email)
          .where((element) => element.password == password)
          .first;
    } catch (e) {
      return null;
    }
  }

  Future<bool> createUser({required User user}) async {
    try {
      var response = await _networkService.createUser(user);
      Logger().i(response);
      return true;
    } catch (e) {
      return false;
    }
  }
}