

import 'package:dio/dio.dart';
import 'package:docdoc/core/networking/api_constants.dart';
import 'package:retrofit/retrofit.dart';

import '../models/specializations_response_model.dart';
import 'home_api_constants.dart';

part 'home_api_service.g.dart';

@RestApi(baseUrl : ApiConstants.apiBaseUrl)
abstract class HomeApiService {
  factory HomeApiService(Dio dio) = _HomeApiService;

  @GET(HomeApiConstants.SpecializationEp)
  Future<SpecializationsResponseModel> getSpecialization();
}