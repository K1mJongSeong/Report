import 'dart:io';

void main(){
  int score = int.parse(stdin.readLineSync()!);

  if (score >= 90){
  print("이 학생의 점수는 ${score}점 이며, 등급은 A등급입니다 !");
  } else if(score >= 80) {
  print("이 학생의 점수는 ${score}점 이며, 등급은 B등급입니다 !");
  } else{
  print("이 학생의 점수는 ${score}점 이며, 등급은 C등급입니다 !");
  }
}