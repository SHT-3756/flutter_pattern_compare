import 'package:get/get.dart';

class ResultModel {
  RxList<String> tabList = ['전체', '응모', '당첨', '진행중', '종료'].obs; // 백엔드 데이터 가정
  RxList<ResultResState> serverStateList = <ResultResState>[].obs; // 백엔드 데이터 가정
  RxList<FrontState> frontStateList = <FrontState>[].obs;

  void getTabList() => tabList;

  Future<void> fetchingData() async {
    try {
      // 가정 데이터 페칭
      Future.delayed(const Duration(seconds: 2), () {
        serverStateList.value = [
          ResultResState(productImage: 'productImage', title: '제목1', applyCount: 100, winCount: 5, status: '응모', dateString: '24년12월11일'),
          ResultResState(productImage: 'productImage', title: '제목2', applyCount: 50, winCount: 1, status: '응모', dateString: '23년12월10일'),
          ResultResState(productImage: 'productImage', title: '제목3', applyCount: 65, winCount: 3, status: '당첨', dateString: '23년12월25일'),
          ResultResState(productImage: 'productImage', title: '제목4', applyCount: 65, winCount: 3, status: '진행중', dateString: '23년12월25일'),
          ResultResState(productImage: 'productImage', title: '제목5', applyCount: 65, winCount: 3, status: '진행중', dateString: '23년12월25일'),
          ResultResState(productImage: 'productImage', title: '제목6', applyCount: 65, winCount: 3, status: '진행중', dateString: '23년12월25일'),
          ResultResState(productImage: 'productImage', title: '제목7', applyCount: 65, winCount: 3, status: '진행중', dateString: '23년12월25일'),
          ResultResState(productImage: 'productImage', title: '제목8', applyCount: 65, winCount: 3, status: '진행중', dateString: '23년12월25일'),
          ResultResState(productImage: 'productImage', title: '제목9', applyCount: 65, winCount: 3, status: '진행중', dateString: '23년12월25일'),
          ResultResState(productImage: 'productImage', title: '제목10', applyCount: 65, winCount: 3, status: '진행중', dateString: '23년12월25일'),
        ];
        serverStateList.refresh();

        for (var serverState in serverStateList) {
          frontStateList.add(FrontState.fromMap({'key': serverState.status, 'value': serverState}));
        }
        frontStateList.refresh();
      });
    } catch (e) {
      print(e);
    }
  }

  updateTab(int index) {
    print(tabList[index]);

  }
}

class ResultResState {
  final String productImage; // 이미지
  final String title; // 제목
  final int applyCount; // 응모자
  final int winCount; // 당첨자
  final String status; // 상태 // 1(응모), 2(당첨), 3(진행중), 4(종료)
  final String dateString;

  // 프론트 스테이트

  ResultResState({
    required this.productImage,
    required this.title,
    required this.applyCount,
    required this.winCount,
    required this.status,
    required this.dateString,
  }); // 날짜

  factory ResultResState.fromMap(Map<String, dynamic> data) {
    return ResultResState(
      productImage: data['productImage'],
      title: data['title'],
      applyCount: data['applyCount'],
      winCount: data['winCount'],
      status: data['status'],
      dateString: data['dateString'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'productImage': productImage,
      'title': title,
      'applyCount': applyCount,
      'winCount': winCount,
      'status': status,
      'dateString': dateString,
    };
  }

  @override
  String toString() {
    return '$productImage, $title, $applyCount, $winCount, $status, $dateString';
  }
}

class FrontState {
  final String key;
  final ResultResState value;

  FrontState({required this.key, required this.value});

  factory FrontState.fromMap(Map<String, dynamic> data) {
    print(data);
    return FrontState(key: data['key'], value: data['value']);
  }
}
