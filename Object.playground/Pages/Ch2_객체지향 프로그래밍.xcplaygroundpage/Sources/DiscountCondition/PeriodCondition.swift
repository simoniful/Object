import Foundation

public struct PeriodCondition: DiscountCondition {
  private let dayOfWeek: WeekDay
  private let startTime: DateComponents
  private let endTime: DateComponents
  
  public init(dayOfWeek: WeekDay, startTime: DateComponents, endTime: DateComponents) {
    self.dayOfWeek = dayOfWeek
    self.startTime = startTime
    self.endTime = endTime
  }
  
  public func isSatisfiedBy(screening: Screening) -> Bool {
    let calendar = Calendar.current
    
    let whenScreened = screening.getStartTime()
    let whenScreenedDate = calendar.date(from: whenScreened)!
    let whenScreenedWeekday = calendar.component(.weekday, from: whenScreenedDate)
    
    let startTimeDate = calendar.date(from: startTime)!
    let endTimeDate = calendar.date(from: endTime)!
    
    let isSameWeekday = whenScreenedWeekday == dayOfWeek.rawValue
    return isSameWeekday && whenScreenedDate.isAvailableTime(from: startTimeDate, to: endTimeDate)
  }
}
