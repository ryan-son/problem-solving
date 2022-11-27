//
//  P16395.swift
//  problem-solving
//
//  Created by Geonhee on 2022/11/28.
//

/// [실버5 파스칼의 삼각형](https://www.acmicpc.net/problem/16395)
func p16395() {
    let numbers = readLine()!.split(separator: " ").map { Int($0)! }
    let (n, k) = (numbers[0], numbers[1])

    var memo: [[Int]] = Array(
        repeating: Array(repeating: 0, count: n),
        count: n
    )
    func binomial(_ n: Int, _ k: Int) -> Int {
        if (k == 0 || n == k) {
            return 1
        }
        if memo[n][k] == 0 {
            memo[n][k] = binomial(n - 1, k - 1) + binomial(n - 1, k)
        }
        return memo[n][k]
    }

    print(binomial(n - 1, k - 1))
}
