//
// UpdateCallResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
/** Represents a call */

public struct UpdateCallResponse: Codable, JSONEncodable, Hashable {
    public var blockedUsers: [UserResponse]
    public var call: CallResponse
    public var duration: String
    public var members: [MemberResponse]
    public var membership: MemberResponse?
    public var ownCapabilities: [OwnCapability]

    public init(blockedUsers: [UserResponse], call: CallResponse, duration: String, members: [MemberResponse], membership: MemberResponse? = nil, ownCapabilities: [OwnCapability]) {
        self.blockedUsers = blockedUsers
        self.call = call
        self.duration = duration
        self.members = members
        self.membership = membership
        self.ownCapabilities = ownCapabilities
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case blockedUsers = "blocked_users"
        case call
        case duration
        case members
        case membership
        case ownCapabilities = "own_capabilities"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(blockedUsers, forKey: .blockedUsers)
        try container.encode(call, forKey: .call)
        try container.encode(duration, forKey: .duration)
        try container.encode(members, forKey: .members)
        try container.encodeIfPresent(membership, forKey: .membership)
        try container.encode(ownCapabilities, forKey: .ownCapabilities)
    }
}

