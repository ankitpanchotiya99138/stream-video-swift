//
// Copyright © 2022 Stream.io Inc. All rights reserved.
//

@testable import StreamVideo
@testable import StreamVideoSwiftUI
import SnapshotTesting
import XCTest

@MainActor
final class OutgoingCallView_Tests: StreamVideoUITestCase {

    func test_outgoingCallView_snapshot() {
        // Given
        let callViewModel = CallViewModel()
        let participants = [UserInfo(id: "Test1"), UserInfo(id: "Test2")]
        
        // When
        callViewModel.startCall(callId: "123", participants: participants)
        let outgoingCallView = OutgoingCallView(viewModel: callViewModel)
            .applyDefaultSize()
                
        // Then
        assertSnapshot(matching: outgoingCallView, as: .image)
    }

}
