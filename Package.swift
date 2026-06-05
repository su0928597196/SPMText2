// swift-tools-version: 5.6
import PackageDescription

let package = Package(
    name: "SPMText",       // ← 改這裡
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "SPMText",   // ← 改這裡
            targets: ["ECPayPaymentGatewayKit"]   // ← 這個不能改，要跟 XCFramework 檔名一致
        )
    ],
    targets: [
        .binaryTarget(
            name: "ECPayPaymentGatewayKit",       // ← 這個也不能改
            url: "https://github.com/ECPay/ECPayPaymentGatewayKit_iOS/releases/download/1.10.0/ECPayPaymentGatewayKit.zip",
            checksum: "bf11309b69c5d6b16d8baaf2c7f27c2f0041f89c85aa1432210683bb80080609"
        )
    ]
)