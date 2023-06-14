//
// VideoSettings.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct VideoSettings: Codable, JSONEncodable, Hashable {
    public enum CameraFacing: String, Codable, CaseIterable {
        case front = "front"
        case back = "back"
        case external = "external"
    }
    public var accessRequestEnabled: Bool
    public var cameraDefaultOn: Bool
    public var cameraFacing: CameraFacing
    public var enabled: Bool
    public var targetResolution: TargetResolution

    public init(accessRequestEnabled: Bool, cameraDefaultOn: Bool, cameraFacing: CameraFacing, enabled: Bool, targetResolution: TargetResolution) {
        self.accessRequestEnabled = accessRequestEnabled
        self.cameraDefaultOn = cameraDefaultOn
        self.cameraFacing = cameraFacing
        self.enabled = enabled
        self.targetResolution = targetResolution
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case accessRequestEnabled = "access_request_enabled"
        case cameraDefaultOn = "camera_default_on"
        case cameraFacing = "camera_facing"
        case enabled
        case targetResolution = "target_resolution"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(accessRequestEnabled, forKey: .accessRequestEnabled)
        try container.encode(cameraDefaultOn, forKey: .cameraDefaultOn)
        try container.encode(cameraFacing, forKey: .cameraFacing)
        try container.encode(enabled, forKey: .enabled)
        try container.encode(targetResolution, forKey: .targetResolution)
    }
}

