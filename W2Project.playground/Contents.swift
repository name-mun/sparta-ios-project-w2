// 연산 기능이 있는 추상화 프로토콜

let calculator = Calculator()
let addCalculator = AddOperation()
calculator.operation = addCalculator
let addResult = calculator.calculate(firstNumber: 1, secondNumber: 2)
print(addResult)
