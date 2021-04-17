import CGDAL
import Foundation

public
func
GDALVersion(_ inReq: String)
	-> String
{
	let gdalVersion = String(cString: GDALVersionInfo(inReq))
	return gdalVersion
}
