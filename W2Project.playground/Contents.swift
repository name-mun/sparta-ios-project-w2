// 연산 기능이 있는 추상화 프로토콜
protocol AbstractOperation {
    func operation(_ firstNumber: Int, _ secondNumber: Int) -> Int
}

class Calculator {
    
    // 연산 인스턴스 생성
    var operation: AbstractOperation?
    
    func calculate(firstNumber: Int, secondNumber: Int) -> Int {
        (operation?.operation(firstNumber, secondNumber))!

    }
}

// 더하기 연산 기능을 제공하는 클래스
class AddOperation: AbstractOperation {
    func operation(_ firstNumber: Int, _ secondNumber: Int) -> Int {
        return firstNumber + secondNumber
    }
}

// 빼기 연산 기능을 제공하는 클래스
/**
 - parameters:
 - firstNumber:뺴기 연산자의 왼쪽에 오는 수
 - secondNumber: 뺴기 연산자의 오른쪽에 오는 수
 */
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
        
        // 매개변수가 0일 경우 예외 처리
        if firstNumber == 0 || secondNumber == 0 {
            return -1
        } else {
            return firstNumber / secondNumber
        }
    }
}

// 나머지 연산 기능을 제공하는 클래스
class RemainderOperation: AbstractOperation {
    func operation(_ firstNumber: Int, _ secondNumber: Int) -> Int {
        
        // 두번째 매개변수가 0일 경우 예외 처리 -> guard로 바꾸기
        if secondNumber == 0 {
            return -1
        } else {
            return firstNumber % secondNumber
        }
    }
}

let calculator = Calculator()
let addCalculator = AddOperation()
calculator.operation = addCalculator
let addResult = calculator.calculate(firstNumber: 1, secondNumber: 2)
print(addResult)
