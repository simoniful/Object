import Foundation

public protocol DiscountPolicy {
  var conditions: Array<DiscountCondition> { get set }
  
  func calculateDiscountAmount(screening: Screening) -> Money
  func getDiscountAmount(screening: Screening) -> Money
}

extension DiscountPolicy {
  public func calculateDiscountAmount(screening: Screening) -> Money {
    for condition in conditions {
      if condition.isSatisfiedBy(screening: screening) {
        return getDiscountAmount(screening: screening)
      }
    }
    return Money.ZERO
  }
}

extension DiscountPolicy where Self == NoneDiscountPolicy {
  public func calculateDiscountAmount(screening: Screening) -> Money {
    return Money.ZERO
  }
}
