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

class SmallerNumbersThanCurrent {
    func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
        return []
    }
}


class SpNumber {
    func a() {
        let pills = [8,1,2,2,3]
        var dictionary = [Int:Int]()
        for i in 0...(pills.count-1) {
            dictionary[i] = 0
        }
        for i in 0...(pills.count-2) {
            for j in (i+1...(pills.count-1)) {
                if pills[i] > pills[j] {
                    dictionary[i] = dictionary[i]!+1
                } else {
                    dictionary[j] = dictionary[j]!+1
                }
            }
        }
        print(Array(dictionary.values))
    }
}
