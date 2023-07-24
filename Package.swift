// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Refreshable",
	platforms: [
		.iOS(.v13)
	],
    products: [
        .library(
            name: "Refreshable",
            targets: ["Refreshable"]
		)
    ],
    dependencies: [
		   .package(
			    url: "https://github.com/onevcat/Kingfisher.git",
			   exact: .init(0, 10, 0)
		   )
    ],
    targets: [
        .target(
            name: "Refreshable",
            dependencies: ["Introspect"],
			path: "Refreshable"
		)
    ]
)
