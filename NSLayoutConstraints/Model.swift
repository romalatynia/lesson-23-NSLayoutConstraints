//
//  Model.swift
//  NSLayoutConstraints
//
//  Created by Harbros47 on 26.02.21.
//

import Foundation

class Model {
   static func randomString(length: Int) -> String {
      let letters = "abcdefghijklmnopqrstuvwxyz "
      return String((0..<length).map { _ in letters.randomElement() ?? Character("") })
    }
    
    static func createMassege() -> [String] {
        var array = [String]()
        
        for _ in 1...30 {
            array.append(Model.randomString(length: Int.random(in: 4...50)))
        }
        return array
    }
}
