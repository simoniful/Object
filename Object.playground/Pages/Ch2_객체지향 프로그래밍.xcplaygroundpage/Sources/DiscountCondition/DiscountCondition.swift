import Foundation

public protocol DiscountCondition {
  func isSatisfiedBy(screening: Screening) -> Bool
}
