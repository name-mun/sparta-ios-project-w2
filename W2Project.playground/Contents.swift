class Calculator {
    func calculate(operatorText: String, firstNumber: Int, secondNumber: Int) -> Int {
        switch operatorText {
        case "+":
            return firstNumber + secondNumber
        case "-":
            return firstNumber - secondNumber
        case "*":
            return firstNumber * secondNumber
        case "/":
            return firstNumber / secondNumber
        case "%":
            return firstNumber % secondNumber
        default:
            return 0
        }

    }
}

let calculator = Calculator()
let addResult = calculator.calculate(operatorText: "+", firstNumber: 10, secondNumber: 20)
