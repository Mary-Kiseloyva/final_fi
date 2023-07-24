import 'dart:async';

import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../../model/profile.dart';
import '../entity/auth/auth_email_part1_request.dart';
import '../entity/auth/auth_email_part2_request.dart';
import '../entity/auth/auth_email_part2_response.dart';

part 'auth_service.g.dart';

@RestApi()
abstract class AuthService {
  factory AuthService(Dio dio, {String baseUrl}) = _AuthService;

  @POST('/auth/email/part1')
  Future<void> authEmailPart1({
    @Body() required AuthEmailPart1Request request,
  });

  @POST('/auth/email/part2')
  Future<AuthEmailPart2Response> authEmailPart2({
    @Body() required AuthEmailPart2Request request,
  });

  @POST('/auth/register')
  Future<void> register({@Body() required Profile profile});

}
