import Foundation


/*
 // 이전 극장 클래스
 public class Theater {
   private var ticketSeller: TicketSeller
   
   init(ticketSeller: TicketSeller) {
     self.ticketSeller = ticketSeller
   }
   
   public func enter(audience: Audience) {
     if audience.getBag().hasInvitation() {
       var ticket: Ticket = ticketSeller.getTicketOffice().getTicket()
       audience.getBag().setTicket(ticket: ticket)
     } else {
       var ticket: Ticket = ticketSeller.getTicketOffice().getTicket()
       audience.getBag().minusAmount(amount: ticket.getFee())
       ticketSeller.getTicketOffice().plusAmount(amount: ticket.getFee())
       audience.getBag().setTicket(ticket: ticket)
     }
   }
 }
 */

// 극장 클래스
public class Theater {
  private var ticketSeller: TicketSeller
  
  init(ticketSeller: TicketSeller) {
    self.ticketSeller = ticketSeller
  }
  
  // 간단하게 sellTo를 호출하는 것으로 변경
  // 직접적으로 TicketOffice에 접근하지 않게 되고, 그 존재를 알지 못함
  // Theater는 단지 TicketSeller의 인터페이스에만 의존한다
  public func enter(audience: Audience) {
    ticketSeller.sellTo(audience: audience)
  }
}
