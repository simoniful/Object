import Foundation

public class Money {
  public static let ZERO: Money = Money.wons(amount: 0)
  private final var amount: Decimal
  
  public init(amount: Decimal) {
    self.amount = amount
  }
  
  public func getAmount() -> Decimal {
    return amount
  }
  
  public static func wons(amount: Int) -> Money {
    return Money(amount: Decimal.init(amount))
  }
  
  public static func wons(amount: Double) -> Money {
    return Money(amount: Decimal.init(amount))
  }
  
  public func plus(amount: Money) -> Money {
    return Money(amount: self.amount + amount.amount)
  }

  public func minus(amount: Money) -> Money {
    return Money(amount: self.amount - amount.amount)
  }
  
  public func times(percent: Double) -> Money {
    return Money(amount: self.amount * Decimal(percent))
  }

  public func times(count: Int) -> Money {
    return Money(amount: self.amount * Decimal(count))
  }

  public func isLessThan(other: Money) -> Bool {
    return amount < other.amount
  }

  public func isGreaterThanOrEqual(other: Money) -> Bool {
    return amount >= other.amount
  }
}
