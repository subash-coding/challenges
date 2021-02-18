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
