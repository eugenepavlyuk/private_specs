Pod::Spec.new do |s|
  s.name             = 'FirebaseCoreDiagnosticsInterop'
  s.version          = '1.1.0'
  s.summary          = 'Interfaces that allow other Firebase SDKs to use CoreDiagnostics functionality.'

  s.description      = <<-DESC
  Not for public use.

  A set of protocols that other Firebase SDKs can use to interoperate with FirebaseCoreDiagnostics
  in a safe manner.
                       DESC

  s.homepage         = 'https://firebase.google.com'
  s.license          = { :type => 'Apache', :file => 'LICENSE' }
  s.authors          = 'Google, Inc.'
  s.platform = :ios, '11.0'

  # NOTE that these should not be used externally, this is for Firebase pods to depend on each
  # other.
  s.source           = {
    :git => 'https://github.com/firebase/firebase-ios-sdk.git',
    :tag => 'CoreDiagnosticsInterop-' + s.version.to_s
  }

  s.pod_target_xcconfig = {
      'VALID_ARCHS' => 'arm64 x86_64',
      'ARCHS' => 'arm64 x86_64'
  }

  s.social_media_url = 'https://twitter.com/Firebase'
  s.ios.deployment_target = '11.0'
  s.source_files = 'Interop/CoreDiagnostics/**/*.h'
  s.public_header_files = 'Interop/CoreDiagnostics/Public/*.h'
end
