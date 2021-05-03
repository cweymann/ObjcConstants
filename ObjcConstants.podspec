Pod::Spec.new do |s|
  s.name             = 'ObjcConstants'
  s.version          = '0.1.0'
  s.summary          = 'Demo to show problem of exposing constants to swift'

  s.description      = <<-DESC
In our main projects we stumble upon strange errors with reading a `static const string` defined in a Obj-C header when trying to access it from a swift project with `use_modular_headers!`. This is part of an attempt to create a minimal example.
                       DESC

  s.homepage         = 'https://github.com/cweymann/ObjcConstants'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Claus Weymann' => 'c.weymann@avm.de' }
  s.source           = { :git => 'https://github.com/cweymann/ObjcConstants.git', :tag => s.version.to_s }

  s.ios.deployment_target = '12.3'

  s.source_files = 'ObjcConstants/Classes/**/*'
end
