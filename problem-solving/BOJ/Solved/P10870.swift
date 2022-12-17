//
//  P10870.swift
//  problem-solving
//
//  Created by Geonhee on 2022/12/17.
//

/// [브론즈2 피보나치 수 5](https://www.acmicpc.net/problem/10870)
func p10870() {
    let n = Int(readLine()!)!
    print(recursiveFibonacci(of: n))
}

private func recursiveFibonacci(of n: Int) -> Int {
    if n == 0 {
        return 0
    }

    if n == 1 {
        return 1
    }
    return recursiveFibonacci(of: n - 1) + recursiveFibonacci(of: n - 2)
}
