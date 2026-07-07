import SwiftUI

/// Unique palette for Seedbank: seedling green-earth.
enum Theme {
    static let accent = Color(hex: "#5FA83D")
    static let background = Color(hex: "#0F130D")
    static let surface = Color(hex: "#182018")
    static let textPrimary = Color(hex: "#E9F2E4")
    static let textMuted = Color(hex: "#8FA983")

    static let titleFont = Font.system(.largeTitle, design: .rounded).weight(.bold)
    static let headlineFont = Font.system(.headline, design: .rounded).weight(.semibold)
    static let bodyFont = Font.system(.body, design: .rounded)
    static let captionFont = Font.system(.caption, design: .rounded)

    static let cornerRadius: CGFloat = 16
}

extension Color {
    init(hex: String) {
        let h = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: h).scanHexInt64(&int)
        let r = Double((int >> 16) & 0xFF) / 255.0
        let g = Double((int >> 8) & 0xFF) / 255.0
        let b = Double(int & 0xFF) / 255.0
        self.init(red: r, green: g, blue: b)
    }
}
