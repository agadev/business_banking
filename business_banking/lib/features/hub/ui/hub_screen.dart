import 'package:business_banking/features/cash_accounts/ui/cash_accounts_widget.dart';
import 'package:business_banking/features/promos/ui/promos_widget.dart';
import 'package:business_banking/features/customer/ui/customer_widget.dart';

import 'package:business_banking/features/side_cash_enrollment/ui/side_cash_enrollment_advertisement/side_cash_enrollment_advertisement_feature.dart';

import 'package:business_banking/features/side_cash/side_cash_details/ui/side_cash_details_card_widget.dart';

import 'package:business_banking/features/transfer_funds/ui/transfer_card.dart';
import 'package:clean_framework/clean_framework.dart';
import 'package:flutter/material.dart';

class HubScreen extends Screen {
  HubScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'Business Banking',
          key: Key('CAappBarName'),
        ),
      ),
      backgroundColor: Colors.grey[300],
      body: Column(
        children: [
          Container(
            child: Center(
                child: Text(
              'Welcome John Doe',
              style: TextStyle(fontSize: 18),
            )),
            height: 80,
          ),
          CashAccountsWidget(),
          SideCashDetailsCardWidget(),
          SizedBox(height: 15),
          //PromosWidget(),
          SizedBox(height: 15),
          TransferFundsCard(),
          SideCashEnrollmentAdvertisementFeatureWidget(),
        ],
      ),
    );
  }
}
