import 'dart:math';

List<int> pickedList = [];
const int maxLength = 21;
const int totalCount = 245;

class RandomNumber {
  static void initPickedList() {
    pickedList = [];
  }

  static List<int> pickedRandom() {
    initPickedList();
    // 숫자는 12개만 뽑는다.
    if (pickedList.length == maxLength) {
      return pickedList;
    } else {
      // 최대 총 갯수만큼 for문 돌림
      for (int i = 0; i < totalCount; i++) {
        // pickedList가 다 채워졌으면 그만 돌리고 return
        if (pickedList.length == maxLength) {
          return pickedList;
        } else {
          // 랜덤 숫자 생성
          final int pickedRandom = Random().nextInt(totalCount);
          // 랜덤 숫자가 리스트에 있는지 체크
          if (!pickedList.contains(pickedRandom)) {
            // 숫자가 리스트에 없다면,
            pickedList.add(pickedRandom);
          }
        }
      }
    }
    return pickedList;
  }
}
