Pod::Spec.new do |s|
  s.name             = 'UnityLoaderPod'
  s.version          = '0.1.0'
  s.summary          = 'A pod for loading Unity framework.'
  s.description      = <<-DESC
                       UnityLoaderPod is a CocoaPod that helps in loading Unity framework efficiently.
                       It simplifies the integration process of UnityLoader and UnityFramework.
                       DESC

  s.homepage         = '...'

  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'No one' => '...github.com' }
  s.source           = { :git => '....', :tag => s.version.to_s }

  s.swift_versions   = '5.0'
  s.ios.deployment_target = '13.0'

  s.source_files = 'Classes/**/*'
  s.vendored_frameworks = 'Frameworks/UnityLoader.framework'

    # Exclude all architectures except arm64
  # Exclude all architectures except arm64
  s.pod_target_xcconfig = {
    'VALID_ARCHS' => 'arm64',
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386 x86_64'
  }
end
