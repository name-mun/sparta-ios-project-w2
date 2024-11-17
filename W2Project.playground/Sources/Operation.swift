//
//  AbstractOperation.swift
//  
//
//  Created by mun on 11/17/24.
//
public protocol AbstractOperation {
    func operation(_ firstNumber: Int, _ secondNumber: Int) -> Int
}

// 더하기 연산 기능을 제공하는 클래스
public class AddOperation: AbstractOperation {
    required public init() {}

    public func operation(_ firstNumber: Int, _ secondNumber: Int) -> Int {
        return firstNumber + secondNumber
    }
}

// 빼기 연산 기능을 제공하는 클래스
/**
 - parameters:
 - firstNumber:뺴기 연산자의 왼쪽에 오는 수
 - secondNumber: 뺴기 연산자의 오른쪽에 오는 수
 */
public class SubtractOperation: AbstractOperation {
    required public init() {}
    
    public func operation(_ firstNumber: Int, _ secondNumber: Int) -> Int {
        return firstNumber - secondNumber
    }
}

// 곱하기 연산 기능을 제공하는 클래스
public class MultiplyOperation: AbstractOperation {
    required public init() {}
    
    public func operation(_ firstNumber: Int, _ secondNumber: Int) -> Int {
        return firstNumber * secondNumber
    }
}

// 나누기 연산 기능을 제공하는 클래스
public class DivideOperation: AbstractOperation {
    required public init() {}
    
    public func operation(_ firstNumber: Int, _ secondNumber: Int) -> Int {
        
        // 두번째 매개변수가 0일 경우 예외 처리
        if secondNumber == 0 {
            return -1
        } else {
            return firstNumber / secondNumber
        }
    }
}

// 나머지 연산 기능을 제공하는 클래스
public class RemainderOperation: AbstractOperation {
    required public init() {}
    
    public func operation(_ firstNumber: Int, _ secondNumber: Int) -> Int {
        
        // 두번째 매개변수가 0일 경우 예외 처리
        if secondNumber == 0 {
            return -1
        } else {
            return firstNumber % secondNumber
        }
    }
}
