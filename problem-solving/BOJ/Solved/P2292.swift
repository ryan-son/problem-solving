//
//  P2292.swift
//  problem-solving
//
//  Created by Geonhee on 2022/12/07.
//

/// [브론즈2 벌집](https://www.acmicpc.net/problem/2292)
func p2292() {
    let n = Int(readLine()!)!
    var currentLayer = 1
    var layerLastNumber = 1

    while n > layerLastNumber {
        layerLastNumber += currentLayer * 6
        currentLayer += 1
    }
    print(currentLayer)
}
