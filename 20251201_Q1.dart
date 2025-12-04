import 'dart:io';

void main(){
  // int score = int.parse(stdin.readLineSync()!);
  stdout.write("점수를 입력하세요: ");
  String? input = stdin.readLineSync();

  //입력이 null 이거나 비어있는 경우 예외 처리
  if(input == null || input.trim().isEmpty) {
    print("점수를 입력하지 않았습니다. 프로그램을 종료합니다.");
    return;
  }

  int? score;

  try{
    score = int.parse(input);
  } catch(e) {
    print("숫자가 아닌 값을 입력했습니다. 정수 점수를 입력해야 합니다.");
    return;
  }

  //점수가 정상 범위(0~100)를 벗어난 경우 예외 처리
  if(score <0 || score > 100){
    print("점수는 0에서 100 사이의 값이어야 합니다.");
    return;
  }

  //등급 판정 분기
  if (score >= 90){
  print("이 학생의 점수는 ${score}점 이며, 등급은 A등급입니다 !");
  } else if(score >= 80) {
  print("이 학생의 점수는 ${score}점 이며, 등급은 B등급입니다 !");
  } else{
  print("이 학생의 점수는 ${score}점 이며, 등급은 C등급입니다 !");
  }
}