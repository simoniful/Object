import Foundation

public struct Customer {
  private var name: String
  private var id: String
  
  public init(name: String, id: String) {
    self.name = name
    self.id = id
  }
}
