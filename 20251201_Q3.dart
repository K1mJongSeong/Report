import 'dart:math';

void main(){
  List<int> luckyNumbers = [];
  List<int> lotto = [9,19,29,35,37,38];

  for(int i = 0; i<=5; i++){
    int number = Random().nextInt(46);
    while(luckyNumbers.contains(number)){
      number = Random().nextInt(46);
    }
    luckyNumbers.add(number);
  }

//발급 번호가 유효한지 검사
  if(luckyNumbers.any((x)=>x<1 || x > 45)){
    print("발급된 번호 중 기준 범위를 벗어난 값이 있어 판정을 진행하지 않습니다.");
    return;
  }

//중복 방지
  Set<int> result = luckyNumbers.toSet().intersection(lotto.toSet());

  print("발급한 로또 번호: $luckyNumbers");
  if(result.length >= 5){
      print("당첨 여부: 1등 당첨");
  } else if(result.length ==4){
    print("당첨 여부: 2등 당첨");
  } else if(result.length ==3){
    print("당첨 여부: 3등 당첨");
  } else{
    print("당첨 여부: 당첨 실패");
  }

  luckyNumbers.clear();
  print("현재 발급한 로또 번호: $luckyNumbers");
}