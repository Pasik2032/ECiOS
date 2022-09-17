//
//  ViewController.swift
//  dopasiletskiyPW1
//
//  Created by Даниил Пасилецкий on 17.09.2022.
//

import UIKit

class ViewController: UIViewController {

  // MARK: - Outlet

  @IBOutlet var views: [UIView]!
  @IBOutlet var button: UIButton!

  // MARK: - Life cycle

  override func viewDidLoad() {
    super.viewDidLoad()
    configUI()
  }

  // MARK: - Action

  @IBAction func changeColorButtonPressed(_ sender: Any) {
    changeColor()
  }

  // MARK: - Private func

  private func configUI() {
    for view in views {
      view.layer.cornerRadius = 10
    }
    changeColor(withAnimate: false)
  }

  private func changeColor(withAnimate: Bool = true) {
    button.isEnabled = withAnimate ? false : true
    var set = Set<UIColor>()
    while set.count < views.count {
      let stringHEX = "#\(String.randomHexString())"
      set.insert(UIColor(hexaString: stringHEX))
    }
    if withAnimate {
      for view in views {
        UIView.animate(withDuration: 1, animations: {
          view.backgroundColor = set.popFirst()
        }) { [weak self] _ in
          guard let self = self else { return }
          self.button.isEnabled = true
        }
      }
    } else {
      for view in views {
        view.backgroundColor = set.popFirst()
      }
    }
  }
}
