//
//  SortingWithKeyPath.swift
//
//
//  Created by Neo Golightly on 12.03.24.
//

import Foundation

extension Sequence {
  
  /// Sorts a Sequence with the help of KeyPath
  /// - Parameters:
  ///   - keyPath: Proprty which should be used for sorting
  ///   - ascending: Should sort be ascending
  /// - Returns: Sorted sequence
  public func sorted<T: Comparable>(by keyPath: KeyPath<Element, T>, ascending: Bool = true) -> [Element] {
    return sorted { a, b in
      if ascending {
        return a[keyPath: keyPath] < b[keyPath: keyPath]
      } else {
        return a[keyPath: keyPath] > b[keyPath: keyPath]
      }
    }
  }
}
