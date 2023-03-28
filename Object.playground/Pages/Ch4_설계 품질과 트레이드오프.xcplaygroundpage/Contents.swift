//: [Previous](@previous)

import Foundation

// CH_4. 책임(행동)이 아닌 상태(데이터) 중심의 설계의 문제점 증명

let avatarTitle = "아바타"
let avatarRunningTime = Duration.seconds(120 * 60)
let avatarFee = Money.wons(amount: 10000)
let avatarDiscountConditions = [
  DiscountCondition(
    type: .sequence,
    sequence: 1,
    dayOfWeek: .monday,
    startTime: DateComponents(hour: 0, minute: 0),
    endTime: DateComponents(hour: 0, minute: 0)
  ),
  DiscountCondition(
    type: .sequence,
    sequence: 10,
    dayOfWeek: .monday,
    startTime: DateComponents(hour: 0, minute: 0),
    endTime: DateComponents(hour: 0, minute: 0)
  ),
  DiscountCondition(
    type: .period,
    sequence: Int.min,
    dayOfWeek: .monday,
    startTime: DateComponents(hour: 10, minute: 0),
    endTime: DateComponents(hour: 11, minute: 59)
  ),
  DiscountCondition(
    type: .period,
    sequence: Int.min,
    dayOfWeek: .thursday,
    startTime: DateComponents(hour: 10, minute: 0),
    endTime: DateComponents(hour: 20, minute: 59)
  )
]
let avatarMovieType: MovieType = .amount

var avatar = Movie(
  title: avatarTitle,
  runningTime: avatarRunningTime,
  fee: avatarFee,
  discountConditions: avatarDiscountConditions,
  movieType: avatarMovieType,
  discountAmount: Money.wons(amount: 800),
  discountPercent: 0.0
)

let reservationAgency = ReservationAgency()
reservationAgency.reserve(
  screening: Screening(
    movie: avatar,
    sequence: 2,
    whenScreened: DateComponents(hour: 10, minute: 0, weekday: 3)
  ),
  customer: Customer(name: "Simon", id: UUID().uuidString),
  audienceCount: 2
)
.getFee()
.getAmount()

//: [Next](@next)
