//
//  main.swift
//  HashTable
//
//  Created by subash on 2/16/21.
//

import Foundation

public struct HashTable<Key: Hashable, Value> {
    private typealias Element = (key: Key, value: Value)
    private typealias Bucket = [Element]
    private var buckets: [Bucket]
    
    private(set) var count = 0
    public var isEmpty: Bool {
        return count == 0
    }
    
    public init(capacity: Int) {
        assert(capacity>0)
        buckets = Array<Bucket>(repeating: [], count: capacity)
    }
    
    private func index(for key: Key) -> Int {
        return abs(key.hashValue) % buckets.count
    }
    
    public subscript(key: Key) -> Value? {
        get{
            let index = self.index(for: key)
            return buckets[index].first { $0.key == key}?.value
        }
        set {
            if let value = newValue {
                update(value: value, for: key)
            }
        }
    }
    
    @discardableResult
    public mutating func update(value: Value, for key: Key) -> Value? {
        let index = self.index(for: key)
        
        if let (i, element) = buckets[index].enumerated().first(where: { $0.1.key == key }) {
          let oldValue = element.value
          buckets[index][i].value = value
          return oldValue
        }
        
        buckets[index].append((key: key, value: value))
        count += 1
        return nil
    }
    
}

