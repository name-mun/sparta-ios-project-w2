# 내일배움캠프 iOS 5기 2주차 개인과제

## 프로젝트 주제
Swift로 계산기 만들기

## 주요 기능 소개
- `Calculator` 클래스의 `calculate()` 메서드에서 `operatorText` 매개변수에 따라 각기 다른 기능 실행
- `AddOperation`, `SubtractOperation`, `MultiplyOperation`, `DivideOperation`, `RemainderOperation` 클래스에서 연산 실행
- `AbstractOperation` 프로토콜을 통해 추상화 정의

## 추가 구현 소개
- `DivideOperation` 클래스의 매개변수 중 하나라도 0이 들어왔을 경우 예외처리
- `RemainderOperation` 클래스의 두 번째 매개변수에 0이 들어왔을 경우 예외처리
