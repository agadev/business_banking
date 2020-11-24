import 'package:business_banking/features/hello_customer/bloc/hello_customer_bloc.dart';
import 'package:business_banking/features/hello_customer/model/hello_customer_view_model.dart';
import 'package:business_banking/features/hello_customer/model/hello_customer_detail_view_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('HelloCustomerBloc gets view model, real', () {
    final bloc = HelloCustomerBloc();

    bloc.helloCustomerViewModelPipe.receive.listen(expectAsync1((model) {
      expect(model, isA<HelloCustomerViewModel>());
      expect(model.helloString, "Mr. Joe A");
    }));

    bloc.helloCustomerDetailViewModelPipe.receive.listen(expectAsync1((model) {
      expect(model, isA<HelloCustomerDetailViewModel>());
      expect(model.honrsic, "Mr.");
      expect(model.name, "Joe A");
      expect(model.weather, "sunny");
      expect(model.address, "1234 ABCD Rd, City, State 00000");
    }));
  });
}
