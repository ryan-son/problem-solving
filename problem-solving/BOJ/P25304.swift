//
//  P25304.swift
//  problem-solving
//
//  Created by Geonhee on 2022/11/15.
//

/// [브론즈5 영수증](https://www.acmicpc.net/problem/25304)
func p25304() {
    let totalPrice = Int(readLine()!)!
    let n = Int(readLine()!)!
    var sumPrice: Int = 0

    for _ in 1...n {
        let item = readLine()!.split(separator: " ").map { Int($0)! }
        sumPrice += item.first! * item.last!
    }

    print("\(totalPrice == sumPrice ? "Yes" : "No")")
}
