//
// QueryMembersRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

internal struct QueryMembersRequest: Codable, JSONEncodable, Hashable {

    static let idRule = StringRule(minLength: nil, maxLength: 64, pattern: nil)
    static let limitRule = NumericRule<Int>(minimum: 0, exclusiveMinimum: false, maximum: 25, exclusiveMaximum: false, multipleOf: nil)
    static let typeRule = StringRule(minLength: nil, maxLength: 64, pattern: nil)
    internal var filterConditions: [String: AnyCodable]
    internal var id: String?
    internal var limit: Int?
    internal var next: String?
    internal var prev: String?
    internal var sort: [SortParamRequest]?
    internal var type: String

    internal init(filterConditions: [String: AnyCodable], id: String? = nil, limit: Int? = nil, next: String? = nil, prev: String? = nil, sort: [SortParamRequest]? = nil, type: String) {
        self.filterConditions = filterConditions
        self.id = id
        self.limit = limit
        self.next = next
        self.prev = prev
        self.sort = sort
        self.type = type
    }

    internal enum CodingKeys: String, CodingKey, CaseIterable {
        case filterConditions = "filter_conditions"
        case id
        case limit
        case next
        case prev
        case sort
        case type
    }

    // Encodable protocol methods

    internal func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(filterConditions, forKey: .filterConditions)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(limit, forKey: .limit)
        try container.encodeIfPresent(next, forKey: .next)
        try container.encodeIfPresent(prev, forKey: .prev)
        try container.encodeIfPresent(sort, forKey: .sort)
        try container.encode(type, forKey: .type)
    }
}

