Pod::Spec.new do |s|

  s.name = "GreedTencentOpenAPI"
  s.version = ""2.9.5""
  s.license = "MIT"
  s.summary = “iOS TencentOpenAPI for Cocoapods"
  s.homepage = "https://github.com/greedlab/GreedTencentOpenAPI"
  s.author       = { "Bell" => "bell@greedlab.com" }
  s.source       = { :git => "https://github.com/greedlab/GreedTencentOpenAPI.git", :tag => s.version }
  s.platform = :ios
  s.requires_arc = true
  s.frameworks       = 'Security', 'SystemConfiguration', 'CoreTelephony', 'CoreGraphics'
  s.libraries        = 'iconv', 'z', 'c++', 'sqlite3'
  s.subspec ‘Lite’ do |ss|
    ss.vendored_frameworks = 'TencentOpenAPI/Lite/TencentOpenAPI.framework'
  end

  s.subspec ‘All’ do |ss|
    ss.vendored_frameworks = 'TencentOpenAPI/All/TencentOpenAPI.framework'
    ss.resource     = 'TencentOpenAPI/Advanced/TencentOpenApi_IOS_Bundle.bundle'
  end

  s.default_subspec = 'All'
end
