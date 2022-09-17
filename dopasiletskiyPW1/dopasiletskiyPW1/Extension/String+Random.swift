//
//  String+Random.swift
//  dopasiletskiyPW1
//
//  Created by Даниил Пасилецкий on 17.09.2022.
//

import Foundation

extension String {

  static func randomHexString() -> String {
    let allowedChars = "ABCDEF0123456789"
    var randomString = ""

    for _ in 0 ..< 6 {
      let randomNum = Int(arc4random_uniform(UInt32(allowedChars.count)))
      let randomIndex = allowedChars.index(allowedChars.startIndex, offsetBy: randomNum)
      let newCharacter = allowedChars[randomIndex]
      randomString += String(newCharacter)
    }

    return randomString
  }
}
