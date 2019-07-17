require "json"

package = JSON.parse(File.read(File.join(__dir__, "./package.json")))
version = package["version"]

Pod::Spec.new do |s|
  s.name         = "react-native-appsee"
  s.version      = version
  s.summary      = "React Native Appsee Bridge"
  s.homepage     = "https://www.appsee.com"
  s.documentation_url = "https://www.appsee.com/docs"
  s.license    = { :type => "Commercial", :text => "Copyright (c) 2013, Shift 6 LTD. Appsee\n" }
  s.author       = { "Appsee" => "contact@appsee.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/eelmoni/appsee.git" }
  s.source_files  = "ios/*.{h,m}"
  s.requires_arc = true
  s.frameworks = [
    "AVFoundation",
    "CoreGraphics",
    "CoreMedia",
    "CoreVideo",
    "QuartzCore",
    "SystemConfiguration",
    "Security"
  ]
  s.libraries = "z"

  s.dependency "React"
  s.dependency "Appsee"
end
