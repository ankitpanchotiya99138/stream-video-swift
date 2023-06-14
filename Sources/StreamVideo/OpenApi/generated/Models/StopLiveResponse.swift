//
// StopLiveResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct StopLiveResponse: Codable, JSONEncodable, Hashable {
    public var call: CallResponse
    /** Duration of the request in human-readable format */
    public var duration: String

    public init(call: CallResponse, duration: String) {
        self.call = call
        self.duration = duration
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case call
        case duration
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(call, forKey: .call)
        try container.encode(duration, forKey: .duration)
    }
}

