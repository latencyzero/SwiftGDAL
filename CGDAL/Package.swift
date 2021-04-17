// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CGDAL",
    products: [
        .library(name: "CGDAL",  targets: ["CGDAL"]),
    ],
    targets: [
    	.systemLibrary(
			name: "CGDAL",
//        .testTarget(name: "CGDALTests", dependencies: ["CGDAL"]),
			providers: [
				.brew(["gdal"]),
				.apt(["libgdal"])
			])
	]
)
