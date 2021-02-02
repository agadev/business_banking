import 'package:business_banking/features/side_cash_enrollment/bloc/side_cash_enrollment_usecase.dart';
import 'package:business_banking/features/side_cash_enrollment/model/enrollment_advertisement_entity.dart';
import 'package:business_banking/features/side_cash_enrollment/model/enrollment_advertisement_view_model.dart';
import 'package:business_banking/features/side_cash_enrollment/model/enrollment_form_entity.dart';
import 'package:business_banking/features/side_cash_enrollment/model/enrollment_form_view_model.dart';
import 'package:clean_framework/clean_framework.dart';
import 'package:clean_framework/clean_framework_defaults.dart';
import 'package:flutter/cupertino.dart';
import 'package:mockito/mockito.dart';

import '../../../../lib/locator.dart';

class DummyFunctions {
  formVMCallback(ViewModelv ) {}

  advertisementVMCallback(ViewModelv ) {}

  completionVMCallback(ViewModel v){}

  updateSelectedAccount(String s) {}
}

class MockDummyFunctions extends Mock implements DummyFunctions {}

final String jsonDataAdvertisement = """
      {
        "message": "sign up for side cash!"
     
      }
  """;

String get serviceJson => """
{
  "accounts": [
    "savings-123",
    "checking-234"
  ],
  "firstAvailableStartDate": "20210131T000000-0600"
}
""";

EnrollmentAdvertisementEntity initialAdvertisementEntity() {
  return EnrollmentAdvertisementEntity(message: "Sign Up for Side Cash!");
}

EnrollmentAdvertisementViewModel initialAdvertisementViewModel() {
  return EnrollmentAdvertisementViewModel(message: "Sign Up for Side Cash!");
}

EnrollmentFormEntity initialFormEntity(
    {bool accountsEmpty = false,
    bool accountsNull = false,
}) {
  List<String> accounts = [
    "savings-123",
    "checking-234",
  ];


  if (accountsEmpty) accounts = [];
  if (accountsNull) accounts = null;

  return EnrollmentFormEntity(
    accounts: accounts,
    selectedAccount: null,

  );
}

EnrollmentFormViewModel initialFormViewModel({
  firstAvailableStartDateNull = false,
  accountsNull = false,
  accountsEmpty = false,
}) {
  List<String> accounts = [
    "savings-123",
    "checking-234",
  ];

  DateTime firstAvailableStartDate = DateTime.parse("20210131T000000-0600");

  if (accountsEmpty) accounts = [];
  if (accountsNull) accounts = null;
  if (firstAvailableStartDateNull) firstAvailableStartDate = null;

  return EnrollmentFormViewModel(
      accounts: accounts,
      selectedAccount: null,
      selectedStartDate: null,
      firstAvailableStartDate: firstAvailableStartDate);
}