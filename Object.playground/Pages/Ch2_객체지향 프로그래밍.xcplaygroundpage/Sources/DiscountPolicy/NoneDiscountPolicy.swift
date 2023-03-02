import Foundation

public struct NoneDiscountPolicy: DiscountPolicy {
  public var conditions: [DiscountCondition] = []
  
  public init() { }
  
  public func getDiscountAmount(screening: Screening) -> Money {
    return Money.ZERO
  }
}
