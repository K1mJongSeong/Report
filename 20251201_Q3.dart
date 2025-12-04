import 'dart:math';

void main(){
  List<int> r = [];
  List<int> lotto = [9,19,29,35,37,38];

  for(int i = 0; i<=5; i++){
    int number = Random().nextInt(46);
    while(r.contains(number)){
      number = Random().nextInt(46);
    }
    r.add(number);
  }

  Set<int> result = r.toSet().intersection(lotto.toSet());

  print("발급한 로또 번호: $r");
  if(result.length >= 5){
      print("당첨 여부: 1등 당첨");
  } else if(result.length ==4){
    print("당첨 여부: 2등 당첨");
  } else if(result.length ==3){
    print("당첨 여부: 3등 당첨");
  } else{
    print("당첨 여부: 당첨 실패");
  }

  r.clear();
  print("현재 발급한 로또 번호: $r");
}