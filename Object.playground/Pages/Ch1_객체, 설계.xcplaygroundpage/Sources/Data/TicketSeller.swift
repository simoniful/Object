import Foundation

/*
 // 이전 매표 판매원 클래스
 public class TicketSeller {
   private var ticketOffice: TicketOffice
   
   init(ticketOffice: TicketOffice) {
     self.ticketOffice = ticketOffice
   }
   
   public func getTicketOffice() -> TicketOffice {
     return ticketOffice
   }
 }
*/

/*
 // 매표 판매원 클래스
 public class TicketSeller {
   // TicketOffice를 가지고 있는 건 구현의 영역에 속한다
   private var ticketOffice: TicketOffice
   
   init(ticketOffice: TicketOffice) {
     self.ticketOffice = ticketOffice
   }

 // 이제 외부에서 private 프로퍼티인 ticketOffice에 접근하도록 했던, pulbic 메서드가 사라졌기에
 // 매표소에서 티켓을 꺼내거나 판매 요금을 적립하는 일은 스스로 수행하도록 바꾼다
 // 객체 내부의 세부사항을 감추는 캡슐화를 통해서 결합도를 낮추는 작업이다
 //  public func getTicketOffice() -> TicketOffice {
 //    return ticketOffice
 //  }
   
   public func sellTo(audience: Audience) {
     if audience.getBag().hasInvitation() {
       var ticket: Ticket = ticketOffice.getTicket()
       audience.getBag().setTicket(ticket: ticket)
     } else {
       var ticket: Ticket = ticketOffice.getTicket()
       audience.getBag().minusAmount(amount: ticket.getFee())
       ticketOffice.plusAmount(amount: ticket.getFee())
       audience.getBag().setTicket(ticket: ticket)
     }
   }
 }
*/

/*
 // 매표 판매원 클래스
 public class TicketSeller {
   private var ticketOffice: TicketOffice
   
   init(ticketOffice: TicketOffice) {
     self.ticketOffice = ticketOffice
   }
   
 //  public func getTicketOffice() -> TicketOffice {
 //    return ticketOffice
 //  }
   
   // sellTo 메서드에 있던 관객의 가방 인스턴스의 접근과 관련된 로직 분리
   public func sellTo(audience: Audience) {
     let ticket: Ticket = ticketOffice.getTicket()
     ticketOffice.plusAmount(amount: audience.buy(ticket: ticket))
   }
 }
*/

public class TicketSeller {
  private var ticketOffice: TicketOffice
  
  init(ticketOffice: TicketOffice) {
    self.ticketOffice = ticketOffice
  }
  
  public func sellTo(audience: Audience) {
    ticketOffice.sellTecketTo(audience: audience)
  }
}
