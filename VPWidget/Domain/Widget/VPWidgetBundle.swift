import WidgetKit
import SwiftUI

@main
struct VPWidgetBundle: WidgetBundle {
    var body: some Widget {
        VPWidget()

        if #available(iOS 16.1, *) {
          VPConnectionActivityWidget()
        }
    }
}

