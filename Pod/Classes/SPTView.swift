//
//  SPT.swift
//  Pods
//
//  Created by Andrew Sowers on 9/17/15.
//
//

import UIKit

class SPTView: UIView {

  var tabTitles: [String] = Array()
  
  required init(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)!
    self.myCustomSetup()
  }
  
  func myCustomSetup() {
    self.backgroundColor = UIColor.redColor()
    self.tabTitles.insert("Test1", atIndex: 0)
    self.tabTitles.insert("Test2", atIndex: 1)
    print(self.tabTitles)
  }

}
