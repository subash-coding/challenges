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
