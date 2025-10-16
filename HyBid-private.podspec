Pod::Spec.new do |s|
  s.name             = 'HyBid-private'
  s.version          = '3.7.0-beta4-build.103'
  s.summary          = 'Private HyBid SDK release.'
  s.description      = 'Private binary distribution of the HyBid SDK with OMSDK support.'
  s.homepage         = 'https://github.com/vervegroup/hybid-ios-sdk-private-pods'
  s.license          = { :type => 'Commercial', :file => 'LICENSE' }
  s.author           = { 'Verve Group' => 'support@verve.com' }
  s.platform         = :ios, '12.0'

  s.source = {
    :http => "https://github.com/vervegroup/hybid-ios-sdk-private-pods/releases/download/#{s.version}/HyBid.xcframework.zip"
  }

  s.vendored_frameworks = [
    'HyBid.xcframework/HyBid.xcframework',
    'HyBid.xcframework/OMSDK_Pubnativenet/OMSDK_Pubnativenet.xcframework'
  ]

  s.requires_arc = true
end
