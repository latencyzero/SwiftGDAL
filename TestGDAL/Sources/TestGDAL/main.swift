import CGDAL
import Foundation

print("TestCGDAL")
let gdalVersion = String(cString: GDALVersionInfo("RELEASE_NAME"))
print("GDAL version \(gdalVersion)")
