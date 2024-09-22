import 'package:docdoc/core/networking/api_error_handler.dart';
import 'package:docdoc/core/networking/api_result.dart';
import 'package:docdoc/features/home/data/api/home_api_service.dart';
import 'package:docdoc/features/home/data/models/specializations_response_model.dart';

class HomeRepo {
  final HomeApiService homeApiService ;

  HomeRepo(this.homeApiService);
  Future<ApiResult<SpecializationsResponseModel>> getSpecialization() async {
    try {
      final response = await homeApiService.getSpecialization();
      return ApiResult.success(response);
    }
    catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}