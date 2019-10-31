Pod::Spec.new do |s|
  s.name             = 'nanopb'
  s.version          = '0.3.901'
  s.summary          = 'Protocol buffers with small code size.'

  s.description      = <<-DESC
Nanopb is a small code-size Protocol Buffers implementation\nin ansi C. 
It is especially suitable for use in\nmicrocontrollers, but fits any memory restricted system.
                       DESC

  s.homepage         = 'https://github.com/nanopb/nanopb'
  s.license          = { :type => 'zlib', :file => 'LICENSE' }
  s.authors          = 'Petteri Aimonen'

  s.source           = {
    :git => 'https://github.com/nanopb/nanopb.git',
    :tag => '0.3.9.1'
  }
  s.requires_arc      = false
  s.social_media_url = 'https://twitter.com/Firebase'
  s.ios.deployment_target = '11.0'

  s.cocoapods_version = '>= 1.4.0'

  s.pod_target_xcconfig = {
    'GCC_PREPROCESSOR_DEFINITIONS' =>
      '$(inherited) PB_FIELD_32BIT=1 PB_NO_PACKED_STRUCTS=1 PB_ENABLE_MALLOC=1',
      'VALID_ARCHS' => 'arm64'
  }

  s.source_files = '*.{h,c}'
  s.platform = :ios, '11.0'
  s.public_header_files = '*.h'

  s.subspec 'encode' do |sp|
    sp.name = 'encode'
    sp.source_files = "pb.h", "pb_common.h", "pb_common.c", "pb_encode.h", "pb_encode.c"
    sp.public_header_files = 'pb.h', 'pb_encode.h', 'pb_common.h'
  end

  s.subspec 'decode' do |sp|
    sp.name = 'decode'
    sp.source_files = "pb.h", "pb_common.h", "pb_common.c", "pb_decode.h", "pb_decode.c"
    sp.public_header_files = 'pb.h', 'pb_decode.h', 'pb_common.h'
  end
end
