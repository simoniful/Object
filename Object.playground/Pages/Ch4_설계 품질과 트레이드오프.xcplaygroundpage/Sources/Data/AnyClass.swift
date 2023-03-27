import Foundation

public class AnyClass {
  func anyMethod(rectangle: Rectangle, multiple: Int) {
    rectangle.setRight(rectangle.getRight() * multiple)
    rectangle.setBottom(rectangle.getBottom() * multiple)
  }
}
