import Foundation

/*
 // 관람객 클래스
 public class Audience {
   private var bag: Bag
   
   init(bag: Bag) {
     self.bag = bag
   }
   
   public func getBag() -> Bag {
     return bag
   }
 }
*/

/*
 public class Audience {
   private var bag: Bag
   
   init(bag: Bag) {
     self.bag = bag
   }
   
 //  public func getBag() -> Bag {
 //    return bag
 //  }
   
   // 관객 내에서 buy 메서드를 통해 직접적으로 Bag 에 대한 처리
   public func buy(ticket: Ticket) -> Int {
     if bag.hasInvitation() {
       bag.setTicket(ticket: ticket)
       return 0
     } else {
       bag.setTicket(ticket: ticket)
       bag.minusAmount(amount: ticket.getFee())
       return ticket.getFee()
     }
   }
 }
*/

public class Audience {
  private var bag: Bag
  
  init(bag: Bag) {
    self.bag = bag
  }
  
  public func buy(ticket: Ticket) -> Int {
    return bag.hold(ticket: ticket)
  }
}
