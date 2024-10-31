// 연산 기능이 있는 추상화 프로토콜
protocol AbstractOperation {
    func operation(_ firstNumber: Int, _ secondNumber: Int) -> Int
}

class Calculator {
    
    // 연산 인스턴스 생성
    let addOperation = AddOperation()
    let subtractOperation = SubtractOperation()
    let multiplyOperation = MultiplyOperation()
    let divideOperation = DivideOperation()
    let remainderOperation = RemainderOperation()
    
    func calculate(operatorText: String, firstNumber: Int, secondNumber: Int) -> Int {
        switch operatorText {
        case "+":
            return addOperation.operation(firstNumber, secondNumber)
        case "-":
            return subtractOperation.operation(firstNumber, secondNumber)
        case "*":
            return multiplyOperation.operation(firstNumber, secondNumber)
        case "/":
            return divideOperation.operation(firstNumber, secondNumber)
        case "%":
            return remainderOperation.operation(firstNumber, secondNumber)
        default:
            return 0
        }

    }
}

// 더하기 연산 기능을 제공하는 클래스
class AddOperation: AbstractOperation {
    func operation(_ firstNumber: Int, _ secondNumber: Int) -> Int {
        return firstNumber + secondNumber
    }
}

// 빼기 연산 기능을 제공하는 클래스
class SubtractOperation: AbstractOperation {
    func operation(_ firstNumber: Int, _ secondNumber: Int) -> Int {
        return firstNumber - secondNumber
    }
}

// 곱하기 연산 기능을 제공하는 클래스
class MultiplyOperation: AbstractOperation {
    func operation(_ firstNumber: Int, _ secondNumber: Int) -> Int {
        return firstNumber * secondNumber
    }
}

// 나누기 연산 기능을 제공하는 클래스
class DivideOperation: AbstractOperation {
    func operation(_ firstNumber: Int, _ secondNumber: Int) -> Int {
        return firstNumber / secondNumber
    }
}

// 나머지 연산 기능을 제공하는 클래스
class RemainderOperation: AbstractOperation {
    func operation(_ firstNumber: Int, _ secondNumber: Int) -> Int {
        return firstNumber % secondNumber
    }
}

let calculator = Calculator()
let addResult = calculator.calculate(operatorText: "+", firstNumber: 10, secondNumber: 20)
