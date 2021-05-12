import 'package:clean_framework/clean_framework_defaults.dart';

class NewOnlineRegistrationServiceResponseModel extends JsonResponseModel {
  final bool didSucceed;
  final String accountNumberGenerated;

  NewOnlineRegistrationServiceResponseModel.fromJson(Map<String, dynamic> json)
      : didSucceed = true, //change to false?
        accountNumberGenerated = '123456';

  // didSucceed = json['didSucceed'] ?? true, //change to false?
  // status = json['status'] ?? '',
  // accountNumberGenerated = json['accountNumberGenerated'] ?? '123456';

  @override
  List<Object> get props => [didSucceed, accountNumberGenerated];
}
