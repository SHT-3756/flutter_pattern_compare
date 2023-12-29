class ProductRepository {
  Future<List<String>> loadDefaultProduct() async {
    Future.delayed(const Duration(seconds: 2));
    return List.generate(10, (index) => 'default_$index');
  }

  Future<List<String>?> loadLoginDefaultProduct(bool isLogin) async {
    if(isLogin) {
      await Future.delayed(const Duration(seconds: 2));
      return List.generate(10, (index) => 'logined_$index');
    } else {
      return null;
    }
  }
}