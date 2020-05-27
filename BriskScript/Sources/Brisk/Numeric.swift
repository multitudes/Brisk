//
//  Comparable.swift
//  Terminal
//
//  Created by Paul Hudson on 20/02/2020.
//  Copyright © 2020 Hacking with Swift. All rights reserved.
//

import Foundation

func +<I: BinaryInteger, F: BinaryFloatingPoint>(lhs: I, rhs: F) -> F {
    return F(lhs) + rhs
}

func +<I: BinaryInteger, F: BinaryFloatingPoint>(lhs: F, rhs: I) -> F {
    return lhs + F(rhs)
}

func -<I: BinaryInteger, F: BinaryFloatingPoint>(lhs: I, rhs: F) -> F {
    return F(lhs) - rhs
}

func -<I: BinaryInteger, F: BinaryFloatingPoint>(lhs: F, rhs: I) -> F {
    return lhs - F(rhs)
}

func *<I: BinaryInteger, F: BinaryFloatingPoint>(lhs: I, rhs: F) -> F {
    return F(lhs) * rhs
}

func *<I: BinaryInteger, F: BinaryFloatingPoint>(lhs: F, rhs: I) -> F {
    return lhs * F(rhs)
}

func /<I: BinaryInteger, F: BinaryFloatingPoint>(lhs: I, rhs: F) -> F {
    return F(lhs) / rhs
}

func /<I: BinaryInteger, F: BinaryFloatingPoint>(lhs: F, rhs: I) -> F {
    return lhs / F(rhs)
}

// ------------------------------------------
// How to add two Tuples with the + operator in Swift
// Good for adding two coordinates together
// ex 
// let position = (x: 0, y: 0)
// let rightMove = (x: 0, y: 1)
// let downMove = (x: 1, y: 0)
// let positionA = position + rightMove
// let positionB = position + downMove

func +<T : Numeric>(_ a: (T, T), _ b: (T, T)) -> (T, T) {
    return (a.0 + b.0, a.1 + b.1)
}

func -<T : Numeric>(_ a: (T, T), _ b: (T, T)) -> (T, T) {
    return (a.0 - b.0, a.1 - b.1)
}

func *<T : Numeric>(_ a: (T, T), _ b: (T, T)) -> (T, T) {
    return (a.0 * b.0, a.1 * b.1)
}

func /<T : Numeric>(_ a: (T, T), _ b: (T, T)) -> (T, T) {
    return (a.0 / b.0, a.1 / b.1)
}


// ------------------------------------------
// How to replicate the ** operator in Swift
// 

infix operator **

func **<I: BinaryInteger>(lhs: I, rhs: I) -> I {
    return I(pow(Double(lhs), Double(rhs)))
}

func **<I: BinaryInteger, F: BinaryFloatingPoint>(lhs: I, rhs: F) -> F {
    return F(pow(Double(lhs),Double(rhs)))
}

func **<I: BinaryInteger, F: BinaryFloatingPoint>(lhs: F, rhs: I) -> F {
    return F(pow(Double(lhs),Double(rhs)))
}

func **<F: BinaryFloatingPoint>(lhs: F, rhs: F) -> F {
    return F(pow(Double(lhs),Double(rhs)))
}
