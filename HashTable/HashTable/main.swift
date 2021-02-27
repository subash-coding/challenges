//
//  main.swift
//  HashTable
//
//  Created by subash on 2/16/21.
//

import Foundation

//######### Custom Hashtable Testing #########################################

var hashTable = MyHashTable<String,String>(capacity: 5)
hashTable["firstname"] = "Subash"

if let firstname = hashTable["firstname"] {
    print(firstname)
}


if let lastname = hashTable["lastname"] {
    print(lastname)
} else  {
    print("lastname key not in hash table")
}


//#########

var numIdentPairs = NumberOfIdenticalPairs()
print("Identical Count: \(numIdentPairs.numIdenticalPairs([1,2,3,1,1,3]))")
print("Identical Count: \(numIdentPairs.numIdenticalPairs([1,1,1,1]))")
print("\n")


//######### NumJewelsInStones ##########
let numberOfJewels = NumJewelsInStones().numJewelsInStones("aA", "aAAbbbb")
print("Number of Jewels \(numberOfJewels)")
print("\n")
