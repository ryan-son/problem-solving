//
//  P14681.swift
//  problem-solving
//
//  Created by Geonhee on 2022/11/14.
//

/// [브론즈5 사분면 고르기](https://www.acmicpc.net/problem/14681)
func p14681() {
    let x = Int(readLine()!)!
    let y = Int(readLine()!)!

    if x > 0 && y > 0 {
        print("1")
    } else if x < 0 && y > 0 {
        print("2")
    } else if x < 0 && y < 0 {
        print("3")
    } else {
        print("4")
    }
}
