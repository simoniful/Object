import Foundation

/*
 // 관람객의 가방 클래스
 public class Bag {
   private var amount: Int
   private var invitation: Invitation?
   private var ticket: Ticket?
   
   convenience init(amount: Int) {
     self.init(invitation: nil, amount: amount)
   }
   
   init(invitation: Invitation?, amount: Int) {
     self.invitation = invitation
     self.amount = amount
   }
   
   public func hasInvitation() -> Bool {
     return invitation != nil
   }
   
   public func hasTicket() -> Bool {
     return ticket != nil
   }
   
   public func setTicket(ticket: Ticket) {
     self.ticket = ticket
   }
   
   public func minusAmount(amount: Int) {
     self.amount -= amount
   }
   
   public func plusAmount(amount: Int) {
     self.amount += amount
   }
 }
*/

public class Bag {
  private var amount: Int
  private var invitation: Invitation?
  private var ticket: Ticket?
  
  convenience init(amount: Int) {
    self.init(invitation: nil, amount: amount)
  }
  
  init(invitation: Invitation?, amount: Int) {
    self.invitation = invitation
    self.amount = amount
  }
  
  private func hasInvitation() -> Bool {
    return invitation != nil
  }
  
  private func hasTicket() -> Bool {
    return ticket != nil
  }
  
  private func setTicket(ticket: Ticket) {
    self.ticket = ticket
  }
  
  private func minusAmount(amount: Int) {
    self.amount -= amount
  }
  
  private func plusAmount(amount: Int) {
    self.amount += amount
  }
  
  public func hold(ticket: Ticket) -> Int {
    if hasInvitation() {
      setTicket(ticket: ticket)
      return 0
    } else {
      setTicket(ticket: ticket)
      minusAmount(amount: ticket.getFee())
      return ticket.getFee()
    }
  }
}
