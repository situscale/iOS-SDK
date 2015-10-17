Pod::Spec.new do |s|
  s.name         = "SITUBluetooth-iOS-SDK"
  s.version      = "1.0.2"
  s.summary      = "SITU scale integration for iOS."
  s.homepage     = "https://situscale.com/"

  s.license = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = 'Michael Grothaus Limited'
  s.source       = { :git => "https://github.com/situscale/iOS-SDK.git",
                     :tag => "v1.0.2" }
  s.platform     = :ios
  s.requires_arc = true
  s.source_files = 'SITUBluetooth/inc/SITUBluetoothScaleController.h'
  s.preserve_paths = 'SITUBluetooth/lib/libSITUBluetooth.a'
  s.library = 'SITUBluetooth'
  s.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '$(PODS_ROOT)/SITUBluetooth/lib' }
end
