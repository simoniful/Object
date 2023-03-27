import Foundation

public class Movie {
  private var title: String
  private var runningTime: Duration
  private var fee: Money
  private var discountConditions: [DiscountCondition]
  
  private var movieType: MovieType
  private var discountAmount: Money
  private var discountPercent: Double
  
  public init(
    title: String,
    runningTime: Duration,
    fee: Money,
    discountConditions: [DiscountCondition],
    movieType: MovieType,
    discountAmount: Money,
    discountPercent: Double
  ) {
    self.title = title
    self.runningTime = runningTime
    self.fee = fee
    self.discountConditions = discountConditions
    self.movieType = movieType
    self.discountAmount = discountAmount
    self.discountPercent = discountPercent
  }
  
  public func getMovieType() -> MovieType {
    return movieType
  }
  
  public func setMovieType(movieType: MovieType) {
    self.movieType = movieType
  }
  
  public func getFee() -> Money {
    return fee
  }
  
  public func setFee(fee: Money) {
    self.fee = fee
  }
  
  public func getDiscountConditions() -> [DiscountCondition] {
    return discountConditions
  }
  
  public func setDiscountConditions(
    discountConditions: [DiscountCondition]
  ) {
    self.discountConditions = discountConditions
  }
  
  public func getDiscountAmount() -> Money {
    return discountAmount
  }
  
  public func setDiscountAmount(discountAmount: Money) {
    self.discountAmount = discountAmount
  }
  
  public func getDiscountPercent() -> Double {
    return discountPercent
  }
  
  public func setDiscountPercent(discountPercent: Double) {
    self.discountPercent = discountPercent
  }
  

}


