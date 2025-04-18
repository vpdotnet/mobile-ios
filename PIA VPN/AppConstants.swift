//
//  AppConstants.swift
//  PIA VPN
//
//  Created by Davide De Rosa on 12/16/17.
//  Copyright © 2020 Private Internet Access, Inc.
//
//  This file is part of the Private Internet Access iOS Client.
//
//  The Private Internet Access iOS Client is free software: you can redistribute it and/or
//  modify it under the terms of the GNU General Public License as published by the Free
//  Software Foundation, either version 3 of the License, or (at your option) any later version.
//
//  The Private Internet Access iOS Client is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
//  or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more
//  details.
//
//  You should have received a copy of the GNU General Public License along with the Private
//  Internet Access iOS Client.  If not, see <https://www.gnu.org/licenses/>.
//

import Foundation
import PIALibrary

struct AppConstants {
    
    static let appId = "6744715152"
    static let teamId = "JY688CS254"

    static let appGroup = "group.net.vp"
    
    struct Reviews {
        static var appReviewUrl = "https://itunes.apple.com/app/id\(appId)?action=write-review"
        static var feedbackUrl = "https://www.privateinternetaccess.com/helpdesk/new-ticket"
    }
    
    struct Flags {
        static var developmentPath = Bundle.main.path(forResource: "Flags-dev", ofType: "plist")
    }

    struct About {
        static var componentsPath = Bundle.main.path(forResource: "Components", ofType: "plist")
    }

    struct RegionsGEN4 {
        static var bundleURL = Bundle.main.url(forResource: "Regions", withExtension: "json")
    }

    struct InApp {
        static let yearlyProductIdentifier = "net.vp.subscription.year.apr.2025"
        static let monthlyProductIdentifier = "net.vp.subscription.month.apr.2025"
    }
    
    struct LegacyInApp {
        static let yearly2020ProductIdentifier = "com.privateinternetaccess.subscription.1year.2020"
        static let monthly2020ProductIdentifier = "com.privateinternetaccess.subscription.1month.2020"
        static let yearlySubscriptionProductIdentifier = "com.privateinternetaccess.subscription.1year"
        static let monthlySubscriptionProductIdentifier = "com.privateinternetaccess.subscription.1month"
        static let yearlyProductIdentifier = "com.privateinternetaccess.ios.iap.2019.1year"
        static let monthlyProductIdentifier = "com.privateinternetaccess.ios.iap.2019.1month"
        static let oldYearlyProductIdentifier = "com.privateinternetaccess.ios.iap.1year"
        static let oldMonthlyProductIdentifier = "com.privateinternetaccess.ios.iap.1month"
    }
    
    struct AppURL {
        static let hostRegion = "region"
    }
    
    struct Extensions {
        static let tunnelBundleIdentifier = "net.vp.vpnapp.Tunnel"
        static let tunnelWireguardBundleIdentifier = "net.vp.vpnapp.WG-Tunnel"

        static let adBlockerBundleIdentifier = "net.vp.vpnapp.AdBlocker"
    }
    
    struct SiriShortcuts {
        static let shortcutConnect = "net.vp.vpnapp.connect"
        static let shortcutDisconnect = "net.vp.vpnapp.disconnect"
    }
    
    struct Web {
        static let homeURL = URL(string: "https://www.vp.net/")!

        static let supportURL = URL(string: "https://www.privateinternetaccess.com/helpdesk")!
        
        static let privacyURL = URL(string: "https://www.privateinternetaccess.com/pages/privacy-policy/")!

        static let csEmail = "support@vp.net"
        
        static let ovpnMigrationURL = URL(string: "https://www.privateinternetaccess.com/helpdesk/kb/articles/removing-openvpn-handshake-and-authentication-settings")!
        
        static let leakProtectionURL = URL(string: "\(Self.supportURL.absoluteString)/kb/articles/what-is-pia-s-leak-protection-feature-on-ios")!

        static var stagingEndpointURL: URL? = {
            guard let path = Bundle.main.path(forResource: "staging", ofType: "endpoint") else {
                return nil
            }
            guard let content = try? String(contentsOfFile: path) else {
                return nil
            }
            return URL(string: content.trimmingCharacters(in: .whitespacesAndNewlines))
        }()
    }
    
    struct Servers {
        static var customServers: [Server]? = {
            guard let path = Bundle.main.path(forResource: "custom", ofType: "servers") else {
                return nil
            }
            guard let content = try? String(contentsOfFile: path) else {
                return nil
            }

            var servers: [Server] = []
            let lines = content.components(separatedBy: "\n")
            for line in lines {
                let tokens = line.components(separatedBy: ":")
                guard tokens.count == 6 else {
                    continue
                }
                
                let name = tokens[0]
                let country = tokens[1]
                let hostname = tokens[2]
                let address = tokens[3]
                
                guard let udpPort = UInt16(tokens[4]) else {
                    continue
                }
                guard let tcpPort = UInt16(tokens[5]) else {
                    continue
                }

                servers.append(Server(
                    serial: "",
                    name: name,
                    country: country,
                    hostname: hostname,
                    pingAddress: nil,
                    regionIdentifier: ""
                ))
            }
            return servers
        }()
    }
#if os(iOS)
    struct Fonts {
        static let typeface: Theme.Typeface = {
            let typeface = Theme.Typeface()
            typeface.regularName = "Roboto-Regular"
            typeface.mediumName = "Roboto-Medium"
            return typeface
        }()
    }
#endif
    
    struct VPNWidget {
        static let vpnStatus = "vpn.status"
        static let vpnButtonDescription = "vpn.button.description"
    }
    
    struct AppleUrls {
        static let subscriptions = "itms-apps://apps.apple.com/account/subscriptions"
    }
    
    struct Browser {
        static let browserAppId = "598907571"
        static let scheme = "inbrowser://?www.privateinternetaccess.com"
        static let appStoreUrl = "itms-apps://itunes.apple.com/app/id598907571"
        static let safariUrl = "https://apps.apple.com/us/app/inbrowser-private-browsing/id598907571?ls=1"
    }
    
    struct OpenVPNPacketSize {
        static let defaultPacketSize = 1400
        static let smallPacketSize = 1350
    }
    
    struct IKEv2PacketSize {
        static let defaultPacketSize = 0
        static let highPacketSize = 1420
    }

    struct WireGuardPacketSize {
        static let defaultPacketSize = 1280
        static let highPacketSize = 1420
    }
    
    struct MagicLink {
        static let url = "vpnetvpn:login?token="
    }
    
    struct Widget {
        static let connect = "vpnetvpn:connect"
        static let view = "vpnetvpn:view"
    }
    
    struct QRSignin {
        static let url = "vpnetvpn:loginqr?token="
    }
    
    struct Survey {
        static let numberOfConnectionsUntilPrompt = 15
        static let formURL = URL(string: "https://privateinternetaccess.typeform.com/to/WTFcN77r")!
    }
}
