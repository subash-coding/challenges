//
//  HashTableChallenges1.swift
//  HashTable
//
//  Created by subash on 2/17/21.
//

import Foundation

class NumberOfIdenticalPairs {
    
    func numIdenticalPairs(_ nums: [Int]) -> Int {
        var identicalCount = 0
        for i in 0...(nums.count-2) {
            for j in (i+1...(nums.count-1)) {
                if nums[i] == nums[j] {
                    identicalCount += 1
                }
            }
        }
        return identicalCount
    }

}

class NumJewelsInStones {
    func numJewelsInStones(_ jewels: String, _ stones: String) -> Int {
        var count = 0
        for stone in stones {
            if jewels.contains(stone) {
                count += 1
            }
        }
        return count
    }
}
