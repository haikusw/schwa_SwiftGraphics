internal func degreesToRadians<F>(_ value: F) -> F where F: FloatingPoint {
    value * .pi / 180
}

internal func radiansToDegrees<F>(_ value: F) -> F where F: FloatingPoint {
    value * 180 / .pi
}

public struct DecodingError: Error {}
