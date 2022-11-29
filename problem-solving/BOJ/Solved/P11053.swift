//
//  P11053.swift
//  problem-solving
//
//  Created by Geonhee on 2022/11/28.
//

/// [실버2 가장 긴 증가하는 부분 수열](https://www.acmicpc.net/problem/11053)
///
/// DP, LIS
func p11053() {
    let n = Int(readLine()!)!
    let series = readLine()!.split(separator: " ").map { Int($0)! }
    var d: [Int] = []

    for i in 0..<n {
        d.append(1)
        for j in 0..<i + 1 where series[j] < series[i] {
            d[i] = max(d[i], d[j] + 1)
            print("i: \(i), j: \(j), \(d), \(series[i]) \(series[j])")
        }
    }
    print(d.max()!)
}

// 3 5 7 9 2 1 4 8
