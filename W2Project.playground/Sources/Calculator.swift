//
//  asdf.swift
//  
//
//  Created by mun on 11/17/24.
//

public class Calculator {
    
    // 연산 인스턴스 생성
    public var operation: AbstractOperation?
    
    public init(operation: AbstractOperation? = nil) {
        self.operation = operation
    }
    
    public func calculate(firstNumber: Int, secondNumber: Int) -> Int {
        (operation?.operation(firstNumber, secondNumber))!

    }
}

