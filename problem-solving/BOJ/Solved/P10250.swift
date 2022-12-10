//
//  P10250.swift
//  problem-solving
//
//  Created by Geonhee on 2022/12/09.
//

import Foundation

/// [브론즈3 ACM 호텔](https://www.acmicpc.net/problem/10250)
func p10250() {
    let n = Int(readLine()!)!

    for _ in 1...n {
        let numbers = readLine()!.split(separator: " ").map { Double($0)! }
        let (h, _, customerNumber) = (numbers[0], numbers[1], numbers[2])
        let ho = Int(ceil(customerNumber / h))
        let floor = (Int(customerNumber) % Int(h) == 0) ? Int(h) : Int(customerNumber) % Int(h)
        print((ho >= 10) ? "\(floor)\(ho)" : "\(floor)0\(ho)")
    }
}
