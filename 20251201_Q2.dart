import 'dart:io';

void main(){
/*인코딩 문제로 cart 배열에 한글 출력이 되지 않아 숫자로 상품 이름을 대체 하였습니다.(windows terminal 설치 불가 환경)*/
  Map<String, int> product = {
    "1" : 10000, //티셔츠
    "2" : 8000, //바지
    "3" : 4000, //모자
  };

  // Map<String, int> product = {
  //   "티셔츠" : 10000,
  //   "바지" : 8000,
  //   "모자" : 4000,
  // };

  List<String> cart = [];

  for(int i = 1; i <= 5; i++){
    stdout.write("$i 번째 상품 번호 입력(1=티셔츠,2=바지,3=모자): ");
    String? input = stdin.readLineSync();

    cart.add(input!);
  }

  int total = 0;

  for (String item in cart) {
    total += product[item]!;
  }

  print("장바구니 총액: ${total}원");

  int sale = 0;
  int saleTotal = total;

  //할인 조건 예외 처리: 금액이 0이거나 음수일 리 없지만 안정성 확보
  if (total <= 0) {
    print("장바구니 총액이 올바르지 않습니다. 계산을 종료합니다.");
    return;
  }

  if (total >= 20000) {
    sale = (total * 0.1).toInt();
    saleTotal = total - sale;
  }

  print("할인 금액: $sale원");
  print("최종 결제 금액: $saleTotal원 입니다 !");
}