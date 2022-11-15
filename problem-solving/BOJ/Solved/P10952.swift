//
//  P10952.swift
//  problem-solving
//
//  Created by Geonhee on 2022/11/16.
//

/// [브론즈5 A+B - 5](https://www.acmicpc.net/problem/10952)
func p10952() {
    while true {
        let numbers = readLine()!.split(separator: " ").map { Int($0)! }
        let (pre, post) = (numbers.first!, numbers.last!)

        // 마지막 케이스는 0 0. 입력 조건에 따라 정상적인 입력에서 A > 0이므로 마지막 입력임을 확신할 수 있음
        if pre == 0 && post == 0 { break }
        print("\(pre + post)")
    }
}
