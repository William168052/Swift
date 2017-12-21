//: A UIKit based Playground for presenting user interface
  
import UIKit

let m : Int = 10

let view : UIView = UIView()
//view = UIView()  错误写法
view.backgroundColor = UIColor.red
view.frame = CGRect.init(x: 0, y: 0, width: 100, height: 100)
view.alpha = 0.5
view.isHidden = true

