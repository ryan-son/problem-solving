//
//  P24416.swift
//  problem-solving
//
//  Created by Geonhee on 2022/11/28.
//

/// [브론즈1 알고리즘 수업-피보나치 수 1](https://www.acmicpc.net/problem/24416)
func p24416() {
    let n = Int(readLine()!)!
    dpFibonacci(n: n)
    print(dpFibonacci(n: n), n - 2)
}

@discardableResult
fileprivate func dpFibonacci(n: Int) -> Int {
    var f: [Int: Int] = [:]
    f[1] = 1
    f[2] = 1

    for i in 3...n {
        f[i] = f[i - 1]! + f[i - 2]!
    }
    return f[n]!
}
