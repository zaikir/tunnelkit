//
//  Configuration.swift
//  Demo
//
//  Created by Davide De Rosa on 6/13/20.
//  Copyright (c) 2022 Davide De Rosa. All rights reserved.
//
//  https://github.com/keeshux
//
//  This file is part of TunnelKit.
//
//  TunnelKit is free software: you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation, either version 3 of the License, or
//  (at your option) any later version.
//
//  TunnelKit is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.
//
//  You should have received a copy of the GNU General Public License
//  along with TunnelKit.  If not, see <http://www.gnu.org/licenses/>.
//

import Foundation
import TunnelKitCore
import TunnelKitOpenVPN
import TunnelKitWireGuard

extension OpenVPN {
    struct DemoConfiguration {
        static let ca = OpenVPN.CryptoContainer(pem: """
-----BEGIN CERTIFICATE-----
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
-----END CERTIFICATE-----
""")

        static let clientCertificate = OpenVPN.CryptoContainer(pem: """
-----BEGIN CERTIFICATE-----
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
-----END CERTIFICATE-----
""")

        static let clientKey = OpenVPN.CryptoContainer(pem: """
-----BEGIN PRIVATE KEY-----
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
1LXZrtjAB4U+/F7um6YyAavpHYq9hg==
-----END PRIVATE KEY-----
""")

        static func make(_ title: String, appGroup: String, hostname: String, port: UInt16, socketType: SocketType) -> OpenVPN.ProviderConfiguration {
            var builder = OpenVPN.ConfigurationBuilder()
            builder.ca = ca
            builder.cipher = .aes128cbc
            builder.digest = .sha1
            builder.compressionFraming = .compLZO
            builder.renegotiatesAfter = nil
            builder.remotes = [Endpoint(hostname, EndpointProtocol(socketType, port))]
            builder.clientCertificate = clientCertificate
            builder.clientKey = clientKey
            builder.mtu = 1350
            let cfg = builder.build()

            var providerConfiguration = OpenVPN.ProviderConfiguration(title, appGroup: appGroup, configuration: cfg)
            providerConfiguration.shouldDebug = true
            providerConfiguration.masksPrivateData = false
            return providerConfiguration
        }
    }
}

extension WireGuard {
    struct DemoConfiguration {
        static func make(
            _ title: String,
            appGroup: String,
            clientPrivateKey: String,
            clientAddress: String,
            serverPublicKey: String,
            serverAddress: String,
            serverPort: String
        ) -> WireGuard.ProviderConfiguration? {
            var builder = try! WireGuard.ConfigurationBuilder(clientPrivateKey)
            builder.addresses = [clientAddress]
            builder.dnsServers = ["1.1.1.1", "1.0.0.1"]
            try! builder.addPeer(serverPublicKey, endpoint: "\(serverAddress):\(serverPort)")
            builder.addDefaultGatewayIPv4(toPeer: 0)
            let cfg = builder.build()

            return WireGuard.ProviderConfiguration(title, appGroup: appGroup, configuration: cfg)
        }
    }
}
