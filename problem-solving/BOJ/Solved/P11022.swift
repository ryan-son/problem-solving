//
//  P11022.swift
//  problem-solving
//
//  Created by Geonhee on 2022/11/16.
//

/// [브론즈5 A+B - 8](https://www.acmicpc.net/problem/11022)
func p11022() {
    let n = Int(readLine()!)!

    for i in 1...n {
        let numbers = readLine()!.split(separator: " ").map { Int($0)! }
        let (pre, post) = (numbers.first!, numbers.last!)
        print("Case #\(i): \(pre) + \(post) = \(pre + post)")
    }
}
