import 'package:get/get.dart';
import 'package:getx_tutorial/model/todo_model.dart';
import 'package:getx_tutorial/service/api_service.dart';

class TodoController extends GetxController {
  RxBool isLoading = false.obs;
  RxString hasError = ''.obs;
  ApiService apiService = ApiService();
  RxList<TodoModel> todoModels = <TodoModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchdata();
  }

  Future<void> fetchdata() async {
    try {
      isLoading.value = true;
      hasError.value = '';

      final result = await apiService.getData();

      if (result.isNotEmpty) {
        todoModels.assignAll(result);
      } else {
        hasError('No Data Found');
      }
    } catch (e) {
      hasError(e.toString());
    } finally {
      isLoading(false);
    }
  }
}
