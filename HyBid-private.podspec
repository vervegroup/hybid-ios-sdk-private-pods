Pod::Spec.new do |s|
  s.name             = 'HyBid-private'
  s.version          = '3.7.0-beta4-local.build.8'
  s.summary          = 'Private HyBid SDK with binary framework'
  s.homepage         = 'https://github.com/vervegroup/hybid-ios-sdk-private-pods'
  s.license          = { :type => 'Commercial', :file => 'LICENSE' }
  s.author           = { 'Verve Group' => 'support@verve.com' }
  s.platform         = :ios, '12.0'

  s.source = {
    :http => "https://github.com/vervegroup/hybid-ios-sdk-private-pods/releases/download/\#{s.version}/HyBid.xcframework.zip"
  }

  s.vendored_frameworks = [
    'HyBid.xcframework',
    'OMSDK_Pubnativenet/OMSDK_Pubnativenet.xcframework'
  ]

  s.dependency 'ATOM-Standalone', '1.2 Exclusions. These License Terms do not apply to the ATOM software (current version'
end
