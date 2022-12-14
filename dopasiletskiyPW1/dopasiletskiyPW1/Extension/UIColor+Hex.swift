//
//  UIColor+Hex.swift
//  dopasiletskiyPW1
//
//  Created by Даниил Пасилецкий on 17.09.2022.
//

import UIKit

extension UIColor {
  convenience init(hexaString: String, alpha: CGFloat = 1) {
    let chars = Array(hexaString.dropFirst())
    self.init(
      red: .init(strtoul(String(chars[0...1]), nil, 16)) / 255,
      green: .init(strtoul(String(chars[2...3]), nil, 16)) / 255,
      blue: .init(strtoul(String(chars[4...5]), nil, 16)) / 255,
      alpha: alpha
    )
  }
}
