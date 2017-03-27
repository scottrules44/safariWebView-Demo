local webview = require("plugin.safariWebview")
local json = require("json")
if system.getInfo( "environment" ) == "device" and system.getInfo( "platform" ) == "ios" then
  local view = webview.newView( display.contentCenterX, display.contentCenterY-100, 300,300, function(e)
      print( json.prettify( e ))
  end)
  view:request("https://www.coronalabs.com")
end

local nativeView = native.newMapView( display.contentCenterX, display.contentCenterY+200, 200, 200 )
nativeView:request("https://www.coronalabs.com")
