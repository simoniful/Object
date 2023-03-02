import Foundation

public struct AmountDiscountPolicy: DiscountPolicy {
  public var conditions: [DiscountCondition]
  private var discountAmount: Money
  
  public init(discountAmount: Money, conditions: DiscountCondition...) {
    self.conditions = conditions
    self.discountAmount = discountAmount
  }
  
  public func getDiscountAmount(screening: Screening) -> Money {
    return discountAmount
  }
}
