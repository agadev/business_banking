import 'package:business_banking/features/transfer_funds/api/transfer_request_model.dart';
import 'package:business_banking/features/transfer_funds/api/transfer_response_model.dart';
import 'package:business_banking/features/transfer_funds/api/transfer_service.dart';
import 'package:business_banking/features/transfer_funds/model/transfer_entity.dart';
import 'package:clean_framework/clean_framework.dart';

class TransferFundsServiceAdapter extends ServiceAdapter<
    TransferFundsEntity,
    TransferFundsRequestModel,
    TransferFundsResponseModel,
    TransferFundsService> {
  TransferFundsServiceAdapter() : super(TransferFundsService());

  @override
  TransferFundsRequestModel createRequest(TransferFundsEntity entity) {
    return TransferFundsRequestModel(
        fromAccount: entity.fromAccount,
        toAccount: entity.toAccount,
        amount: entity.amount,
        date: entity.date);
  }

  @override
  TransferFundsEntity createEntity(TransferFundsEntity initialEntity,
      TransferFundsResponseModel responseModel) {
    return initialEntity
        .merge(errors: <EntityError>[], id: responseModel.confirmation);
  }
}
