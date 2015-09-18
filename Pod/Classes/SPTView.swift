//
//  SPT.swift
//  Pods
//
//  Created by Andrew Sowers on 9/17/15.
//
//

import UIKit

class SPTView: UIView {

  var tabObjects: [SPTObject] = Array()
  var tabContainer: UIView = UIView()
  var tabIndicator: UIView = UIView()
  
  
  required init(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)!
    // self.setupView()
  }
  
  func setupView() {
    self.setupContainer()
    self.setupData()
    self.setupTabs()
    self.setupIndicator()
  }

  //setup the container for tabs
  func setupContainer() {
    self.tabContainer = UIView(frame: self.frame)
    self.tabContainer.frame.size.height = self.tabContainer.frame.size.height * 0.9
    self.tabContainer.backgroundColor = UIColor.whiteColor()
    self.addSubview(tabContainer)
  }
  
  
  // load data for view
  func setupData() {
    for object in self.tabObjects {
      self.tabObjects.insert(object, atIndex: object.index)
    }
  }
  
  // setup tabs from data
  func setupTabs() {
    let coefficent:CGFloat = self.tabContainer.frame.size.width / CGFloat(self.tabObjects.count)
    for tab in self.tabObjects {
       tab.frame = CGRectMake(coefficent * CGFloat(tab.index), self.tabContainer.frame.origin.y, coefficent, self.tabContainer.frame.size.height)
      self.addSubview(tab)
      
    }
  }
  
  // setup bottom indicator
  func setupIndicator() {
    let coefficent:CGFloat = self.tabContainer.frame.size.width / CGFloat(self.tabObjects.count)
    var frame: CGRect = self.frame;
    frame.size.width = coefficent
    frame.size.height = self.frame.size.height * 0.1
    frame.origin.y = self.tabContainer.frame.origin.y + self.frame.size.height * 0.9
    self.tabIndicator = UIView(frame: frame)
    self.tabIndicator.backgroundColor = UIColor.blueColor()
    self.addSubview(self.tabIndicator)
  }

}
