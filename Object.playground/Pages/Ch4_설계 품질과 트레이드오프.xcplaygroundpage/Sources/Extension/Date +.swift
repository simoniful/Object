import Foundation

extension Date {
  func isAvailableTime(from start: Date, to end: Date) -> Bool {
    let startCompared = start.compare(self)
    let canDoFromStart = startCompared == .orderedAscending || startCompared == .orderedSame
    let endCompared = end.compare(self)
    let canDoFromEnd = endCompared == .orderedDescending || endCompared == .orderedSame
    return canDoFromStart && canDoFromEnd
  }
}
