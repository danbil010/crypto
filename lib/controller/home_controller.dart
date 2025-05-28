import 'package:crypto_app/constants/app_assets.dart';
import 'package:crypto_app/models/assets_model.dart';
import 'package:crypto_app/models/transactions_model.dart';
import 'package:crypto_app/services/home_service.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final HomeService _homeService = HomeService();

  List<AssetModel> assetsList = [
    AssetModel(
        profile: AppAssets.icons.bitcoin,
        title: 'Bitcoin(BTC)',
        subtitle: '1,250.00',
        ratio: '2.35'),
    AssetModel(
        profile: AppAssets.icons.etherium,
        title: 'Ehterium(ETH)',
        subtitle: '1,250.00',
        ratio: '2.35'),
  ];

  RxList<TransactionsModel> transactions = <TransactionsModel>[].obs;
  RxBool isLoading = false.obs;
  RxInt notificationCount = 2.obs;

  @override
  void onInit() {
    super.onInit();
    fetchTransactions();
  }

  void fetchTransactions() async {
    isLoading.value = true;
    transactions.value = await _homeService.getTransactions();
    isLoading.value = false;
  }
}
