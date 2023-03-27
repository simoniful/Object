import Foundation

public enum DiscountConditionType {
  case sequence
  case period
}

public class DiscountCondition {
  private var type: DiscountConditionType
  private var sequence: Int
  private var dayOfWeek: WeekDay
  private var startTime: DateComponents
  private var endTime: DateComponents
  
  public init(
    type: DiscountConditionType,
    sequence: Int,
    dayOfWeek: WeekDay,
    startTime: DateComponents,
    endTime: DateComponents
  ) {
    self.type = type
    self.sequence = sequence
    self.dayOfWeek = dayOfWeek
    self.startTime = startTime
    self.endTime = endTime
  }
  
  func getType() -> DiscountConditionType {
    return type
  }
  
  func setType(type: DiscountConditionType) {
    self.type = type
  }
  
  func getSequence() -> Int {
    return sequence
  }
  
  func setSequence(sequence: Int) {
    self.sequence = sequence
  }
  
  func getDayOfWeek() -> WeekDay {
    return dayOfWeek
  }
  
  func setDayOfWeek(dayOfWeek: WeekDay) {
    self.dayOfWeek = dayOfWeek
  }
  
  func getStartTime() -> DateComponents {
    return startTime
  }
  
  func setStartTime(startTime: DateComponents) {
    self.startTime = startTime
  }
  
  func getEndTime() -> DateComponents {
    return endTime
  }
  
  func getEndTime(endTime: DateComponents) {
    self.endTime = endTime
  }
}
  
