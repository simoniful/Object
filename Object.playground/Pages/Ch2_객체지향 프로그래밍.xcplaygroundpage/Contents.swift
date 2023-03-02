//: [Previous](@previous)

import Foundation

let avatarTitle = "아바타"
let avatarRunningTime = Duration.seconds(120 * 60)
let avatarFee = Money.wons(amount: 10000)
let avatarDiscountPolicy = AmountDiscountPolicy(
  discountAmount: Money.wons(amount: 800),
  conditions:
    SequenceCondition(sequence: 1),
    SequenceCondition(sequence: 10),
    PeriodCondition(
      dayOfWeek: .monday,
      startTime: DateComponents(hour: 10, minute: 0),
      endTime: DateComponents(hour: 11, minute: 59)
    ),
    PeriodCondition(
      dayOfWeek: .thursday,
      startTime: DateComponents(hour: 10, minute: 0),
      endTime: DateComponents(hour: 20, minute: 59)
    )
)
var avatar = Movie(
  title: avatarTitle,
  runningTime: avatarRunningTime,
  fee: avatarFee,
  discountPolicy: avatarDiscountPolicy
)

// 할인 정책 변경 예제 - 금액 → 비율
avatar.changeDiscountPolicy(
  by: PercentDiscountPolicy(
    percent: 0.1,
    conditions:
      SequenceCondition(sequence: 1),
      SequenceCondition(sequence: 10),
      PeriodCondition(
        dayOfWeek: .monday,
        startTime: DateComponents(hour: 10, minute: 0),
        endTime: DateComponents(hour: 11, minute: 59)
      ),
      PeriodCondition(
        dayOfWeek: .thursday,
        startTime: DateComponents(hour: 10, minute: 0),
        endTime: DateComponents(hour: 20, minute: 59)
      )
  )
)

Screening(
  movie: avatar,
  sequence: 2,
  whenScreened: DateComponents(hour: 10, minute: 0, weekday: 1)
)
.reserve(
  customer: Customer(name: "Simon", id: UUID().uuidString),
  audienceCount: 2
)
.getFee()
.getAmount()


let titanicTitle = "타이타닉"
let titanicRunningTime = Duration.seconds(180 * 60)
let titanicFee = Money.wons(amount: 11000)

let titanicDiscountPolicy = PercentDiscountPolicy(
  percent: 0.1,
  conditions:
    SequenceCondition(sequence: 2),
    PeriodCondition(
      dayOfWeek: .tuesday,
      startTime: DateComponents(hour: 14, minute: 0),
      endTime: DateComponents(hour: 16, minute: 59)
    ),
    PeriodCondition(
      dayOfWeek: .thursday,
      startTime: DateComponents(hour: 10, minute: 0),
      endTime: DateComponents(hour: 13, minute: 59)
    )
)
let titanic = Movie(
  title: titanicTitle,
  runningTime: titanicRunningTime,
  fee: titanicFee,
  discountPolicy: titanicDiscountPolicy
)

let starwarsTitle = "스타워즈"
let starwarsRunningTime = Duration.seconds(210 * 60)
let starwarsFee = Money.wons(amount: 10000)
let starwarsDiscountPolicy = NoneDiscountPolicy()
let starwars = Movie(
  title: starwarsTitle,
  runningTime: starwarsRunningTime,
  fee: starwarsFee,
  discountPolicy: starwarsDiscountPolicy
)

