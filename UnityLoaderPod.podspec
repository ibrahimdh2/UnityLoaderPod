Pod::Spec.new do |s|
  s.name             = 'UnityLoaderPod'
  s.version          = '0.1.0'
  s.summary          = 'A pod for loading Unity framework.'
  s.description      = <<-DESC
                       UnityLoaderPod is a CocoaPod that helps in loading Unity framework efficiently.
                       DESC

  s.homepage         = 'https://github.com/ibrahimdh2/UnityLoaderPod'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Ibrahim Nasir' => 'ibrahimdh2@github.com' }
  s.source           = { :git => 'https://github.com/ibrahimdh2/UnityLoaderPod.git', :tag => s.version.to_s }

  s.swift_versions   = '5.0'
  s.ios.deployment_target = '13.0'

  s.source_files     = 'Classes/**/*'
  s.vendored_frameworks = 'Frameworks/UnityLoader.framework'

  s.pod_target_xcconfig = {
    'VALID_ARCHS' => 'arm64 x86_64'
  }
end
