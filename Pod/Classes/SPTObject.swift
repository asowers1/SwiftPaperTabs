//
//  SPTObject.swift
//  Pods
//
//  Created by Andrew Sowers on 9/18/15.
//
//

import UIKit

class SPTObject: UIView {
  
  var title: String = String()
  var index: Int = 0
  var color: UIColor = UIColor()
  
  required init(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)!
  }
  
  init(title:String, index:Int) {
    super.init(frame: CGRectNull)
    self.title = title
    self.index = index
  }

  func setTabColor(color: UIColor) {
    self.backgroundColor = color
  }
}
