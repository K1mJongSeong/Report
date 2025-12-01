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

  if(result.isNotEmpty) {
    print("발급한 로또 번호: $r");
    print("당첨번호: $lotto");
    print(result);
  }
}