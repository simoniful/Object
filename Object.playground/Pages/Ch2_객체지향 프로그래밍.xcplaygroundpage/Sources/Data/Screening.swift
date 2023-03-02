import Foundation

public class Screening {
  private var movie: Movie
  private var sequence: Int
  private var whenScreened: DateComponents
  
  public init(movie: Movie, sequence: Int, whenScreened: DateComponents) {
    self.movie = movie
    self.sequence = sequence
    self.whenScreened = whenScreened
  }
  
  public func getStartTime() -> DateComponents {
    return whenScreened
  }
  
  public func isSequence(sequence: Int) -> Bool {
    return self.sequence == sequence
  }
  
  public func getMovieFee() -> Money {
    return movie.getFee()
  }
  
  public func reserve(customer: Customer, audienceCount: Int) -> Reservation {
    return Reservation(
      customer: customer,
      screening: self,
      fee: calculateFee(audienceCount: audienceCount),
      audienceCount: audienceCount
    )
  }
  
  private func calculateFee(audienceCount: Int) -> Money {
    return movie.calculateMovieFee(screening: self).times(count: audienceCount)
  }
}
