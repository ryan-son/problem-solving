//
//  P1712.swift
//  problem-solving
//
//  Created by Geonhee on 2022/12/06.
//

/// [브론즈2 손익분기점](https://www.acmicpc.net/problem/1712)
func p1712() {
    let numbers = readLine()!.split(separator: " ").map { Int($0)! }
    let (fixedCost, variableCost, price) = (numbers[0], numbers[1], numbers[2])
    // 손익분기점 == 고정비 + 판매대수 * 변동비 == 판매대수 * 가격
    // 판매대수 == 고정비 / (가격 - 변동비)
    let subtracted = price - variableCost

    if subtracted <= 0 {
        print(-1)
    } else {
        let breakEvenPointQuantity = fixedCost / subtracted
        print(breakEvenPointQuantity + 1)
    }
}
