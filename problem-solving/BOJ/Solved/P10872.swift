//
//  P10872.swift
//  problem-solving
//
//  Created by Geonhee on 2022/12/16.
//

/// [브론즈5 팩토리얼](https://www.acmicpc.net/problem/10872)
func p10872() {
    let n = Int(readLine()!)!
    print(recursiveFactorial(of: n))
}

private func recursiveFactorial(of n: Int) -> Int {
    if n == 0 || n == 1 {
        return 1
    }
    return n * recursiveFactorial(of: n - 1)
}
