import Foundation

public class ReservationAgency {
  public func reserve(
    screening: Screening,
    customer: Customer,
    audienceCount: Int
  ) -> Reservation {
    let movie: Movie = screening.getMovie()
    var discountable: Bool = false
    
    for condition in movie.getDiscountConditions() {
      switch condition.getType() {
      case .period:
        let calendar = Calendar.current
        let screeningWhenScreenedDate = calendar.date(from: screening.getWhenScreened())!
        let screeningWhenScreenedWeekday = calendar.component(.weekday, from: screeningWhenScreenedDate)
        let conditionWhenScreenedWeekday = condition.getDayOfWeek().rawValue
        
        let isSameWeekday = screeningWhenScreenedWeekday == conditionWhenScreenedWeekday
        
        let startTimeDate = calendar.date(from: condition.getStartTime())!
        let endTimeDate = calendar.date(from: condition.getEndTime())!
        
        discountable = isSameWeekday && screeningWhenScreenedDate.isAvailableTime(from: startTimeDate, to: endTimeDate)
      case .sequence:
        discountable = condition.getSequence() == screening.getSequence()
      }
      
      if discountable {
        break
      }
    }
    
    var fee: Money
    if discountable {
      var discountAmount: Money = Money.ZERO
      switch movie.getMovieType() {
      case .amount:
        discountAmount = movie.getDiscountAmount()
      case .percent:
        discountAmount = movie.getFee().times(percent: movie.getDiscountPercent())
      case .none:
        discountAmount = Money.ZERO
      }
      
      fee = movie.getFee().minus(amount: discountAmount)
    } else {
      fee = movie.getFee()
    }
   
    return Reservation(customer: customer, screening: screening, fee: fee, audienceCount: audienceCount)
  }
}
