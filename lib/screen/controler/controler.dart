import 'package:get/get.dart';

import '../../utils/apihelper.dart';

class HomeController extends GetxController {
  List<dynamic> dataList = [];

  Future<List> callApi() async {
    dataList = await ApiHelper.apiHelper.getApi();
    return dataList;
  }
}