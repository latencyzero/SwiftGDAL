// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GDAL",
    products: [
        .library(
            name: "GDAL",
            targets: ["GDAL"]),
		.executable(
			name: "TestGDAL",
			targets: ["TestGDAL"]),
			
    ],
    targets: [
    	.target(
    		name: "TestGDAL",
    		dependencies: ["GDAL"]
		),
        .target(
            name: "GDAL",
            dependencies: ["CGDAL"],
            linkerSettings: [.unsafeFlags(["-L/usr/local/lib"])]
		),
    	.systemLibrary(
			name: "CGDAL",
			providers: [
				.brew(["gdal"]),
				.apt(["libgdal"])
			]),
        .testTarget(
            name: "GDALTests",
            dependencies: ["GDAL"]),
    ]
)
