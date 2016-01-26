Pod::Spec.new do |s|
  s.name         = "SITUBluetooth"
  s.version      = "1.0.4"
  s.summary      = "SITU scale integration for iOS."
  s.homepage     = "https://situscale.com/"

  s.license = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = 'Michael Grothaus Limited'
  s.platform     = :ios, '8.1'
  s.requires_arc = true
  s.source       = { :git => "https://github.com/situscale/iOS-SDK.git",
                     :tag => "v1.0.4" }
  s.vendored_frameworks = 'SITUBluetooth.framework'
end
