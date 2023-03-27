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
  
  public func getMovie() -> Movie {
    return movie
  }
  
  public func setMovie(movie: Movie) {
    self.movie = movie
  }
  
  public func getSequence() -> Int {
    return sequence
  }
  
  public func setSequence(sequence: Int) {
    self.sequence = sequence
  }
  
  public func getWhenScreened() -> DateComponents {
    return whenScreened
  }
  
  public func setWhenScreened(whenScreened: DateComponents) {
    self.whenScreened = whenScreened
  }
}
