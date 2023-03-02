import Foundation

public class Movie {
  private var title: String
  private var runningTime: Duration
  private var fee: Money
  private var discountPolicy: DiscountPolicy
  
  public init(title: String, runningTime: Duration, fee: Money, discountPolicy: DiscountPolicy) {
    self.title = title
    self.runningTime = runningTime
    self.fee = fee
    self.discountPolicy = discountPolicy
  }
  
  public func getFee() -> Money {
    return fee
  }
  
  public func calculateMovieFee(screening: Screening) -> Money {
    return fee.minus(amount: discountPolicy.calculateDiscountAmount(screening: screening))
  }
}

extension Movie {
  public func changeDiscountPolicy(by discountPolicy: DiscountPolicy) {
    self.discountPolicy = discountPolicy
  }
}
