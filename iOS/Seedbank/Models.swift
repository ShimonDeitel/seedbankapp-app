import Foundation

struct PacketItem: Identifiable, Codable, Equatable {
    var id: UUID = UUID()
    var name: String
    var variety: String
    var harvestYear: String
    var notes: String = ""
    var dateAdded: Date = Date()
}
