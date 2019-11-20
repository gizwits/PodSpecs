Pod::Spec.new do |s| 
	s.name         = "GizWifiSDK"
	s.version      = "2.15.15.01017"
	s.summary      = "GizWifiSDK static library for iOS"
	s.description  = "GizWifiSDK is a Wi-Fi hardware communication toolkit. Support architechures: armv7, arm64, x86_64, i386"
	s.homepage     = "http://dev.gizwits.com/"
	s.source       = { :git => "https://github.com/gizwits/GizWifiSDK_library.git", :tag => "#{s.version}" }

	s.ios.deployment_target = '6.0'
	s.ios.source_files        = 'Headers/GizWifiSDK/*.h'
	s.ios.public_header_files = 'Headers/GizWifiSDK/*.h'
	s.ios.header_dir          = 'GizWifiSDK'
	s.ios.preserve_paths      = 'Library/libGizWifiSDK.a', 'Library/libcrypto.a', 'Library/libssl.a', 'Library/libEasyLink.a', 'Library/libEsptouch_v0.3.5.3.a', 'Library/libWMOneShotConfig.a', 'Library/libLTLink.a'
	s.ios.vendored_libraries  = 'Library/libGizWifiSDK.a', 'Library/libcrypto.a', 'Library/libssl.a', 'Library/libEasyLink.a', 'Library/libEsptouch_v0.3.5.3.a', 'Library/libWMOneShotConfig.a', 'Library/libLTLink.a'
	
	s.libraries = 'GizWifiSDK', 'crypto', 'ssl', 'EasyLink', 'Esptouch_v0.3.5.3', 'WMOneShotConfig', 'LTLink', 'z'
	s.requires_arc = true
end

