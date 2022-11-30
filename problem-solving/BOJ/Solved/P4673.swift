//
//  P4673.swift
//  problem-solving
//
//  Created by Geonhee on 2022/11/30.
//

/// [실버5 셀프 넘버](https://www.acmicpc.net/problem/4673)
func p4673() {
    var selfNumbers: [Int?] = Array(1...10000)

    selfNumbers
        .forEach {
            let result = d($0!)
            if result <= 10000 {
                selfNumbers[result - 1] = nil
            }
        }

    selfNumbers
        .forEach {
            if let selfNumber = $0 {
                print(selfNumber)
            }
        }
}

fileprivate func d(_ n: Int) -> Int {
    let splitSum = String(n)
        .map { Int(String($0))! }
        .reduce(0, +)
    return n + splitSum
}
