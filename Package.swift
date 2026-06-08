// swift-tools-version: 5.6
import PackageDescription

let package = Package(
    name: "SPMText",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "SPMText",
            targets: ["ECPayPaymentGatewayKitWrapper"]  // 改指向 wrapper
        )
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire", exact: "5.10.1"),
        .package(url: "https://github.com/krzyzanowskim/CryptoSwift", exact: "1.8.0"),
        .package(url: "https://github.com/hackiftekhar/IQKeyboardManager", exact: "7.0.0"),
        .package(url: "https://github.com/evgenyneu/keychain-swift", exact: "20.0.0"),
        .package(url: "https://github.com/mxcl/PromiseKit", exact: "6.13.0"),
        .package(url: "https://github.com/yahoojapan/SwiftyXMLParser", branch: "master"),
    ],
    targets: [
        .binaryTarget(
            name: "ECPayPaymentGatewayKit",
            url: "https://github.com/ECPay/ECPayPaymentGatewayKit_iOS/releases/download/1.10.0/ECPayPaymentGatewayKit.zip",
            checksum: "bf11309b69c5d6b16d8baaf2c7f27c2f0041f89c85aa1432210683bb80080609"
        ),
        .target(
            name: "ECPayPaymentGatewayKitWrapper",
            dependencies: [
                "ECPayPaymentGatewayKit",
                .product(name: "Alamofire", package: "Alamofire"),
                .product(name: "CryptoSwift", package: "CryptoSwift"),
                .product(name: "IQKeyboardManagerSwift", package: "IQKeyboardManager"),
                .product(name: "KeychainSwift", package: "keychain-swift"),
                .product(name: "PromiseKit", package: "PromiseKit"),
                .product(name: "SwiftyXMLParser", package: "SwiftyXMLParser"),
            ]
        )
    ]
)
