//
//  VPWidgetPreview.swift
//  VPWidgetExtension
//
//  Created by Juan Docal on 2022-09-28.
//  Copyright © 2022 Private Internet Access Inc. All rights reserved.
// Copyright (c) 2025 VP.NET LLC. All rights reserved.
//

import Foundation
import SwiftUI
import WidgetKit

struct VPWidgetPreview: PreviewProvider {

    static var previews: some View {
        let widgetPersistenceDatasource = WidgetUserDefaultsDatasource()
        VPWidgetView(
            entry: WidgetInformation(
                date: Date(),
                connected: true,
                vpnProtocol: "IKEv2",
                vpnPort: "500",
                vpnSocket: "UDP"
            ),
            widgetPersistenceDatasource: widgetPersistenceDatasource
        ).previewContext(WidgetPreviewContext(family: .systemSmall))
        VPWidgetView(
            entry: WidgetInformation(
                date: Date(),
                connected: false,
                vpnProtocol: "WireGuard",
                vpnPort: "1443",
                vpnSocket: "UDP"
            ),
            widgetPersistenceDatasource: widgetPersistenceDatasource
        ).previewContext(WidgetPreviewContext(family: .systemMedium))
    }
}
