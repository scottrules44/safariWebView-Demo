local webview = require("plugin.safariWebview")
local json = require("json")
if system.getInfo( "environment" ) == "device" and system.getInfo( "platform" ) == "ios" then
  local view = webview.newView( display.contentCenterX, display.contentCenterY-150, 200,200, function(e)
      print( json.prettify( e ))
  end)
  view:request("https://www.coronalabs.com")
end

local nativeView = native.newWebView( display.contentCenterX, display.contentCenterY+150, 200, 200 )
nativeView:request("https://www.coronalabs.com")
