Pod::Spec.new do |s|
  s.name             = 'ObjcConstants'
  s.version          = '0.2.0'
  s.summary          = 'Demo to show problem of exposing constants to swift'

  s.description      = <<-DESC
In our main projects we stumble upon strange errors with reading a `static const string` defined in a Obj-C header when trying to access it from a swift project with `use_modular_headers!`. This is part of an attempt to create a minimal example.
                       DESC

  s.homepage         = 'https://github.com/cweymann/ObjcConstants'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Claus Weymann' => 'c.weymann@avm.de' }
  s.source           = { :git => 'https://github.com/cweymann/ObjcConstants.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.0'
  s.swift_version = '5.0'
  s.requires_arc = true
  s.static_framework = true
  
  # workaround for some libraries not being shipped with arm64
  # can be removed, when all vendors are prepared for arm64 mac simulator builds
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  
  s.ios.frameworks = 'UIKit', 'LocalAuthentication'
  
  s.pod_target_xcconfig = { 'APPLICATION_EXTENSION_API_ONLY' => 'YES' }
  
  s.default_subspec = 'Core'
  
  s.subspec 'Core' do |co|
	  co.source_files = 'ObjcConstants/Classes/**/*'
  end
end
