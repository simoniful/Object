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
  
  public func getCustomer() -> Customer {
    return customer
  }
  
  public func setCustomer(customer: Customer) {
    self.customer = customer
  }
  
  public func getScreening() -> Screening {
    return screening
  }
  
  public func setScreening(screening: Screening) {
    self.screening = screening
  }
  
  public func getFee() -> Money {
    return fee
  }
  
  public func setFee(fee: Money) {
    self.fee = fee
  }
  
  public func getAudienceCount() -> Int {
    return audienceCount
  }
  
  public func setAudienceCount(audienceCount: Int) {
    self.audienceCount = audienceCount
  }
}
