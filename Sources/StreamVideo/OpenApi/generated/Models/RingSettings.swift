//
// RingSettings.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

internal struct RingSettings: Codable, JSONEncodable, Hashable {

    internal var autoCancelTimeoutMs: Int
    internal var autoRejectTimeoutMs: Int
    internal var enabled: Bool

    internal init(autoCancelTimeoutMs: Int, autoRejectTimeoutMs: Int, enabled: Bool) {
        self.autoCancelTimeoutMs = autoCancelTimeoutMs
        self.autoRejectTimeoutMs = autoRejectTimeoutMs
        self.enabled = enabled
    }

    internal enum CodingKeys: String, CodingKey, CaseIterable {
        case autoCancelTimeoutMs = "auto_cancel_timeout_ms"
        case autoRejectTimeoutMs = "auto_reject_timeout_ms"
        case enabled
    }

    // Encodable protocol methods

    internal func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(autoCancelTimeoutMs, forKey: .autoCancelTimeoutMs)
        try container.encode(autoRejectTimeoutMs, forKey: .autoRejectTimeoutMs)
        try container.encode(enabled, forKey: .enabled)
    }
}

