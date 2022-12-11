//
//  P2738.swift
//  problem-solving
//
//  Created by Geonhee on 2022/12/11.
//

/// [브론즈5 행렬 덧셈](https://www.acmicpc.net/problem/2738)
func p2738() {
    let numbers = readLine()!.split(separator: " ").map { Int($0)! }
    let (n, _) = (numbers[0], numbers[1])
    var a: [[Int]] = []
    var b: [[Int]] = []

    for i in 1...2 {
        for _ in 1...n {
            let row = readLine()!.split(separator: " ").map { Int($0)! }

            if i == 1 {
                a.append(row)
            } else {
                b.append(row)
            }
        }
    }

    var sum: [[Int]] = []

    for (rowA, rowB) in zip(a, b) {
        var sumRow: [Int] = []

        for (elementA, elementB) in zip(rowA, rowB) {
            sumRow.append(elementA + elementB)
        }

        sum.append(sumRow)
    }

    sum.forEach { row in
        print(row.map(String.init).joined(separator: " "))
    }
}
