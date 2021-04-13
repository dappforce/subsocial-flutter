#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint subsocial_sdk.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'subsocial_sdk'
  s.version          = '0.0.1'
  s.summary          = 'Subsocial Flutter SDK'
  s.description      = <<-DESC
Subsocial Flutter SDK.
                       DESC
  s.homepage         = 'http://subsocial.network'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Subsocial Network' => 'hello@subsocial.network' }
  s.source           = { :path => '.' }
  s.public_header_files = 'Classes**/*.h'
  s.source_files = 'Classes/**/*'
  s.static_framework = true
  s.vendored_libraries = "libsubsocial.a"
  s.dependency 'Flutter'
  s.platform = :ios, '8.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
