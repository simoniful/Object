import Foundation

public class Reservation {
  private var customer: Customer
  private var screening: Screening
  private var fee: Money
  private var audienceCount: Int
  
  public init(customer: Customer, screening: Screening, fee: Money, audienceCount: Int) {
    self.customer = customer
    self.screening = screening
    self.fee = fee
    self.audienceCount = audienceCount
  }
  
  public func getFee() -> Money {
    return fee
  }
}
