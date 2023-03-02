import Foundation

// 티켓 구조체
public struct Ticket {
  private var fee: Int
  
  public func getFee() -> Int {
    return fee
  }
}
