//
//  P1193.swift
//  problem-solving
//
//  Created by Geonhee on 2022/12/08.
//

/// [브론즈1 분수찾기](https://www.acmicpc.net/problem/1193)
func p1193() {
    let n = Int(readLine()!)!
    var currentLayer = 1
    var currentLayerCount = 1
    var isDown = false

    while n > currentLayerCount {
        currentLayerCount += currentLayer + 1
        currentLayer += 1
        isDown.toggle()
    }

    let rewindCount = currentLayerCount - n
    let upDownCount = currentLayer - rewindCount
    let downUpCount = rewindCount + 1
    print(isDown ? "\(upDownCount)/\(downUpCount)" : "\(downUpCount)/\(upDownCount)")
}
