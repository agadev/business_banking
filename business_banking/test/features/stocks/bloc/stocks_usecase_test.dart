import 'package:business_banking/features/stocks_portfolio/bloc/stocks_usecase.dart';
import 'package:business_banking/features/stocks_portfolio/model/stocks_portfolio_view_model.dart';

import 'package:test/test.dart';

void main() {
  test('StocksUseCase initializes and calls create', () {
    final usecase = StocksUseCase((viewModel) {
      expect(viewModel, isA<StocksPortfolioViewModel>());
    });
    usecase.create();
  });
}