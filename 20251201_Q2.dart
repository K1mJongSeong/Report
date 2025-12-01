import 'dart:io';

void main(){
/*인코딩 문제로 cart 배열에 한글 출력이 되지 않아 숫자로 상품 이름을 대체 하였습니다. */
  Map<String, int> product = {
    "1" : 10000, //티셔츠
    "2" : 8000, //바지
    "3" : 4000, //모자
  };

  List<String> cart = [];

  for(int i = 1; i <= 5; i++){
    stdout.write("$i 번째 상품 번호 입력(1=티셔츠,2=바지,3=모자): ");
    String? a = stdin.readLineSync();
    cart.add(a!);
  }

  int total = 0;
  int sale = 0;
  int saleTotal = 0;

  for(String item in cart){
    if(product.containsKey(item)){
      total += product[item]!;
    }
  }
  print("장바구니에 $total원 어치를 담으셨네요 !");


  if(total >= 20000){
    sale = (total * 0.1).toInt();
    saleTotal = (total * 0.9).toInt();
  }
  print("할인금액: $sale원");
  print("최종적으로 결제하실 금액은 $saleTotal 입니다 !");
}