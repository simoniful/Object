import Foundation

public struct PercentDiscountPolicy: DiscountPolicy {
  public var conditions: [DiscountCondition]
  private var percent: Double
  
  public init(percent: Double, conditions: DiscountCondition...) {
    self.conditions = conditions
    self.percent = percent
  }
  
  public func getDiscountAmount(screening: Screening) -> Money {
    return screening.getMovieFee().times(percent: percent)
  }
}
