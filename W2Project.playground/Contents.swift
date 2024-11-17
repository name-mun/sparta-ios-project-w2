// 연산 기능이 있는 추상화 프로토콜

let calculator = Calculator()
let divideCalculator = DivideOperation()
calculator.operation = divideCalculator
let addResult = calculator.calculate(firstNumber: 1, secondNumber: 0)
print(addResult)
