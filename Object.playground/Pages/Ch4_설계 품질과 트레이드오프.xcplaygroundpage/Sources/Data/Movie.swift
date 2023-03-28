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
  
//  public func setMovieType(movieType: MovieType) {
//    self.movieType = movieType
//  }
//
//  public func getFee() -> Money {
//    return fee
//  }
//
//  public func setFee(fee: Money) {
//    self.fee = fee
//  }
//
//  public func getDiscountConditions() -> [DiscountCondition] {
//    return discountConditions
//  }
//
//  public func setDiscountConditions(
//    discountConditions: [DiscountCondition]
//  ) {
//    self.discountConditions = discountConditions
//  }
//
//  public func getDiscountAmount() -> Money {
//    return discountAmount
//  }
//
//  public func setDiscountAmount(discountAmount: Money) {
//    self.discountAmount = discountAmount
//  }
//
//  public func getDiscountPercent() -> Double {
//    return discountPercent
//  }
//
//  public func setDiscountPercent(discountPercent: Double) {
//    self.discountPercent = discountPercent
//  }
  
  public func calculateAmountDiscountedFee() throws -> Money {
    if movieType != MovieType.amount {
      throw MovieSystemError.illegalArgumentException
    }
    return fee.minus(amount: discountAmount)
  }
  
  public func calculatePercentDiscountedFee() throws -> Money {
    if movieType != MovieType.percent {
      throw MovieSystemError.illegalArgumentException
    }
    return fee.minus(amount: fee.times(percent: discountPercent))
  }
  
  public func calculateNoneDiscountedFee() -> Money {
    return fee
  }
  
  public func isDiscountable(whenScreened: DateComponents, sequence: Int) -> Bool {
    for condition in discountConditions {
      if condition.getType() == DiscountConditionType.period {
        do {
          let calendar = Calendar.current
          let whenScreenedDate = calendar.date(from: whenScreened)!
          let whenScreenedWeekday = calendar.component(.weekday, from: whenScreenedDate)
          
          if try condition.isDiscountable(dayOfWeek: WeekDay(rawValue: whenScreenedWeekday)!, time: whenScreened) {
            return true
          }
        } catch {
          print("The movie type is not right.")
        }
      } else {
        do {
          if try condition.isDiscountable(sequence: sequence) {
            return true
          }
        } catch {
          print("The movie type is not right.")
        }
      }
    }
    return false
  }
}


