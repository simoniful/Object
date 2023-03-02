import Foundation

/*
 // 매표소 클래스
 public class TicketOffice {
   private var amount: Int
   private var tickets: [Ticket] = []
   
   init(amount: Int, tickets: Ticket...) {
     self.amount = amount
     self.tickets.append(contentsOf: tickets)
   }
   
   public func getTicket() -> Ticket {
     return tickets.removeFirst()
   }
   
   public func minusAmount(amount: Int) {
     self.amount -= amount
   }
   
   public func plusAmount(amount: Int) {
     self.amount += amount
   }
 }
*/

public class TicketOffice {
  private var amount: Int
  private var tickets: [Ticket] = []
  
  init(amount: Int, tickets: Ticket...) {
    self.amount = amount
    self.tickets.append(contentsOf: tickets)
  }
  
  private func getTicket() -> Ticket {
    return tickets.removeFirst()
  }
  
  private func minusAmount(amount: Int) {
    self.amount -= amount
  }
  
  private func plusAmount(amount: Int) {
    self.amount += amount
  }
  
  public func sellTecketTo(audience: Audience) {
    plusAmount(amount: audience.buy(ticket: getTicket()))
  }
}
