//
// CallSettingsRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct CallSettingsRequest: Codable, JSONEncodable, Hashable {
    public var audio: AudioSettingsRequest?
    public var backstage: BackstageSettingsRequest?
    public var geofencing: GeofenceSettingsRequest?
    public var recording: RecordSettingsRequest?
    public var ring: RingSettingsRequest?
    public var screensharing: ScreensharingSettingsRequest?
    public var transcription: TranscriptionSettingsRequest?
    public var video: VideoSettingsRequest?

    public init(audio: AudioSettingsRequest? = nil, backstage: BackstageSettingsRequest? = nil, geofencing: GeofenceSettingsRequest? = nil, recording: RecordSettingsRequest? = nil, ring: RingSettingsRequest? = nil, screensharing: ScreensharingSettingsRequest? = nil, transcription: TranscriptionSettingsRequest? = nil, video: VideoSettingsRequest? = nil) {
        self.audio = audio
        self.backstage = backstage
        self.geofencing = geofencing
        self.recording = recording
        self.ring = ring
        self.screensharing = screensharing
        self.transcription = transcription
        self.video = video
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case audio
        case backstage
        case geofencing
        case recording
        case ring
        case screensharing
        case transcription
        case video
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(audio, forKey: .audio)
        try container.encodeIfPresent(backstage, forKey: .backstage)
        try container.encodeIfPresent(geofencing, forKey: .geofencing)
        try container.encodeIfPresent(recording, forKey: .recording)
        try container.encodeIfPresent(ring, forKey: .ring)
        try container.encodeIfPresent(screensharing, forKey: .screensharing)
        try container.encodeIfPresent(transcription, forKey: .transcription)
        try container.encodeIfPresent(video, forKey: .video)
    }
}

